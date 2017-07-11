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
import org.openjdk.jmh.annotations.Scope;
import org.openjdk.jmh.annotations.Setup;
import org.openjdk.jmh.annotations.State;

import java.util.Random;
/*
Benchmark                        (size)   Mode  Cnt          Score         Error  Units
ByteArrayCopyVsClone.testClone       10  thrpt   50  100896747.454 ± 1729920.846  ops/s
ByteArrayCopyVsClone.testClone     1000  thrpt   50    7370269.165 ±   63261.409  ops/s
ByteArrayCopyVsClone.testClone  1000000  thrpt   50       7362.447 ±      53.877  ops/s
ByteArrayCopyVsClone.testCopy        10  thrpt   50   90550187.015 ±  771820.006  ops/s
ByteArrayCopyVsClone.testCopy      1000  thrpt   50    7367758.809 ±   46437.526  ops/s
ByteArrayCopyVsClone.testCopy   1000000  thrpt   50       7358.339 ±      56.710  ops/s
IntArrayCopyVsClone.testClone        10  thrpt   50   94945414.101 ± 1105861.642  ops/s
IntArrayCopyVsClone.testClone      1000  thrpt   50    2039089.366 ±   13736.959  ops/s
IntArrayCopyVsClone.testClone   1000000  thrpt   50       1902.514 ±      13.242  ops/s
IntArrayCopyVsClone.testCopy         10  thrpt   50   84674662.259 ±  762428.313  ops/s
IntArrayCopyVsClone.testCopy       1000  thrpt   50    2015599.310 ±   12426.249  ops/s
IntArrayCopyVsClone.testCopy    1000000  thrpt   50       1905.864 ±      12.032  ops/s
LongArrayCopyVsClone.testClone       10  thrpt   50   81516755.382 ± 1085541.049  ops/s
LongArrayCopyVsClone.testClone     1000  thrpt   50    1039328.749 ±    9914.594  ops/s
LongArrayCopyVsClone.testClone  1000000  thrpt   50        881.470 ±       7.142  ops/s
LongArrayCopyVsClone.testCopy        10  thrpt   50   72229749.943 ± 1076774.321  ops/s
LongArrayCopyVsClone.testCopy      1000  thrpt   50    1036887.286 ±    8014.603  ops/s
LongArrayCopyVsClone.testCopy   1000000  thrpt   50        877.399 ±      10.275  ops/s
ObjectCopyVsClone.testClone         N/A  thrpt   50   48961576.131 ±  505760.781  ops/s
ObjectCopyVsClone.testCopy          N/A  thrpt   50   34740357.835 ±  361168.989  ops/s
*/
@State(Scope.Benchmark)
public class ObjectCopyVsClone {


    private Object32Clonable original32;
    private Object16Clonable original16;
    private Object8Clonable original8;
    private Object4Clonable original4;
    
    @Setup
    public void setUp() {
        Random r = new Random();
        original32 = new Object32Clonable(
                r.nextInt(), r.nextInt(), r.nextInt(), r.nextInt(), r.nextInt(), r.nextInt(), r.nextInt(), r.nextInt(),
                r.nextInt(), r.nextInt(), r.nextInt(), r.nextInt(), r.nextInt(), r.nextInt(), r.nextInt(), r.nextInt(),
                r.nextInt(), r.nextInt(), r.nextInt(), r.nextInt(), r.nextInt(), r.nextInt(), r.nextInt(), r.nextInt(),
                r.nextInt(), r.nextInt(), r.nextInt(), r.nextInt(), r.nextInt(), r.nextInt(), r.nextInt(), r.nextInt()
                );
        original16 = new Object16Clonable(
                r.nextInt(), r.nextInt(), r.nextInt(), r.nextInt(), r.nextInt(), r.nextInt(), r.nextInt(), r.nextInt(),
                r.nextInt(), r.nextInt(), r.nextInt(), r.nextInt(), r.nextInt(), r.nextInt(), r.nextInt(), r.nextInt()
        );
        original8 = new Object8Clonable(
                r.nextInt(), r.nextInt(), r.nextInt(), r.nextInt(), r.nextInt(), r.nextInt(), r.nextInt(), r.nextInt()
        );
        original4 = new Object4Clonable(
                r.nextInt(), r.nextInt(), r.nextInt(), r.nextInt()
        );
    }

    @Benchmark
    @CompilerControl(CompilerControl.Mode.DONT_INLINE)
    public Object32Clonable testCopy32() {
        return new Object32Clonable(original32);
    }

    @Benchmark
    @CompilerControl(CompilerControl.Mode.DONT_INLINE)
    public Object32Clonable testClone32() throws CloneNotSupportedException {
        return original32.clone();
    }


    @Benchmark
    @CompilerControl(CompilerControl.Mode.DONT_INLINE)
    public int testCopy32EA() {
        return new Object32Clonable(original32).f29;
    }

    @Benchmark
    @CompilerControl(CompilerControl.Mode.DONT_INLINE)
    public int testClone32EA() throws CloneNotSupportedException {
        return original32.clone().f29;
    }

    @Benchmark
    @CompilerControl(CompilerControl.Mode.DONT_INLINE)
    public Object16Clonable testCopy16() {
        return new Object16Clonable(original16);
    }

    @Benchmark
    @CompilerControl(CompilerControl.Mode.DONT_INLINE)
    public Object16Clonable testClone16() throws CloneNotSupportedException {
        return original16.clone();
    }

    @Benchmark
    @CompilerControl(CompilerControl.Mode.DONT_INLINE)
    public Object8Clonable testCopy8() {
        return new Object8Clonable(original8);
    }

    @Benchmark
    @CompilerControl(CompilerControl.Mode.DONT_INLINE)
    public Object8Clonable testClone8() throws CloneNotSupportedException {
        return original8.clone();
    }

    @Benchmark
    @CompilerControl(CompilerControl.Mode.DONT_INLINE)
    public Object4Clonable testCopy4() {
        return new Object4Clonable(original4);
    }

    @Benchmark
    @CompilerControl(CompilerControl.Mode.DONT_INLINE)
    public Object4Clonable testClone4() throws CloneNotSupportedException {
        return original4.clone();
    }

    public static class Object32Clonable implements Cloneable {
        
        public final int f1;
        public final int f2;
        public final int f3;
        public final int f4;
        public final int f5;
        public final int f6;
        public final int f7;
        public final int f8;
        public final int f9;
        public final int f10;
        public final int f11;
        public final int f12;
        public final int f13;
        public final int f14;
        public final int f15;
        public final int f16;
        public final int f17;
        public final int f18;
        public final int f19;
        public final int f20;
        public final int f21;
        public final int f22;
        public final int f23;
        public final int f24;
        public final int f25;
        public final int f26;
        public final int f27;
        public final int f28;
        public final int f29;
        public final int f30;
        public final int f31;
        public final int f32;

        public Object32Clonable(Object32Clonable o) {
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
            this.f17 = o.f17;
            this.f18 = o.f18;
            this.f19 = o.f19;
            this.f20 = o.f20;
            this.f21 = o.f21;
            this.f22 = o.f22;
            this.f23 = o.f23;
            this.f24 = o.f24;
            this.f25 = o.f25;
            this.f26 = o.f26;
            this.f27 = o.f27;
            this.f28 = o.f28;
            this.f29 = o.f29;
            this.f30 = o.f30;
            this.f31 = o.f31;
            this.f32 = o.f32;
        }

        public Object32Clonable(int f1, int f2, int f3, int f4, int f5, int f6, int f7, int f8, int f9, int f10, int f11, int f12, int f13, int f14, int f15, int f16, int f17,int f18, int f19, int f20, int f21, int f22, int f23, int f24, int f25, int f26, int f27, int f28, int f29, int f30, int f31, int f32) {
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
            this.f17 = f17;
            this.f18 = f18;
            this.f19 = f19;
            this.f20 = f20;
            this.f21 = f21;
            this.f22 = f22;
            this.f23 = f23;
            this.f24 = f24;
            this.f25 = f25;
            this.f26 = f26;
            this.f27 = f27;
            this.f28 = f28;
            this.f29 = f29;
            this.f30 = f30;
            this.f31 = f31;
            this.f32 = f32;
        }

        @Override
        public Object32Clonable clone() throws CloneNotSupportedException {
            return (Object32Clonable) super.clone();
        }
    }

    public static class Object16Clonable implements Cloneable {

        public final int f1;
        public final int f2;
        public final int f3;
        public final int f4;
        public final int f5;
        public final int f6;
        public final int f7;
        public final int f8;
        public final int f9;
        public final int f10;
        public final int f11;
        public final int f12;
        public final int f13;
        public final int f14;
        public final int f15;
        public final int f16;


        public Object16Clonable(Object16Clonable o) {
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

        public Object16Clonable(int f1, int f2, int f3, int f4, int f5, int f6, int f7, int f8, int f9, int f10, int f11, int f12, int f13, int f14, int f15, int f16) {
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
        public Object16Clonable clone() throws CloneNotSupportedException {
            return (Object16Clonable) super.clone();
        }
    }


    public static class Object8Clonable implements Cloneable {

        public final int f1;
        public final int f2;
        public final int f3;
        public final int f4;
        public final int f5;
        public final int f6;
        public final int f7;
        public final int f8;



        public Object8Clonable(Object8Clonable o) {
            this.f1 = o.f1;
            this.f2 = o.f2;
            this.f3 = o.f3;
            this.f4 = o.f4;
            this.f5 = o.f5;
            this.f6 = o.f6;
            this.f7 = o.f7;
            this.f8 = o.f8;


        }

        public Object8Clonable(int f1, int f2, int f3, int f4, int f5, int f6, int f7, int f8) {
            this.f1 = f1;
            this.f2 = f2;
            this.f3 = f3;
            this.f4 = f4;
            this.f5 = f5;
            this.f6 = f6;
            this.f7 = f7;
            this.f8 = f8;


        }

        @Override
        public Object8Clonable clone() throws CloneNotSupportedException {
            return (Object8Clonable) super.clone();
        }
    }


    public static class Object4Clonable implements Cloneable {

        public final int f1;
        public final int f2;
        public final int f3;
        public final int f4;




        public Object4Clonable(Object4Clonable o) {
            this.f1 = o.f1;
            this.f2 = o.f2;
            this.f3 = o.f3;
            this.f4 = o.f4;
        }

        public Object4Clonable(int f1, int f2, int f3, int f4) {
            this.f1 = f1;
            this.f2 = f2;
            this.f3 = f3;
            this.f4 = f4;
        }

        @Override
        public Object4Clonable clone() throws CloneNotSupportedException {
            return (Object4Clonable) super.clone();
        }
    }
}
