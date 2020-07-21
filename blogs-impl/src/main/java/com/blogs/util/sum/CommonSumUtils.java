package com.blogs.util.sum;

public class CommonSumUtils {

    public static int[] getBasicData(){
        int[] ints = new int[5];
        ints[0] = 5;
        ints[1] = 2;
        ints[2] = 4;
        ints[3] = 3;
        ints[4] = 1;
        return ints;
    }

    public static void print(int[] ints){
        for (int j = 0 ;j < ints.length;j++){
            System.out.println(ints[j]);
        }
        System.out.println("===");
    }
}
