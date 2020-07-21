package com.blogs.util;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

public class CommonUtils {

    public static String readJson(String path) throws IOException {
        File file = new File(path);
        BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
        StringBuilder stringBuilder = new StringBuilder();
        String str = null;
        while ((str = bufferedReader.readLine()) != null) {
            stringBuilder.append(str);
            System.out.println(str);
        }
        bufferedReader.close();
        return stringBuilder.toString();
    }

    public static void writeJson(String json, String pathName,boolean append) throws IOException {
        FileWriter fileNew =new FileWriter(pathName, append);
        //true表示追加，否则是覆盖写，覆盖写不需要true
        fileNew.write(json + "\n");
        fileNew.close();
    }
}
