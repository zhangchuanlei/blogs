package com.blogs.util.test;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.List;

public class TestStr {

    public static void main(String[] args) {
        URL url = null;
        StringBuilder document = new StringBuilder();
        List<String> listStr = new ArrayList<>();
        try {
            url = new URL("https://baike.baidu.com/item/%E7%9B%B8%E5%A3%B0/197857?fr=aladdin");
            URLConnection conn = url.openConnection();
            BufferedReader reader = new BufferedReader(new InputStreamReader(conn.getInputStream()));
            String line = null;
            int i = 0;
            while((line = reader.readLine()) != null){
                i++;
                document.append(line).append("\n");
                listStr.add(line);
                if (line.contains("相声")){
                    System.out.println(line);
                    System.out.println("=========================================");
                }
            }
//            System.out.println(listStr.toString());
//            System.out.println(i);
        } catch (IOException e) {
            e.printStackTrace();
        }

    }
}
