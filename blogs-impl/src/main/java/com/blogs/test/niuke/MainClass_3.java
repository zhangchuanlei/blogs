package com.blogs.test.niuke;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.List;

public class MainClass_3 {
//    public static void main(String[] args) throws IOException {
//        List<Object> list1 = new ArrayList<>();
//        Scanner sc = new Scanner(System.in);
//        int totalNum  = sc.nextInt();
//        List<String> list = new ArrayList<>();
//
//        while (totalNum > 0){
//            String line = sc.next();
//            addToList(list,line);
//            totalNum--;
//        }
//        for (String str : list){
//            String zeroStr = getZero(8 - str.length());
//            System.out.println(str + zeroStr);
//            list1.add(str + zeroStr);
//        }
//        String listResult = list1.toString();
//        if (test.equals(listResult)){
//            System.out.println("nice...");
//        }else {
//            System.out.println("fuck...");
//        }
//    }

    private static String getZero(int i) {
        StringBuilder buffer = new StringBuilder();
        while (i > 0){
            buffer.append("0");
            i--;
        }
        return buffer.toString();
    }

    private static void addToList(List<String> list, String line) {
        while (line.length() > 8){
            String sub = line.substring(0, 8);
            list.add(sub);
            line = line.substring(8);
        }
        list.add(line);
    }

    public static void main(String[] args) throws IOException {
//        List<String> list = new ArrayList<>();
        BufferedReader bufrd = new BufferedReader(new InputStreamReader(System.in));
        String input;
        while((input=bufrd.readLine())!=null){
            int count=Integer.parseInt(input);
            StringBuilder result = new StringBuilder();
            for(int i=0;i<count;i++){
                input = bufrd.readLine();
                int start=0;
                int end=8;
                int length = input.length()/8;
                if (input.length()%8>0){
                    length++;
                }
                for (int j=0;j<length;j++){
                    if(end>input.length()){
                        end=input.length();
                    }
                    String current = input.substring(start,end);
                    result.append(current);
                    if(current.length()<8);
                    for(int k=0;k<8-current.length();k++){
                        result.append("0");
                    }
                    result.append("\n");
                    start+=8;
                    end+=8;
                }
            }
            System.out.println(result.toString().trim());
//            list.add(result.toString().trim());
        }
//        return list.toString();
    }
}

/**
 * 您的代码已保存
 * 答案错误:您提交的程序没有通过所有的测试用例点击对比用例标准输出与你的输出
 * case通过率为0.00%
 *
 * 用例:
 * 5
 * wx
 * x54on1s73ubb9c
 * f29iiqb28l72k
 * y
 * y5vor
 *
 * 对应输出应该为:
 *
 * wx000000
 * x54on1s7
 * 3ubb9c00
 * f29iiqb2
 * 8l72k000
 * y0000000
 * y5vor000
 *
 * 你的输出为:
 *
 * wx000000
 * x54on1s7
 * 3ubb9c00
 * f29iiqb2
 * 8l72k000
 *
 *
 * 40 8hs1kb6tdk7y2395r0kpg54 8wilq1o25o1t53q4so7jy8 m0cp0v7r8dw5bvg 70gvxq902rq9c4mu35udxki1v eliec smi4zt gl7vq4z3r0laizvqme8h2tlbh843x q5ec142n22132amcg60b4r1c7 bxc88zl9qmlvw0ouc2c915vu 2ifglp qt4ar9dom9i9ac2izer0x2vg8p9 349hfq9vbi176a79 zjp5bg10z898 sqpmffrh3p1pjkb4cd05ubvx y7a7h4 k1h59f8tcgc8lt4fq1mnru7a9 ctm3859dpcsd2fj 9q195d8nsssejqpw3ykfx 36x0vomo3g33r29wl5tzs8enf72 5vchreiv5zg4u7kl704pn2tpi8oysc 4mzs5wsxnvl0 8ssrm77 4p2i12966e37gw3ylwufw1lnv41ei y2jz2w6ez83a0j6i fm0ogqze9235e3n88re9s25g 6nljyzkr6hmw5rphj1mxob62x4df 9jmpjr7szj7q9rmxzysl6bya8nm1iz um43t699kf7s7x96au6j4ktblcar 44m0p5dliovy7h3j8dd q8r5hexby3bkd2c72z7tojue9r z1ys7wdcz2baplumvvjgc31 ks0t7zh6vnd9hb1557g9v9 7n8ou 4s749 j9pe4ckp2yv6372rt75x4t4lqg34ly 7t f2xisjrpvbsov 4z59tar7g1sb yuskxtmd5m1 e17t484im404u
 */


