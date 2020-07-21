package com.blogs.test.proxy;


import org.springframework.cglib.proxy.Enhancer;
import org.springframework.cglib.proxy.MethodInterceptor;
import org.springframework.cglib.proxy.MethodProxy;

import java.lang.reflect.Method;

public class CglibProxy implements MethodInterceptor {

    /**
          * 实现MethodInterceptor接口方法
          *  intercept()方法拦截所有目标类方法的调用
          *  obj表示目标类的实例，method为目标类方法的反射对象，
          *  为方法的动态入参，proxy为代理类实例。
          *  proxy.invokeSuper(obj, arg2)通过代理类调用父类中的方法
          */
    @Override
    public Object intercept(
            Object o, Method method, Object[] objects, MethodProxy methodProxy
    ) throws Throwable {
        System.out.println("before....");
        return methodProxy.invokeSuper(o,objects);
    }

    public Object createProxy(Class<?> clazz)
    {
        Enhancer enhancer = new Enhancer();
        //设置需要创建子类的类
        enhancer.setSuperclass(clazz);
        enhancer.setCallback(this);
        //通过字节码技术动态创建子类实例
        return enhancer.create();
    }
}
