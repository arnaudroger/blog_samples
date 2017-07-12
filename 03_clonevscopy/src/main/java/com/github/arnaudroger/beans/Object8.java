package com.github.arnaudroger.beans;

public class Object8 implements Cloneable {

    public int f1;
    public int f2;
    public int f3;
    public int f4;
    public int f5;
    public int f6;
    public int f7;
    public int f8;


    public Object8(Object8 o) {
        this.f1 = o.f1;
        this.f2 = o.f2;
        this.f3 = o.f3;
        this.f4 = o.f4;
        this.f5 = o.f5;
        this.f6 = o.f6;
        this.f7 = o.f7;
        this.f8 = o.f8;


    }

    public Object8(int f1, int f2, int f3, int f4, int f5, int f6, int f7, int f8) {
        this.f1 = f1;
        this.f2 = f2;
        this.f3 = f3;
        this.f4 = f4;
        this.f5 = f5;
        this.f6 = f6;
        this.f7 = f7;
        this.f8 = f8;


    }

    @Override
    public Object8 clone() throws CloneNotSupportedException {
        return (Object8) super.clone();
    }
}
