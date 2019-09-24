package com.blogs.util.test;

import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.concurrent.FutureCallback;
import org.apache.http.impl.nio.client.CloseableHttpAsyncClient;
import org.apache.http.impl.nio.client.HttpAsyncClients;
import org.apache.http.util.EntityUtils;

import java.io.IOException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

public class TestMainLatch {

    public static void main(String[] argv) {
        CloseableHttpAsyncClient httpclient = HttpAsyncClients.createDefault();
        httpclient.start();

        final CountDownLatch latch = new CountDownLatch(100);
        HttpGet request = new HttpGet("http://10.128.5.6/portal/api/account.do?tokenKey=key1&pass=12345678&user=admin");
        for (int i = 0 ;i < 1000;i++){
            executeTask(request,httpclient,latch);
//            request.get
            System.out.println(" caller thread id is : " + Thread.currentThread().getId());
        }

        closeIO(httpclient,latch);
    }

    private static String executeTask(
            HttpGet request,
            CloseableHttpAsyncClient httpclient,
            CountDownLatch latch
    ) {
        Future<HttpResponse> execute = httpclient.execute(request, new FutureCallback<HttpResponse>() {

            public void completed(final HttpResponse response) {
                latch.countDown();
                System.out.println(" callback thread id is : " + Thread.currentThread().getId());
                System.out.println(request.getRequestLine() + "->" + response.getStatusLine());
                try {
                    String content = EntityUtils.toString(response.getEntity(), "UTF-8");
                    System.out.println(" response content is : " + content);
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }

            public void failed(final Exception ex) {
                latch.countDown();
                System.out.println(request.getRequestLine() + "->" + ex);
                System.out.println(" callback thread id is : " + Thread.currentThread().getId());
            }

            public void cancelled() {
                latch.countDown();
                System.out.println(request.getRequestLine() + " cancelled");
                System.out.println(" callback thread id is : " + Thread.currentThread().getId());
            }

        });



        while (!execute.isDone()){

        }
        try {
            String s = execute.get().toString();
            System.out.println("this result is:>>>"+s);
            return s;
        } catch (InterruptedException | ExecutionException e) {
            e.printStackTrace();
        }
        return null;
    }

    private static void closeIO(CloseableHttpAsyncClient httpclient,CountDownLatch latch){
        try {
            if (latch != null){
                latch.await();
            }
            if (httpclient != null){
                httpclient.close();
            }
        } catch (InterruptedException | IOException e) {
            e.printStackTrace();
        }
    }
}
