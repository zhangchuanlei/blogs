package com.blogs.config;

import org.springframework.context.annotation.Configuration;

/**
 * Created by OneAPM on 2017/12/5.
 */
@Configuration
public class DbConfig {
//    @Value("${db.config.path}")
//    String configPath;

//    @Bean
//    public DataSource dataSource() {
//        DruidDataSource druidDataSource = new DruidDataSource();
//        try {
//            Class.forName("com.mysql.jdbc.Driver");
//        } catch (ClassNotFoundException e) {
//            e.printStackTrace();
//        }
//        String username = getDataSourceMessage().get("username");
//        String password = getDataSourceMessage().get("password");
//        String url = getDataSourceMessage().get("url");
//        druidDataSource.setName(username);
//        druidDataSource.setPassword(password);
//        druidDataSource.setUrl(url);
//        return druidDataSource;
//    }

//    @SuppressWarnings("unchecked")
//    public Map<String, String> getDataSourceMessage() {
//        Map<String, String> aDefault = null;
//        try {
//            Map jsonMap = JsonUtil.readValue(this.configPath, HashMap.class);
//            aDefault = (Map<String, String>) jsonMap.get("default");
//
//            System.out.println("jsonMap is:..." + jsonMap);
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
//        return aDefault;
//    }
}
