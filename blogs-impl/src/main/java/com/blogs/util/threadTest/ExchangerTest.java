package com.blogs.util.threadTest;

import java.util.concurrent.Exchanger;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class ExchangerTest {

    private final static Exchanger<String> exchanger = new Exchanger<>();
    private static ExecutorService service = Executors.newCachedThreadPool();

    //    private final static ExecutorServicethreadPool
    public static void main(String[] args) {

        Runnable runnable2 = () -> {
            try {
                String exchange = exchanger.exchange("第一个线程！");
                exchanger.exchange(exchange);
                System.out.println(exchange);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        };

        Runnable runnable = () -> {
            try {
                String exchange = exchanger.exchange("exchange");
                boolean exchange1 = exchange.equals("exchange");
                System.out.println(exchange1);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        };
        service.execute(runnable);
        service.execute(runnable2);
        service.shutdown();
    }
}
