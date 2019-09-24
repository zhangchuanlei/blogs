package com.blogs.util.test;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class TestDate {
    public static void main(String[] args) throws ParseException {

//        Calendar cal = Calendar.getInstance();
//        cal.setTime(new Date());
//        int hour = cal.get(Calendar.HOUR_OF_DAY);
//        int minute = cal.get(Calendar.MINUTE);
//        int second = cal.get(Calendar.SECOND);
//        int i = cal.get(Calendar.MILLISECOND);
//        // 时分秒（毫秒数）
//        long millisecond = hour * 60 * 60 * 1000 + minute * 60 * 1000 + second * 1000 + i;
//
//        // 凌晨00:00:00
//        System.out.println("this millisecond is:..."+millisecond);
//        cal.setTimeInMillis(cal.getTimeInMillis() - millisecond);
//        System.out.println(cal.getTime().getTime());


//        Date date = new Date();
//        String time1 = new SimpleDateFormat("yyyyMMdd HH:mm").format(date);
//        Date date1 = new Date(date.getTime()-Long.parseLong("86400000"));
//        String time2 = new SimpleDateFormat("yyyyMMdd HH:mm").format(date1);
//        String time = time2 +"-"+time1;
//        System.out.println("this time is:>>>"+time);

//        int i = 0;
//        Double j = 0d;
//        if (i == j){
//            System.out.println("....");
//        }


//        long formatLong = getFormatLong(new Date(), "yyyy-MM-dd");
//        System.out.println(formatLong);
//
////        String format = sdfMinute.format(dateNow);
////        System.out.println(format);
//        Date dateNow = new Date();
//        long beginMonth = getFormatLong(dateNow, "yyyy-MM");
//        long endMonth = getFormatLong(dateNow, "yyyy-MM-dd");
//        System.out.println(beginMonth+"..."+endMonth);
//
//        long beginDay = getFormatLong(dateNow, "yyyy-MM-dd");
//        long endDay = getFormatLong(dateNow, "yyyy-MM-dd-HH");
//        System.out.println(beginDay+"..."+endDay);
//
//        //分钟数据
//        long beginHour = getFormatLong(dateNow, "yyyy-MM-dd-HH");
//        long endHour = getFormatLong(dateNow, "yyyy-MM-dd-HH-mm");
//        System.out.println(beginHour+"..."+endHour);

        System.out.println(getMonthTime(new Date()));
    }

    private static long getFormatLong(Date date,String format) throws ParseException {
        SimpleDateFormat sdfMonth = new SimpleDateFormat(format);
        String formatMonth = sdfMonth.format(date);
        SimpleDateFormat sdfMinute = new SimpleDateFormat("yyyyMMddHHmm");
        Date dateMonthStartTime = sdfMonth.parse(formatMonth);
        //开始时间
        String formatMinute = sdfMinute.format(dateMonthStartTime);
        return Long.valueOf(formatMinute);
    }

    private static Long getMonthTime(Date date) {

        SimpleDateFormat yyyyMM = new SimpleDateFormat("yyyyMM");
        String format = yyyyMM.format(date);
        try {
            return yyyyMM.parse(format).getTime();
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return null;
    }
}
