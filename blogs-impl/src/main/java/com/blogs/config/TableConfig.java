package com.blogs.config;

import jakiro.mybatis.TableNameHandler;

/**
 * Created by OneAPM on 2017/12/5.
 */
public class TableConfig implements TableNameHandler {
    @Override
    public String getTargetTableName(String s, String s1, Object o, String s2) {
        return "TestTable";
    }
}
