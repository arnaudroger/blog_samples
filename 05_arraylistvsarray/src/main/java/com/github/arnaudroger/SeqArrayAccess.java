package com.github.arnaudroger;

import org.openjdk.jmh.annotations.Benchmark;
import org.openjdk.jmh.annotations.CompilerControl;
import org.openjdk.jmh.annotations.Level;
import org.openjdk.jmh.annotations.Param;
import org.openjdk.jmh.annotations.Scope;
import org.openjdk.jmh.annotations.Setup;
import org.openjdk.jmh.annotations.State;
import org.openjdk.jmh.infra.Blackhole;

import java.util.Random;

@State(Scope.Benchmark)
public class SeqArrayAccess {

    @Param({"10", "1000", "1000000"})
    int size;
    
    Long[] data;
    
    @Setup
    public void setUp() {
        data = Data.dataArray(size);
    }
    
    @Benchmark
    public void testGet(Blackhole b) {
        for(Long l : data) {
            b.consume(l);
        }
    }

}
