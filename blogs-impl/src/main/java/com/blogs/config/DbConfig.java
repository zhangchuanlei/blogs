package com.blogs.config;

import com.alibaba.druid.pool.DruidDataSource;
import com.blogs.util.JsonUtil;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.sql.DataSource;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by OneAPM on 2017/12/5.
 */
@Configuration
public class DbConfig {
    @Value("${db.config.path}")
    String configPath;

    @Bean
    public DataSource getDataSource() {
        DruidDataSource druidDataSource = new DruidDataSource();
        String username = getDataSourceMessage().get("username");
        String password = getDataSourceMessage().get("password");
        String url = getDataSourceMessage().get("url");
        druidDataSource.setName(username);
        druidDataSource.setPassword(password);
        druidDataSource.setUrl(url);
        return druidDataSource;
    }

    @SuppressWarnings("unchecked")
    public Map<String, String> getDataSourceMessage() {
        Map<String, String> aDefault = null;
        try {
            Map jsonMap = JsonUtil.readValue(this.configPath, HashMap.class);
            aDefault = (Map<String, String>) jsonMap.get("default");

            System.out.println("jsonMap is:..." + jsonMap);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return aDefault;
    }
}
