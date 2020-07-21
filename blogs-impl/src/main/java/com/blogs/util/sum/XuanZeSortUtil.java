package com.blogs.util.sum;

public class XuanZeSortUtil {

    private static void sortByXuanZe(int[] ints){
        for (int i = 0;i < ints.length;i++){
            for (int j = 0;j < ints.length;j++){
                if (ints[j] < ints[i]){
                    int temp = ints[i];
                    ints[i] = ints[j];
                    ints[j] = temp;
                }
            }
        }
    }

    public static void main(String[] args) {
        int[] basicData = CommonSumUtils.getBasicData();
        CommonSumUtils.print(basicData);
        sortByXuanZe(basicData);
        CommonSumUtils.print(basicData);
    }
}
