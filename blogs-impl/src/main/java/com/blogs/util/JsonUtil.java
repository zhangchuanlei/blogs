package com.blogs.util;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.apache.commons.io.IOUtils;
import org.springframework.util.ResourceUtils;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;

import static com.blogs.util.Constants.DEFAULT_ENCODING;


/**
 * Created by lijuncheng on 2017/5/5.
 */
public class JsonUtil {
    public static final ObjectMapper OBJECT_MAPPER = new ObjectMapper();

    private JsonUtil() {
    }

    public static <T> T readValue(String resourceLocation, Class<T> valueType) throws IOException {
        String json = readJson(resourceLocation);
        return OBJECT_MAPPER.readValue(json, valueType);
    }

    public static <T> T readValue(String resourceLocation, TypeReference valueTypeRef) throws IOException {
        String json = readJson(resourceLocation);
        return OBJECT_MAPPER.readValue(json, valueTypeRef);
    }

    public static String readJson(String resourceLocation) throws IOException {
        return IOUtils.toString(ResourceUtils.getURL(resourceLocation), DEFAULT_ENCODING);
    }



    public static String readFileByLines(File file) {
        StringBuffer buffer = new StringBuffer();
        BufferedReader reader = null;
        try {
            System.out.println("以行为单位读取文件内容，一次读一整行：");
            reader = new BufferedReader(new FileReader(file));
            String tempString = null;
            int line = 1;
            // 一次读入一行，直到读入null为文件结束
            while ((tempString = reader.readLine()) != null) {
                // 显示行号
                System.out.println("line " + line + ": " + tempString);
                buffer.append(tempString);
                line++;
            }
            reader.close();

        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (reader != null) {
                try {
                    reader.close();
                } catch (IOException e1) {
                }
            }
        }
        return buffer.toString();
    }
}
