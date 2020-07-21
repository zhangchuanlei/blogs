package com.blogs.test;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class TestLongClass {
    public static void main(String[] args) {

        List<Long> eventIds = new ArrayList<>();
        eventIds.add(1L);
        eventIds.add(1L);
        eventIds.add(2L);
        eventIds.add(2L);
        eventIds.add(3L);

        Long before = null;
        Long next = null;
        for (Iterator<Long> iterator = eventIds.iterator(); iterator.hasNext(); ) {
            before = next;
            next = iterator.next();
            if (next.equals(before)) {
                iterator.remove();
            }
        }
        System.out.println(eventIds.toString());
    }
}
