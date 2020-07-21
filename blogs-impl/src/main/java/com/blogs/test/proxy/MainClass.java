package com.blogs.test.proxy;

import java.lang.reflect.Proxy;

public class MainClass {

    public static void main(String[] args) {
        long startTime = System.currentTimeMillis();
        SubjectImpl subject = new SubjectImpl();
        //JDK-proxy
        InvocationHandlerImpl invocationHandler = new InvocationHandlerImpl(subject);
        ClassLoader classLoader = SubjectImpl.class.getClassLoader();
        Class<?>[] classes = SubjectImpl.class.getInterfaces();

        Subject subjectFather = (Subject) Proxy.newProxyInstance(classLoader, classes, invocationHandler);
        subjectFather.SubjectMethod();

        long centerTime = System.currentTimeMillis();
        System.out.println(centerTime - startTime);

        //cglib-proxy
        Subject su = (Subject) new CglibProxy().createProxy(SubjectImpl.class);
        su.SubjectMethod();
        long endTime = System.currentTimeMillis();
        System.out.println(endTime - centerTime);
    }
}
