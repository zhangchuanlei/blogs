package com.blogs.test.proxy;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;

public class InvocationHandlerImpl implements InvocationHandler {

    private Subject subject;
    public InvocationHandlerImpl(Subject subject){
        this.subject = subject;
    }

    @Override
    public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
        System.out.println("before...");
        Object invoke = method.invoke(subject, args);
        System.out.println("after...");
        return invoke;
    }
}
