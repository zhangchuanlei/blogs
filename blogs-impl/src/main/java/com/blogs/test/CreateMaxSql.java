package com.blogs.test;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.blogs.util.CommonUtils;

import java.io.IOException;

public class CreateMaxSql {
    public static void main(String[] args) {
        String pathCommon = "/Users/zhangchuanlei/ideaProject/blogs/blogs-impl/src/main/resources/";
        String pathRead = "cookieId.json";
        String pathWrite = "finalSql.sql";
        try {
            String value = CommonUtils.readJson(pathCommon + pathRead);
            String sqlPrefix = "select cookie from bi_session_metrics where cookie in (";
            StringBuilder builder = new StringBuilder();
            builder.append(sqlPrefix);
            JSONArray objects = JSON.parseArray(value);
            for(Object o : objects){
                builder.append(o);
                builder.append(",");
            }
            String sqlFinal = builder.toString().substring(0, builder.toString().length() - 1);
            sqlFinal = sqlFinal + ")";
            CommonUtils.writeJson(sqlFinal,pathCommon+ pathWrite,false);
            System.out.println(sqlFinal);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
