package com.blogs.util.test;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class TestMinTime {

    public static void main(String[] args) throws ParseException {

        Date dateNow = new Date();
        long l = dateNow.getTime() - 86400000;
        Date date = new Date(l);

        List<Long> longs = testDate(date);

    }

    private static List<Long> testDate(Date dateNow){

        List<Long> arrays = new ArrayList<>();
        try {
            SimpleDateFormat simpleDateFormatNow = new SimpleDateFormat("yyyy-MM-dd~HH-mm");

            String formatNow = simpleDateFormatNow.format(dateNow);
            String[] splitNowDate = formatNow.split("~");

            String yyyyMMdd = splitNowDate[0];
            String startTime = yyyyMMdd + "-07-10";
            String endTime = yyyyMMdd + "-18-50";

            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd-HH-mm");

//        SimpleDateFormat simpleDateFormatHHmm = new SimpleDateFormat("Hh-mm");

            Date parseStartTime = simpleDateFormat.parse(startTime);

            long timeStart = parseStartTime.getTime();
            Date parseEndTime = simpleDateFormat.parse(endTime);
            long timeEnd = parseEndTime.getTime();

            for (int i = 1;;i++){

                if (timeStart > timeEnd){
                    break;
                }
                Date date = new Date(timeStart);
                String formatStart = simpleDateFormat.format(date);
                System.out.println("this i is:>>>"+i);
                System.out.println("this formatStart is:>>>"+formatStart);

                timeStart += 1200000;
                arrays.add(timeStart);
            }
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return arrays;
    }
}
