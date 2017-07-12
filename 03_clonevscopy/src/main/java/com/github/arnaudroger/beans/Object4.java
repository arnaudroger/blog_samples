package com.github.arnaudroger.beans;

public class Object4 implements Cloneable {

    public int f1;
    public int f2;
    public int f3;
    public int f4;


    public Object4(Object4 o) {
        this.f1 = o.f1;
        this.f2 = o.f2;
        this.f3 = o.f3;
        this.f4 = o.f4;
    }

    public Object4(int f1, int f2, int f3, int f4) {
        this.f1 = f1;
        this.f2 = f2;
        this.f3 = f3;
        this.f4 = f4;
    }

    @Override
    public Object4 clone() throws CloneNotSupportedException {
        return (Object4) super.clone();
    }
}
