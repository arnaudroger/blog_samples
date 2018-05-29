package com.github.arnaudroger;

import org.openjdk.jmh.annotations.Benchmark;
import org.openjdk.jmh.annotations.Param;
import org.openjdk.jmh.annotations.Scope;
import org.openjdk.jmh.annotations.Setup;
import org.openjdk.jmh.annotations.State;
import org.openjdk.jmh.infra.Blackhole;

@State(Scope.Benchmark)
public class Seq2ArrayAccess {

    @Param({"10", "1000", "1000000"})
    int size;
    
    Long[] data;
    
    @Setup
    public void setUp() {
        data = Data.dataArray(size);
    }
    
    @Benchmark
    public long testGet() {
        long total = 0;
        for(Long l : data) {
            total += l;
        }
        return total;
    }

}
