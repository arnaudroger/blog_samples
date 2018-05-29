package com.github.arnaudroger;

import org.openjdk.jmh.annotations.Benchmark;
import org.openjdk.jmh.annotations.Level;
import org.openjdk.jmh.annotations.Param;
import org.openjdk.jmh.annotations.Scope;
import org.openjdk.jmh.annotations.Setup;
import org.openjdk.jmh.annotations.State;

import java.util.ArrayList;
import java.util.Random;

@State(Scope.Benchmark)
public class Random2ListAccess {

    @Param({"10", "1000", "1000000"})
    int size;
    
    ArrayList<Long> data;
    Random random;
    int index;
    
    @Setup
    public void setUp() {
        data = Data.dataArrayList(size);
        random = new Random();
    }
    
    @Setup(Level.Invocation)
    public void nextIndex() {
        index = random.nextInt(size);
    }
    
    @Benchmark
    public long testGet() {
        return data.get(index);
    }

}
