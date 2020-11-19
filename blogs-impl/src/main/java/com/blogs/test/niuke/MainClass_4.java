package com.blogs.test.niuke;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class MainClass_4 {

    public static void main(String[] args) {

        int m = 10;
        int n = 10;
        //[[5,1,-2,-4,6,5,0,-9],[0,1,-3,-2,-4,6,1,2],[-1,3,-2,5,1,-2,6,1]],3,8

        int test [][] = {{5,1,-2,-4,6,5,0,-9},{0,1,-3,-2,-4,6,1,2},{-1,3,-2,5,1,-2,6,1}};
        String maxNum = getMaxNum(test, m, n);
        System.out.println(maxNum);
    }

    private static String getMaxNum(int[][] nums,int m,int n) {
        //数据类型 数组名 [ ][ ] = new 数据类型[m][n]
        List<int[]> asList = Arrays.asList(nums);
        int j = 0;
        Map<Integer, Integer> map = new HashMap<>();
        for (int[] listInt  : asList){
            j++;
            int resultFinal = getMaxNumOne(listInt);
            map.put(j,resultFinal);
        }
        int numLength = 0;
        int totalNum = 0;
        for (Integer intHash : map.keySet()){
            if (numLength == 0 && totalNum ==0){
                numLength = intHash;
                totalNum = map.get(intHash);
            }
            if (totalNum > map.get(intHash)){
                continue;
            }
            totalNum = map.get(intHash);
            numLength = intHash;
        }
        return numLength+":"+totalNum;
    }

    private static int resultFinal = 0;
    private static int getMaxNumOne(int[] listInt) {
        int numTime = 0;
        for (int i : listInt) {
            if ((i + numTime) > i) {
                continue;
            }
            numTime = i + numTime;
        }
        return numTime;

//        int right = listInt.length - 1;
//        int left = 0;
//        int mid = 0;
//        while (left > right){
//            int resultNow = listInt[left] + listInt[right];
//            if (resultNow > resultFinal){
//                resultFinal = resultNow;
//                break;
//            }
//            right--;
//            left++;
//            getMaxNumOne(listInt);
//    }
    }
}

/*
import java.util.*;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
public class Solution {
    /**
     *
     * @param nums int整型二维数组
     * @param m int整型 二维数组行数
     * @param n int整型 二维数组列数
     * @return string字符串
     */
//public String maxNumbersSum (int[][] nums, int m, int n) {
//    // write code here
//    //数据类型 数组名 [ ][ ] = new 数据类型[m][n]
//    //数据类型 数组名 [ ][ ] = new 数据类型[m][n]
//    List<int[]> asList = Arrays.asList(nums);
//    int j = 0;
//    Map<Integer, Integer> map = new HashMap<>();
//    for (int[] listInt  : asList){
//        j++;
//        int largeTime = 0;
//        for (int i : listInt){
//            largeTime += i;
//        }
//        map.put(j,largeTime);
//    }
//    int numLength = 0;
//    int totalNum = 0;
//    for (Integer intHash : map.keySet()){
//        if (numLength == 0 || totalNum ==0){
//            numLength = intHash;
//            totalNum = map.get(intHash);
//        }
//        if (totalNum > map.get(intHash)){
//            continue;
//        }
//        totalNum = map.get(intHash);
//        numLength = intHash;
//    }
//    return numLength+":"+totalNum;
//}
//}
//
