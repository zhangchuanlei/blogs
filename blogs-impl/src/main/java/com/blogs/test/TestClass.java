package com.blogs.test;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

public class TestClass {

    public static void main(String[] args) {
        testClassOne();
    }


    public static void testClassOne(){
        try {
            testThrowException(-1);
        } catch (UnsupportedEncodingException | IllegalArgumentException e) {
//            e.printStackTrace();
        }
        System.out.println("this is common str...");
    }

    private static void testSystem(){
        System.out.println("HHH");
    }


    private static void testThrowException(int i) throws UnsupportedEncodingException {
        String decode = URLDecoder.decode("hhh", "UTF-8");
        if (i < 0){
            throw new IllegalArgumentException();
        }
        System.out.println(decode);
    }
}
