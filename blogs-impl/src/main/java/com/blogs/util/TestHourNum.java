package com.blogs.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class TestHourNum {

    public static void main(String[] args) {
        int hh = Integer.valueOf(new SimpleDateFormat("HH").format(new Date())) + 1;
    }
}
