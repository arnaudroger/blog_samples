/*
 * Copyright (c) 2014, Oracle America, Inc.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 *  * Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 *
 *  * Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 *  * Neither the name of Oracle nor the names of its contributors may be used
 *    to endorse or promote products derived from this software without
 *    specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
 * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF
 * THE POSSIBILITY OF SUCH DAMAGE.
 */

package com.github.arnaudroger;

import org.openjdk.jmh.annotations.Benchmark;
import org.openjdk.jmh.annotations.Level;
import org.openjdk.jmh.annotations.Param;
import org.openjdk.jmh.annotations.Scope;
import org.openjdk.jmh.annotations.Setup;
import org.openjdk.jmh.annotations.State;

import java.util.ArrayList;
import java.util.Random;

/*

Benchmark                       (size)  Mode  Cnt        Score        Error  Units
ArrayListRandomAccess.testGet       10  avgt   20       38.885 ±      0.284  ns/op
ArrayListRandomAccess.testGet     1000  avgt   20       39.319 ±      0.537  ns/op
ArrayListRandomAccess.testGet  1000000  avgt   20      198.978 ±      2.114  ns/op
ArrayRandomAccess.testGet           10  avgt   20       39.020 ±      0.121  ns/op
ArrayRandomAccess.testGet         1000  avgt   20       38.944 ±      0.277  ns/op
ArrayRandomAccess.testGet      1000000  avgt   20       81.533 ±      4.107  ns/op
ArrayListSeqAccess.testGet          10  avgt   20       60.639 ±      0.377  ns/op
ArrayListSeqAccess.testGet        1000  avgt   20     5195.156 ±     38.627  ns/op
ArrayListSeqAccess.testGet     1000000  avgt   20  4960493.702 ±  35859.178  ns/op
ArraySeqAccess.testGet              10  avgt   20       31.952 ±      0.205  ns/op
ArraySeqAccess.testGet            1000  avgt   20     3009.171 ±     23.646  ns/op
ArraySeqAccess.testGet         1000000  avgt   20  3311657.793 ± 283328.548  ns/op

 */
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
    //@CompilerControl(CompilerControl.Mode.DONT_INLINE)
    public long testGet() {
        return data.get(index);
    }

}
