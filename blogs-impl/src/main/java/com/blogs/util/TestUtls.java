package com.blogs.util;

import java.util.Calendar;
import java.util.Date;

/**
 * Created by OneAPM on 2017/12/5.
 */
public class TestUtls {
    /**
     * 读取json文件并解析
     */

    public static void main(String[] args) {


        long firstDayOfMonth = getFirstDayOfMonth();
        System.out.println(firstDayOfMonth);
        long l = System.currentTimeMillis();
        long l1 = l - firstDayOfMonth;
        System.out.println(l1);

        long l2 = l - (31 * 86400000L);
        System.out.println(l2);

    }


    private static long getFirstDayOfMonth(){
        Calendar calendar = Calendar.getInstance();
        calendar.set(Calendar.DAY_OF_MONTH, 1);
        //将小时至0
        calendar.set(Calendar.HOUR_OF_DAY, 0);
        //将分钟至0
        calendar.set(Calendar.MINUTE, 0);
        //将秒至0
        calendar.set(Calendar.SECOND,0);
        //将毫秒至0
        calendar.set(Calendar.MILLISECOND, 0);
        //获得当前月第一天

        //将当前月加1；
        calendar.add(Calendar.MONTH, 0);
        //在当前月的下一月基础上减去1毫秒
        calendar.add(Calendar.MILLISECOND, -1);
        //获得当前月最后一天
        Date edate = calendar.getTime();
        return  edate.getTime();
    }



}
