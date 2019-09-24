package com.blogs.util.test;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class TestWeek {
    public static void main(String[] args) {
        Calendar cal = Calendar.getInstance();
//n为推迟的周数，1本周，-1向前推迟一周，2下周，依次类推
        int n = -1;
        String monday;
        cal.add(Calendar.DATE, n*7);
//想周几，这里就传几Calendar.MONDAY（TUESDAY...）
        cal.set(Calendar.DAY_OF_WEEK,Calendar.MONDAY);
        monday = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(cal.getTime());
        System.out.println("this MONDAY is:..."+monday);

        getSunDay();
        getFirstTimeOfDay();
    }

    private static void getSunDay() {
        Calendar cal = Calendar.getInstance();
        //n为推迟的周数，1本周，-1向前推迟一周，2下周，依次类推
        int n = 0;
        String monday;
        cal.add(Calendar.DATE, n*7);
        //想周几，这里就传几Calendar.MONDAY（TUESDAY...）
        cal.set(Calendar.DAY_OF_WEEK,Calendar.SUNDAY);
        monday = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(cal.getTime());
        System.out.println("this SATURDAY is:..."+monday);
    }

    public static void getFirstTimeOfDay() {
        long nowTime = new Date().getTime();
        System.out.println("this now time is:..."+nowTime);
        long l = nowTime % (24 * 3600000) ;
        System.out.println(l);
        Date date = weeHours(new Date(), 0);
        System.out.println("this weeHours is:..."+date.getTime());
    }

    private static Date weeHours(Date date, int flag) {
        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        int hour = cal.get(Calendar.HOUR_OF_DAY);
        int minute = cal.get(Calendar.MINUTE);
        int second = cal.get(Calendar.SECOND);
        int i = cal.get(Calendar.MILLISECOND);
        // 时分秒（毫秒数）
        long millisecond = hour * 60 * 60 * 1000 + minute * 60 * 1000 + second * 1000 + i;
        // 凌晨00:00:00
        cal.setTimeInMillis(cal.getTimeInMillis() - millisecond);
        if (flag == 0) {
            return cal.getTime();
        } else if (flag == 1) {
            // 凌晨23:59:59
            cal.setTimeInMillis(cal.getTimeInMillis() + 23 * 60 * 60 * 1000 + 59 * 60 * 1000 + 59 * 1000);
        }
        return cal.getTime();
    }


}
