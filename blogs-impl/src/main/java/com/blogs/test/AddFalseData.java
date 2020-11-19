package com.blogs.test;

import com.opencsv.CSVReader;
import com.opencsv.CSVReaderBuilder;
import org.springframework.util.ResourceUtils;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStreamReader;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

/**
 * @author zhangchuanlei
 */
public class AddFalseData {

    private static final String FILE_PATH_JINKU = "classpath:csv/d_esl_i_op_log_jinku.csv";

//    private static final String FILE_PATH_NON_JINKU = "classpath:csv/d_esl_i_op_log_non_jinku.csv";
//    private static final String FILE_TABLE_NAME_NOE_JINKU = "d_esl_i_op_log_non_jinku";

    //d_esl_i_app_login_log.csv
    private static final String FILE_PATH_LOGIN = "classpath:csv/d_esl_i_app_login_log.csv";
    private static final String FILE_TABLE_NAME_LOGIN = "d_esl_i_app_login_log";

    public static void main(String[] args) {

//        queryData();
//        setData();
//        getFieldFype(FILE_PATH_JINKU);
//        genSql();
//        System.out.println("current is :"+genSql());
        setData();
    }

    private static void setData() {
        System.out.println("begin insert false data...");
        Connection conn = getConn();
        String sql = genSql();
        try {
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    /**
     *
     * @return
     *

    insert into D_ESL_I_OP_LOG_JINKU (
    ID,PARTITION_MON,FILE_NAME,CREATE_TIME,UPDATE_TIME,SN
    ,OP_ID,OPER_ORG_CODE,`4A_ACCT_NAME`,APP_ACCT_NAME,APP_ACCT_TYPE
    ,SYS_CODE,ACCS_TYPE,SERVER_IP,CLIENT_IP,OP_BUSI_NAME,OP_OBJ_SSTV
    ,IS_BLUR,IS_BATCH_OP,SSTV_DATA_ENCODE,SSTV_PHONE_NUM,OP_TYPE_CODE
    ,OP_TIME,OP_DESC,BUSI_TYPE_CODE,JINKU_AUTH_ID,IS_USER_AHTHORIZED
    ,USER_AUTH_CERT_TYPE,USER_AUTH_CERT_ID
    ) values(
    4,'11','测试文件','2020-11-1','2020-11-11','ababcedfff','操作ID','1','4a_acct','app_acct'
    ,'2',2,2,'10.128.1.1','10.128.1.2','OP业务名称','obj业务名称','是的，蓝色',2,'敏感日志','铭感日志数量',8
    ,'2020-11-2','操作描述',2,'金库授权ID',5,'用户创建类型','用户创建ID'
    );

     */
    private static String genSql() {
//        File file = new File("/Users/zhangchuanlei/ideaProject/blogs/blogs-impl/src/main/resources/csv/d_esl_i_op_log_jinku.csv");

        String fieldList = getField(FILE_PATH_LOGIN);
        String sqlPrefix = "insert into "+FILE_TABLE_NAME_LOGIN+" (";
        String sqlSuffix = ") values";
        String sqlSuffixAfter = getValues(fieldList);
        String finalSql = sqlPrefix + fieldList + sqlSuffix + sqlSuffixAfter;
        System.out.println("finallSql is:"+finalSql);
        return finalSql;
    }
    private final static SimpleDateFormat S_D_F = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

    private static String getValues(String fieldList) {
        List<String> list = Arrays.asList(fieldList.split(","));
        String fieldType = getFieldFype(FILE_PATH_LOGIN);
        List<String> fieldTypeList = Arrays.asList(fieldType.split(","));

        StringBuilder builderTotal = new StringBuilder();

        int m = 100;
        for (int k = 0;k < m;k++){
            StringBuilder builder = new StringBuilder();
            builder.append("(");
//            for (int i = 0, listSize = list.size(); i < listSize; i++) {
//
//            }

            for (int i1 = 0, fieldTypeListSize = fieldTypeList.size(); i1 < fieldTypeListSize; i1++) {
                switch (fieldTypeList.get(i1)){
                    case "int":{
                        builder.append(new Random().nextInt(100));
                        if (i1 != fieldTypeListSize -1){
                            builder.append(",");
                        }
                        break;
                    }
                    case "varchar":
                    case "string":{
                        builder.append("\'");
                        builder.append(list.get(i1));
                        builder.append(new Random().nextInt(100000));
                        builder.append("\'");
                        if (i1 != fieldTypeListSize - 1){
                            builder.append(",");
                        }
                        break;
                    }
                    case "char":{
                        builder.append("\'");
                        builder.append(new Random().nextInt(4));
                        builder.append("\'");
                        if (i1 != fieldTypeListSize - 1){
                            builder.append(",");
                        }
                        break;
                    }
                    case "time":{
                        builder.append("\'");
                        builder.append(S_D_F.format(new Date()));
                        builder.append("\'");
                        if (i1 != fieldTypeListSize -1){
                            builder.append(",");
                        }
                        break;
                    }
                    default:{
                        throw new RuntimeException("current field no type..."+fieldTypeList.get(i1));
                    }
                }
            }

            builder.append(")");
            builderTotal.append(builder.toString());
            builderTotal.append(",");
        }
        String buildStr = builderTotal.toString().substring(0, builderTotal.toString().length() - 1);
        System.out.println(buildStr);
        return buildStr;
    }

    private static String getField(String filePathJinku) {
        try {
            CSVReader build = getCSVReader(filePathJinku);
            Iterator<String[]> iterator = build.iterator();
            if (iterator.hasNext()) {
                do {
                    String[] next = iterator.next();
                    StringBuilder builder = new StringBuilder();
                    for (String s : next){
                        System.out.println("current field is:"+s);
                        builder.append(s);
                        builder.append(",");
                    }
                    System.out.println("final field list is:"+builder.toString());
                    return builder.toString().substring(0,builder.toString().length() - 1);
                } while (iterator.hasNext());
            }

        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        return null;
    }

    private static String getFieldFype(String filePathJinku) {
        try {

            CSVReader build = getCSVReader(filePathJinku);

            Iterator<String[]> iterator = build.iterator();
            int i = 0;
            List<String> list = new ArrayList<>();
            while (iterator.hasNext()){
                String[] next = iterator.next();
                if ( i  == 1){
                    StringBuilder builder = new StringBuilder();
                    for (String s : next){
                        System.out.println("current field type is:"+s);
                        builder.append(s);
                        builder.append(",");
                    }
                    System.out.println("final field list is:"+builder.toString());
                    return builder.toString().substring(0,builder.toString().length() - 1);
                }
                ++i;
            }

            System.out.println("current is:"+i);
            System.out.println(list.toString());
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        return null;
    }

    private static CSVReader getCSVReader(String filePathJinku) throws FileNotFoundException {
        File file = getFileFromPath(filePathJinku);
        assert file != null;
        FileInputStream inputStream = new FileInputStream(file);
        InputStreamReader reader = new InputStreamReader(inputStream);
        BufferedReader bufferedReader = new BufferedReader(reader);
        return new CSVReaderBuilder(bufferedReader).build();
    }

    private static File getFileFromPath(String path) {
        try {
            return new File(ResourceUtils.getURL(path).getPath());
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        return null;
    }

    private static void queryData() {
        System.out.println("begin add false data...");
        Connection conn = getConn();
        if (conn == null){
            System.out.println("current is null...");
            return;
        }
        String sql = "select * from d_esl_i_op_log_jinku";
        try {
            PreparedStatement statement = conn.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()){
                String id = rs.getString("ID");
                System.out.println("current id is:"+id);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private static Connection getConn() {
        try {
            return DriverManager.getConnection("jdbc:mysql://10.19.10.37:3306/dtstest?useSSL=false", "test", "test");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
