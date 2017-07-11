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
import org.openjdk.jmh.annotations.CompilerControl;
import org.openjdk.jmh.annotations.Param;
import org.openjdk.jmh.annotations.Scope;
import org.openjdk.jmh.annotations.Setup;
import org.openjdk.jmh.annotations.State;

import java.util.Arrays;
import java.util.Random;

/*
Benchmark                    (size)   Mode  Cnt         Score         Error  Units
IntArrayCopyVsClone.testClone       10  thrpt   10  86291931.589 ± 1725242.999  ops/s
IntArrayCopyVsClone.testClone     1000  thrpt   10   1944377.485 ±   42065.468  ops/s
IntArrayCopyVsClone.testClone  1000000  thrpt   10      1773.450 ±      36.886  ops/s
IntArrayCopyVsClone.testCopy        10  thrpt   10  89618909.621 ± 2741652.816  ops/s
IntArrayCopyVsClone.testCopy      1000  thrpt   10   1953156.647 ±   31129.857  ops/s
IntArrayCopyVsClone.testCopy   1000000  thrpt   10      1782.918 ±      41.065  ops/s

 */
@State(Scope.Benchmark)
public class ByteArrayCopyVsClone {

    @Param({"10", "1000", "1000000"})
    int size;
    
    byte[] original;
    
    @Setup
    public void setUp() {
        original = new byte[size];
        Random r = new Random();
        r.nextBytes(original);
    }
    
    @Benchmark
    @CompilerControl(CompilerControl.Mode.DONT_INLINE)
    public byte[] testCopy() {
        return Arrays.copyOf(original, size);
    }

    @Benchmark
    @CompilerControl(CompilerControl.Mode.DONT_INLINE)
    public byte[] testClone() {
        return original.clone();
    }

}
