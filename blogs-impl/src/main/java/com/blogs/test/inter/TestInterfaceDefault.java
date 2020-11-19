//package com.blogs.test.inter;
//
//public class TestInterfaceDefault implements A,B{
//    @Override
//    public void print() {
//        A.super.print();
//        B.super.print();
//    }
//}
//
//class D implements A{
//
//}
//
//
//interface A{
//    default void print(){
//        System.out.println("------");
//    }
//}
//
//interface B{
//    default void print(){
//        System.out.println("++++++");
//    }
//}
//
//class C {
//    public static void main(String[] args) {
//        A A = new TestInterfaceDefault();
//        B B = new TestInterfaceDefault();
//        A.print();
//        B.print();
//        System.out.println("===============");
//        new D().print();
//    }
//}
