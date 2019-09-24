package com.blogs.util.test;

import java.net.InetAddress;
import java.net.UnknownHostException;

public class TestHostName {

    public static void main(String[] args) throws UnknownHostException {
        //获取本机的ip地址和域名
//        InetAddress ia = InetAddress.getLocalHost();
//        System.out.println(ia.toString());
//        System.out.println(ia.getHostName());//域名               127
//        System.out.println(ia.getHostAddress());//ip地址           192.168.201.254
//        System.out.println(Arrays.toString(ia.getAddress()));//-64, -88, 6, -2(最高位是1)
//
//        //获取固定网址的ip和域名
//        InetAddress ia2 = InetAddress.getByName("10.128.5.91");
//        System.out.println(ia2.toString());
//        System.out.println(ia2.getHostName());//域名               127
//        System.out.println(ia2.getHostAddress());//ip地址


        InetAddress localHost = InetAddress.getLocalHost();
        InetAddress byName = InetAddress.getByName(localHost.getHostAddress());
        System.out.println(byName.getHostName());

    }
}
