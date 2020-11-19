package com.blogs.util;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import static java.util.regex.Pattern.*;

public class TestMain {

    public static void main(String[] args) {
        Pattern p = compile("(.*)");
        Matcher m = p.matcher(null);
        if (m.find()) {
            System.out.println("test...");
        }
    }
}
