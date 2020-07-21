package com.blogs.test;

public class TestAgent {
    private final static String AGENT = "Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.128 Safari/537.36 Qaxbrowser";

    public static void main(String[] args) {
        String[] strArray = AGENT.split(" ");
        System.out.println(strArray[strArray.length - 1]);  //UserAgentToolUtil
    }
}
