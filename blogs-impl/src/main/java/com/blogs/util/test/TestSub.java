package com.blogs.util.test;

import java.util.Date;

public class TestSub extends TestSuper{
    private final Date date;
    TestSub (){
        date = new Date();
    }

    @Override
    public void testExecute() {
        System.out.println("----"+this.date);
    }
}
