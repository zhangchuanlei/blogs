package com.blogs.test.niuke;

import java.util.Scanner;

public class MainClass_1 {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        while (sc.hasNext()){
            String input = sc.nextLine();
            StringBuilder builder = new StringBuilder(input);
            System.out.println(builder.reverse().toString());
        }
    }
}
