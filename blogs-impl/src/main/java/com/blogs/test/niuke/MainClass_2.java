package com.blogs.test.niuke;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.Scanner;

public class MainClass_2 {
    public static void main(String[] args) throws Exception {
        mainTest(args);
        Scanner sc = new Scanner(System.in);
        String input = sc.nextLine();
        String[] dataArray = input.split(" ");
        int numNe = 0;
        int numPo = 0;
        int sum = 0;
        for (int i = 0;i < dataArray.length;i++){
            int num = Integer.valueOf(dataArray[i]);
            if (num < 0){
                numNe++;
            }else {
                sum += num;
                numPo++;
            }
        }
        System.out.println(numNe);
        System.out.println(Math.round(sum * 10.0 /numPo) / 10.0);

    }

    public static void mainTest(String[] args) throws Exception {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        String[] nums = br.readLine().split(" ");
        int negativeNum = 0;
        int positiveNum = 0;
        int sum = 0;
        for (int i = 0; i < nums.length; i++) {
            int num = Integer.parseInt(nums[i]);
            if (num < 0) {
                negativeNum++;
            } else {
                sum += num;
                positiveNum++;
            }
        }
        System.out.println(negativeNum);
        System.out.println(Math.round(sum * 10.0 / positiveNum) / 10.0);
    }
}
