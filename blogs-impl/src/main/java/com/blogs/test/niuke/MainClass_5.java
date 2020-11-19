package com.blogs.test.niuke;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Scanner;

public class MainClass_5 {
    /**
     * 一、
     * 2 1
     * 1 2
     * 2 1
     * 二、
     * 3 1
     * 1 2
     * 1 3
     * 2 3
     *
     * @param args
     */
    public static void main(String[] args) {
        List<List<String>> listTotal = new ArrayList<>();
        Scanner sc = new Scanner(System.in);
        while (sc.hasNext()){
            String lineData = sc.nextLine();
            List<String> list = Arrays.asList(lineData.split(" "));
            listTotal.add(list);
        }
        int num = getBetterMethod(listTotal);
        System.out.println(num);

    }

    private static int getBetterMethod(List<List<String>> listTotal) {
        System.out.println("看不懂题～");
        return 0;
    }
}
