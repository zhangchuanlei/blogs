package com.blogs.sql;

import com.blogs.util.CommonUtils;

import java.io.FileWriter;
import java.io.IOException;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

public class GetSql {

    public static void main(String[] args) throws IOException {

        String jsonData = CommonUtils.readJson(
                "/Users/zhangchuanlei/ideaProject/blogs/blogs-impl/src/main/resources/sql/web_visit.sql");
        String[] splitArray = jsonData.split("---");

        for (String splitStr : splitArray) {
            if (splitStr.contains("GROUP BY")) {
                printSqlByDate(splitStr, true);
            } else {
                printSqlByDate(splitStr, false);
            }
        }

    }

    private static void printSqlByDate(String sql, boolean isGroupBy) throws IOException {

        String[] wheres = sql.split("where");
        String[] group_bies = sql.split("GROUP BY");

        int i_1 = sql.indexOf(".");
        int i_2 = sql.indexOf(" (");
        String newName = sql.substring(i_1 + 1, i_2);

        Calendar calendar = Calendar.getInstance(Locale.CHINA);
        long time = calendar.getTimeInMillis() / 1000 / 3600 * 1000 * 60 * 60;
        Date date = null;
        StringBuilder sb = new StringBuilder();
        while (time >= 1562083200000L) {
            date = new Date(time);
            String ch__start_date = String.format(
                    "%d-%d-%d",
                    date.getYear() + 1900,
                    date.getMonth() + 1,
                    date.getDate()
            );
            if (wheres.length == 1) {
                sb.append(wheres[0]);
                sb.append("\n" + ";");
                break;
            } else {
                sb.append(wheres[0]);
                sb.append("\n where ch_start_date='");
                sb.append(ch__start_date);
                sb.append("'");
                if (isGroupBy) {
                    sb.append(
                            "\nGROUP BY");//app_id, customer_name, device_uuid, app_version_id, os_id, device_id, country_id, region_id, city_id, carrier_id, action_type, action_name, view_name, ch_start_date, timestamp;\n");
                    sb.append(group_bies[1]);
                } else {
                    sb.append(";");
                }
                sb.append("\n");
            }
            time = time - 24 * 60 * 60 * 1000;
        }
        System.out.println(sb);

        //写文件
        writeJson(sb.toString(), newName);
    }

    private static void writeJson(String json, String newFileName) throws IOException {
        String midata = "midata/";
        String webviewdata = "webviewdata/";
        FileWriter filew;
        if (json.contains("webviewdata")) {
            filew = new FileWriter("/Users/zhangchuanlei/ideaProject/blogs/blogs-impl/src/main/resources/sql/"
                                   + webviewdata
                                   + newFileName
                                   + ".sql", false);
        } else {
            filew = new FileWriter("/Users/zhangchuanlei/ideaProject/blogs/blogs-impl/src/main/resources/sql/" + midata
                                   + newFileName
                                   + ".sql", false);
        }
//        FileWriter filew = new FileWriter("/Users/zhangchuanlei/ideaProject/blogs/blogs-impl/src/main/resources/sql/"
//                                          + newFileName
//                                          + ".sql", false);
        //true表示追加，否则是覆盖写，覆盖写不需要true
        filew.write("\n" + json + "\n");
        filew.close();
    }

}
