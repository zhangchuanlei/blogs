package com.blogs.util.sum;

import static com.blogs.util.sum.CommonSumUtils.print;

public class MaoPaoSortUtil {


    private static void sortByMaoPao(int[] arrays){

        for (int j =  0; j < arrays.length;j++){

            for (int i =  0; i < arrays.length -1;i++){

                if (arrays[i] < arrays[j]){
                    int temp = arrays[j];
                    arrays[j] = arrays[i];
                    arrays[i] = temp;
                }
            }
        }
        print(arrays);
    }

    public static void main(String[] args) {
        int[] basicData = CommonSumUtils.getBasicData();
        print(basicData);
        System.out.println("=====");
        sortByMaoPao(basicData);
    }



}
