package com.github.arnaudroger;

import org.openjdk.jmh.annotations.Benchmark;
import org.openjdk.jmh.annotations.CompilerControl;
import org.openjdk.jmh.annotations.Level;
import org.openjdk.jmh.annotations.Param;
import org.openjdk.jmh.annotations.Scope;
import org.openjdk.jmh.annotations.Setup;
import org.openjdk.jmh.annotations.State;
import org.openjdk.jmh.infra.Blackhole;

import java.util.ArrayList;
import java.util.Random;

@State(Scope.Benchmark)
public class SeqListAccess {

    @Param({"10", "1000", "1000000"})
    int size;
    
    ArrayList<Long> data;
    
    @Setup
    public void setUp() {
        data = Data.dataArrayList(size);
    }
    
    @Benchmark
    public void testNewForEach(Blackhole b) {
        data.forEach(b::consume);
    }

    @Benchmark
    public void testClassicForEach(Blackhole b) {
        for(Long l : data) {
            b.consume(l);
        }
    }


    @Benchmark
    public void testIndexed(Blackhole b) {
        ArrayList<Long> data = this.data;
        int size = data.size();
        for(int i = 0; i < size; i++) {
            b.consume(data.get(i));
        }
    }
}
