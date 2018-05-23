package com.github.arnaudroger;

import java.util.ArrayList;
import java.util.Random;

public class Data {
    
    public static Long[] dataArray(int s) {
        Random r = new Random();
        Long[] a = new Long[s];
        
        for(int i = 0; i < a.length; i++) {
            a[i] = r.nextLong();
        }
        
        return a;
    }
    
    public static ArrayList<Long> dataArrayList(int s) {
        Random r = new Random();
        ArrayList<Long> array = new ArrayList<>(s);
        for(int i = 0; i < s; i++) {
            array.add(r.nextLong());
        }
        return array;
    }
}
