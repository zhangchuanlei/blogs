package com.blogs.util.test;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class TestDayTime {

    public static void main(String[] args) {
        //获取从 月初到现在的 日期时间戳
        Date dateNow = new Date();

        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        String formatDay = simpleDateFormat.format(dateNow);

        SimpleDateFormat simpleDateFormatMM = new SimpleDateFormat("yyyy-MM");
        String formatMM = simpleDateFormatMM.format(dateNow);

        List<Long> longs = new ArrayList<>();
        try {
            Date parseMonth = simpleDateFormatMM.parse(formatMM);
            Date parseNowDay = simpleDateFormat.parse(formatDay);

            long timeMonth = parseMonth.getTime();

            for (;;){
//                System.out.println(format);
                if (timeMonth >= parseNowDay.getTime()){
                    break;
                }
                timeMonth += 86400000;
                longs.add(timeMonth);
            }

        } catch (ParseException e) {
            e.printStackTrace();
        }

        for (Long lon : longs){
            String format = simpleDateFormat.format(new Date(lon));
            System.out.println(format);
        }
    }
}
