package com.blogs.test.niuke;

import java.util.Scanner;

/**
 * // 本题为考试单行多行输入输出规范示例，无需提交，不计分。
 * import java.util.Scanner;
 * public class Main {
 *     public static void main(String[] args) {
 *         Scanner in = new Scanner(System.in);
 *         while (in.hasNextInt()) {// 注意，如果输入是多个测试用例，请通过while循环处理多个测试用例
 *             int a = in.nextInt();
 *             int b = in.nextInt();
 *             System.out.println(a + b);
 *         }
 *     }
 * }
 */
public class MainClass {
    public MainClass mainRight;
    public MainClass mainLeft;
    public MainClass mainFather;
    public String data;
    //CBEFDA CBAEDF
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String inputData = sc.nextLine();
        String[] dataArray = inputData.split(" ");
        String finalData = getOneData(dataArray);
        System.out.println(finalData);
    }

    private static String getOneData(String[] dataArray) {
        MainClass firstMain = null;
        String right = dataArray[0];
        String Left = dataArray[1];
        char[] charsRight = right.toCharArray();
        char[] charsLeft = Left.toCharArray();

        //获取最后一个顶点的
        char cA = charsRight[right.length() - 1];
        int j = 0;
        for (int i = charsRight.length - 1; i >= 0; i--){
            MainClass MainClass = new MainClass();
            MainClass.data = String.valueOf(charsLeft[i]);

            if (j == 0){
                MainClass.mainRight = firstMain;
                j = 1;
            }else {
                MainClass.mainLeft = firstMain;
                j = 0;
            }
            firstMain = MainClass;
        }

        return firstMain.data;
    }
}














