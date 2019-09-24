package com.blogs.util;

import com.alibaba.fastjson.JSON;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class TestMain {
    public static void main(String[] args) {
        TestPoi testPoi = new TestPoi();
        List<List<String>> read = testPoi.read("D:\\上线方案\\河北财政厅首屏大屏\\115.xlsx");

        List<Map<String, String>> maps = new ArrayList<>();
        for (List listStr : read){
            Map<String, String> dataMap = new HashMap<>();
            dataMap.put("code",String.valueOf(listStr.get(1)));
            dataMap.put("countryName",String.valueOf(listStr.get(2)));
            maps.add(dataMap);
        }
        String s = JSON.toJSONString(maps);
        System.out.println(s);
    }
}
