package com.github.arnaudroger;

import org.openjdk.jmh.annotations.Benchmark;
import org.openjdk.jmh.annotations.Param;
import org.openjdk.jmh.annotations.Scope;
import org.openjdk.jmh.annotations.Setup;
import org.openjdk.jmh.annotations.State;
import org.openjdk.jmh.infra.Blackhole;

import java.util.ArrayList;

@State(Scope.Benchmark)
public class Seq2ListAccess {

    @Param({"10", "1000", "1000000"})
    int size;
    
    ArrayList<Long> data;
    
    @Setup
    public void setUp() {
        data = Data.dataArrayList(size);
    }
    

    @Benchmark
    public long testIndexed() {
        ArrayList<Long> data = this.data;
        int size = data.size();
        long total = 0;
        for(int i = 0; i < size; i++) {
            total += data.get(i);
        }
        return total;
    }
}
