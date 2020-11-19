package com.blogs.util;

import lombok.extern.slf4j.Slf4j;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.StringReader;
import java.io.UnsupportedEncodingException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Slf4j
public class AuditLog {

    public static Map<String, List<String>> templateFileParse() {
        String xmlpath = "/Users/zhangchuanlei/ideaProject/blogs/blogs-impl/src/main/resources/AuditTemplates.xml";
        HashMap map = new HashMap();

        try {
            List<String> sqlList = new ArrayList();
            List<String> auditColumnList = new ArrayList();
            List<String> typeList = new ArrayList();
            List<String> defaultValueList = new ArrayList();
            List<String> dbNameList = new ArrayList();
            File file = new File(xmlpath);
            SAXReader reader = new SAXReader();
            Document document = null;
            document = reader.read(file);
            Element root = document.getRootElement();
            Element auditTemplate = (Element) root.selectSingleNode("AuditTemplate");
            List<Element> sqlElementList = auditTemplate.selectNodes("Sql");
            List<Element> columnElementList = auditTemplate.selectNodes("AuditColumn");
            int i;
            Element element;
            String auditColumn;
            if (sqlList != null && sqlElementList.size() > 0) {
                for (i = 0; i < sqlElementList.size(); ++i) {
                    element = (Element) sqlElementList.get(i);
                    auditColumn = element.getText();
                    sqlList.add(auditColumn);
                }
            }

            if (columnElementList != null && columnElementList.size() > 0) {
                for (i = 0; i < columnElementList.size(); ++i) {
                    element = (Element) columnElementList.get(i);
                    auditColumn = element.getText();
                    String type = element.attribute("type").getText();
                    String defaultValue = element.attribute("defaultValue").getText();
                    String dbName = element.attribute("dbName").getText();
                    auditColumnList.add(auditColumn);
                    typeList.add(type);
                    defaultValueList.add(defaultValue);
                    dbNameList.add(dbName);
                }
            }

            map.put("sql", sqlList);
            map.put("column", auditColumnList);
            map.put("type", typeList);
            map.put("defaultValue", defaultValueList);
            map.put("dbName", dbNameList);
        } catch (Exception var21) {
            log.error("解析模板文件出错  ", var21);
        }

        return map;
    }

    public static void main(String[] args) {
        createXMLFileByDB();
    }

    public static String createXMLFileByDB() {
        String fileName = null;
        Map<String, List<String>> map = templateFileParse();
        Connection con = null;
        PreparedStatement ps = null;
//        ApplicationContext context = A4.getContext();
//        DBConfig db = (DBConfig)context.getBean("DBconfig");
        List<String> sqlList = (List)map.get("sql");
        List<String> auditColumnList = (List)map.get("column");
        List<String> typeList = (List)map.get("type");
        List<String> defaultValueList = (List)map.get("defaultValue");
        List<String> dbNameList = (List)map.get("dbName");
        ArrayList recordList = new ArrayList();

        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection("jdbc:oracle:thin:@10.1.192.213:1521:orcl", "utoptea", "utoptea");

            for(int i = 0; i < sqlList.size(); ++i) {
                String sql = (String)sqlList.get(i);
                log.info("sql=" + sql);
                ps = con.prepareStatement(sql);
                ResultSet rs = ps.executeQuery();

                while(rs.next()) {

                    List<String> record = new ArrayList();

                    for(int j = 0; j < dbNameList.size(); ++j) {
                        String type = (String)typeList.get(j);
                        String colName = (String)dbNameList.get(j);

                        try {
                            if ("".equals(colName)) {
                                record.add((String)defaultValueList.get(j));
                                log.info("第" + j + "条记录===" + (String)auditColumnList.get(j) + "          默认值" + (String)defaultValueList.get(j));
                            } else if ("VARCHAR".equals(type)) {
                                record.add(rs.getString(colName));
                                log.info("第" + j + "条记录===" + (String)auditColumnList.get(j) + "          " + rs.getString(colName) + "   colName==" + colName);
                            } else if ("DATE".equals(type)) {
                                Timestamp ts = rs.getTimestamp(colName);
                                Date date = new Date(ts.getTime());
                                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                                record.add(sdf.format(date));
                                log.info("第" + j + "条记录===" + (String)auditColumnList.get(j) + "          " + sdf.format(date));
                            } else if ("IDR_CREATION_TIME".equals(type)) {
                                Date date = new Date();
                                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                                record.add(sdf.format(date));
                                log.info("第" + j + "条记录===" + (String)auditColumnList.get(j) + "          " + sdf.format(date));
                            } else if ("NUMBER".equals(type)) {
                                record.add(String.valueOf(rs.getInt(colName)));
                                log.info("第" + j + "条记录===" + (String)auditColumnList.get(j) + "          " + rs.getInt(colName) + "   colName==" + colName);
                            } else if ("OP_TYPE_NAME".equals(type)) {
                                PreparedStatement tempPs = null;

                                try {
                                    String result = rs.getString(colName);
                                    log.info("mach success,colName is:"+colName);
                                    String prop_sql = "select t.* from tl_tt_log_prop t where t.id = ? order by t.id asc";
                                    tempPs = con.prepareStatement(prop_sql);
                                    String log_type = rs.getString("LOG_TYPE");
                                    tempPs.setString(1, log_type);
                                    log.info("mach success,log_type is:"+log_type);
                                    ResultSet temp = tempPs.executeQuery();

//                                    record.add("xx");
//                                    record.add("xxx");
//                                    record.add("xxxx");
//                                    record.add("xxxxx");

                                    while(temp.next()) {
                                        String expression = temp.getString("EXPRESSION");
                                        Pattern p = Pattern.compile(expression);
                                        Matcher m = p.matcher(result);
                                        if (m.find()) {
                                            log.info("mach success,expression is:"+expression);
                                            log.info("mach success,result is:"+result);
                                            record.add(temp.getString("OP_TYPE_NAME"));
                                            record.add(temp.getString("OP_LEVEL_ID"));
                                            record.add(temp.getString("OP_TYPE_ID"));
                                            record.add(temp.getString("name"));
                                            break;
                                        }
                                    }
                                } catch (Exception var52) {
                                    log.error(String.valueOf(var52));
                                } finally {
                                    try {
                                        if (tempPs != null) {
                                            tempPs.close();
                                        }
                                    } catch (Exception var51) {
                                        var51.getStackTrace();
                                    }

                                }
                            } else {
                                String cpu_serial;
                                if ("CLIENT_MAC".equals(type)) {
                                    cpu_serial = "mac";
                                    record.add(cpu_serial);
                                } else if ("CLIENT_CPU_SERIAL".equals(type)) {
                                    cpu_serial = "CPU_SERIAL";
                                    record.add(cpu_serial);
                                }
                                log.info("hahahhahahahhah");
                            }
                        } catch (Exception var54) {
                            record.add((String)defaultValueList.get(j));
                        }
                    }
                    if (record.size() < auditColumnList.size()){
                        record.add(12,"");
                        record.add(13,"其他");
                        record.add(14,"8");
                        record.add(15,"");
                        /**
                         * record.add(temp.getString("OP_TYPE_NAME"));
                         *record.add(temp.getString("OP_LEVEL_ID"));
                         *record.add(temp.getString("OP_TYPE_ID"));
                         *record.add(temp.getString("name"));
                         */

                    }
                    recordList.add(record);
                    log.info("now record size is:"+record.size());
                    log.info("nw record ocontent is:"+record.toString());
                }
            }
            log.info("now recordList size is:"+recordList.size());
            log.info("now auditColumnList size is:"+auditColumnList.size());
            log.info("now auditColumnList content is:"+auditColumnList.toString());
            fileName = createXMLDoc(recordList, auditColumnList);
            log.info("current fileName is:{}",fileName);
//            fileName = this.createXMLDoc(recordList, auditColumnList);
        } catch (Exception var55) {
            log.error("生成XML文件失败  ", var55);
        } finally {
            try {
                if (con != null) {
                    con.close();
                }

                if (ps != null) {
                    ps.close();
                }
            } catch (Exception var50) {
                var50.getStackTrace();
            }

        }

        return fileName;
    }

    public static String createXMLDoc(List<List<String>> recordList, List<String> columnlist) {
//        ApplicationContext context = A4.getContext();
//        FtpConfig fc = (FtpConfig)context.getBean("FtpConfig");
//        String fileName_format = fc.getFileName();
//        int index = fileName_format.lastIndexOf("_");
//        String firstFileName = fileName_format.substring(0, index + 1);
//        String lastFileName = fileName_format.substring(index + 1, fileName_format.length());
//        SimpleDateFormat sdf = new SimpleDateFormat(lastFileName);
//        Date date = new Date(System.currentTimeMillis());
//        String fileName = firstFileName + sdf.format(date);
//        String path = fc.getLocalFileSavePath();
        String fileName = System.currentTimeMillis() + ".xml";

        try {
            SAXReader reader = new SAXReader();
            Document doc = null;
            doc = reader.read(new StringReader("<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ROOT/>"));
            Element root = doc.getRootElement();

            for (int i = 0; i < recordList.size(); ++i) {
                List<String> temp = (List) recordList.get(i);
                Element log4a = root.addElement("LOG4A");

                for (int j = 0; j < columnlist.size(); ++j) {
                    String tempString = (String) temp.get(j);
                    if (tempString == null || "null".equals(tempString)) {
                        tempString = "";
                    }

                    Element child = log4a.addElement((String) columnlist.get(j));
                    if ("OPERATE_CONTENT".equals((String) columnlist.get(j))) {
                        child.addCDATA(tempString);
                    } else {
                        child.addText(tempString);
                    }
                }
            }

            BufferedWriter bw = null;

            try {
                FileOutputStream fos = new FileOutputStream("./" + fileName);
                OutputStreamWriter bos = new OutputStreamWriter(fos, "UTF-8");
                bw = new BufferedWriter(bos);
                bw.write(doc.asXML());
            } catch (FileNotFoundException var33) {
                var33.printStackTrace();
            } catch (UnsupportedEncodingException var34) {
                var34.printStackTrace();
            } catch (IOException var35) {
                var35.printStackTrace();
            } finally {
                if (bw != null) {
                    try {
                        bw.close();
                    } catch (IOException var32) {
                        var32.printStackTrace();
                    }
                }

            }
        } catch (DocumentException var37) {
            var37.printStackTrace();
        }

        log.info("fileName==" + fileName);
        return fileName;
    }
}