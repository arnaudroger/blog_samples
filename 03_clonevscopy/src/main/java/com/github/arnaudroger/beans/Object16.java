package com.github.arnaudroger.beans;

public class Object16 implements Cloneable {

    public int f1;
    public int f2;
    public int f3;
    public int f4;
    public int f5;
    public int f6;
    public int f7;
    public int f8;
    public int f9;
    public int f10;
    public int f11;
    public int f12;
    public int f13;
    public int f14;
    public int f15;
    public int f16;


    public Object16(Object16 o) {
        this.f1 = o.f1;
        this.f2 = o.f2;
        this.f3 = o.f3;
        this.f4 = o.f4;
        this.f5 = o.f5;
        this.f6 = o.f6;
        this.f7 = o.f7;
        this.f8 = o.f8;
        this.f9 = o.f9;
        this.f10 = o.f10;
        this.f11 = o.f11;
        this.f12 = o.f12;
        this.f13 = o.f13;
        this.f14 = o.f14;
        this.f15 = o.f15;
        this.f16 = o.f16;

    }

    public Object16(int f1, int f2, int f3, int f4, int f5, int f6, int f7, int f8, int f9, int f10, int f11, int f12, int f13, int f14, int f15, int f16) {
        this.f1 = f1;
        this.f2 = f2;
        this.f3 = f3;
        this.f4 = f4;
        this.f5 = f5;
        this.f6 = f6;
        this.f7 = f7;
        this.f8 = f8;
        this.f9 = f9;
        this.f10 = f10;
        this.f11 = f11;
        this.f12 = f12;
        this.f13 = f13;
        this.f14 = f14;
        this.f15 = f15;
        this.f16 = f16;

    }

    @Override
    public Object16 clone() {
        try {
            return (Object16) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new Error(e);
        }
    }
}
