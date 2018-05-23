# JMH version: 1.19
# VM version: JDK 1.8.0_131, VM 25.131-b11
# VM invoker: /usr/lib/jvm/java-8-oracle/jre/bin/java
# VM options: <none>
# Warmup: 10 iterations, 1 s each
# Measurement: 10 iterations, 1 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.github.arnaudroger.RandomArrayAccess.testGet
# Parameters: (size = 1000)

# Run progress: 0.00% complete, ETA 00:00:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 25.347 ns/op
# Warmup Iteration   2: 21.946 ns/op
# Warmup Iteration   3: 20.779 ns/op
# Warmup Iteration   4: 20.736 ns/op
# Warmup Iteration   5: 20.739 ns/op
# Warmup Iteration   6: 20.722 ns/op
# Warmup Iteration   7: 20.794 ns/op
# Warmup Iteration   8: 20.722 ns/op
# Warmup Iteration   9: 20.845 ns/op
# Warmup Iteration  10: 20.781 ns/op
Iteration   1: 20.811 ns/op
Iteration   2: 20.872 ns/op
Iteration   3: 20.726 ns/op
Iteration   4: 20.693 ns/op
Iteration   5: 20.571 ns/op
Iteration   6: 20.840 ns/op
Iteration   7: 20.792 ns/op
Iteration   8: 20.773 ns/op
Iteration   9: 20.704 ns/op
Iteration  10: 20.730 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.RandomArrayAccess.testGet":
  20.751 ±(99.9%) 0.131 ns/op [Average]
  (min, avg, max) = (20.571, 20.751, 20.872), stdev = 0.087
  CI (99.9%): [20.620, 20.882] (assumes normal distribution)

Secondary result "com.github.arnaudroger.RandomArrayAccess.testGet:·asm":
PrintAssembly processed: 173501 total address lines.
Perf output processed (skipped 13.335 seconds):
 Column 1: cycles (10322 events)
 Column 2: instructions (10284 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub, version 545 (299 bytes) 

                                                                    ; - com.github.arnaudroger.RandomArrayAccess::nextIndex@9 (line 63)
                                                                    ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
                      0x00007fbe29242ab3: test   %r10d,%r10d
                      0x00007fbe29242ab6: je     0x00007fbe29242ca3
                      0x00007fbe29242abc: mov    %r11d,%eax
                      0x00007fbe29242abf: cmp    $0x80000000,%eax
                  ╭   0x00007fbe29242ac4: jne    0x00007fbe29242ace
                  │   0x00007fbe29242ac6: xor    %edx,%edx
                  │   0x00007fbe29242ac8: cmp    $0xffffffff,%r10d
                  │╭  0x00007fbe29242acc: je     0x00007fbe29242ad2
  0.43%           ↘│  0x00007fbe29242ace: cltd   
                   │  0x00007fbe29242acf: idiv   %r10d              ;*irem
                   │                                                ; - java.util.Random::nextInt@52 (line 396)
                   │                                                ; - com.github.arnaudroger.RandomArrayAccess::nextIndex@9 (line 63)
                   │                                                ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
  0.72%            ↘  0x00007fbe29242ad2: sub    %edx,%r11d
  0.36%               0x00007fbe29242ad5: add    %r10d,%r11d
  0.01%               0x00007fbe29242ad8: dec    %r11d
                      0x00007fbe29242adb: test   %r11d,%r11d
                      0x00007fbe29242ade: jl     0x00007fbe29242c44
                      0x00007fbe29242ae4: mov    %r14,0x18(%rsp)
  0.28%               0x00007fbe29242ae9: mov    %r13,(%rsp)
                      0x00007fbe29242aed: mov    %rbx,0x8(%rsp)     ;*ifge
                                                                    ; - java.util.Random::nextInt@58 (line 396)
                                                                    ; - com.github.arnaudroger.RandomArrayAccess::nextIndex@9 (line 63)
                                                                    ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
                      0x00007fbe29242af2: mov    %edx,0x10(%r8)
                      0x00007fbe29242af6: movb   $0x1,0x136(%r8)
  0.34%               0x00007fbe29242afe: mov    %r12d,0x12c(%r8)
                      0x00007fbe29242b05: mov    %r8,0x70(%rsp)
                      0x00007fbe29242b0a: lock addl $0x0,(%rsp)     ;*invokevirtual putIntVolatile
                                                                    ; - java.util.concurrent.atomic.AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl::set@14 (line 499)
                                                                    ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@66 (line 430)
  8.62%    8.96%      0x00007fbe29242b0f: movabs $0x7fbe3fc46670,%r10
                      0x00007fbe29242b19: callq  *%r10              ;*invokestatic nanoTime
                                                                    ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@140 (line 438)
  0.36%               0x00007fbe29242b1c: mov    %rax,0x10(%rsp)
                      0x00007fbe29242b21: mov    0x70(%rsp),%r10
                      0x00007fbe29242b26: mov    0x14(%r10),%r8d    ;*getfield data
                                                                    ; - com.github.arnaudroger.RandomArrayAccess::testGet@1 (line 69)
                                                                    ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@149 (line 439)
  0.41%    0.04%      0x00007fbe29242b2a: mov    0x10(%r10),%r10d   ;*getfield index
                                                                    ; - com.github.arnaudroger.RandomArrayAccess::testGet@5 (line 69)
                                                                    ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@149 (line 439)
  0.30%    0.04%      0x00007fbe29242b2e: mov    0xc(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x00007fbe29242fad
  2.44%    6.40%      0x00007fbe29242b33: cmp    %r11d,%r10d
                      0x00007fbe29242b36: jae    0x00007fbe29242cd9
  0.60%    2.10%      0x00007fbe29242b3c: lea    (%r12,%r8,8),%r11
                      0x00007fbe29242b40: mov    0x10(%r11,%r10,4),%r11d
  0.01%    0.03%      0x00007fbe29242b45: mov    %r11,%rdx
                      0x00007fbe29242b48: shl    $0x3,%rdx          ;*aaload
                                                                    ; - com.github.arnaudroger.RandomArrayAccess::testGet@8 (line 69)
                                                                    ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@149 (line 439)
  0.39%    1.34%      0x00007fbe29242b4c: mov    0x18(%rsp),%rsi
                      0x00007fbe29242b51: xchg   %ax,%ax
                      0x00007fbe29242b53: callq  0x00007fbe29046020  ; OopMap{[96]=Oop [104]=Oop [112]=Oop [24]=Oop off=472}
                                                                    ;*invokevirtual consume
                                                                    ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@152 (line 439)
                                                                    ;   {optimized virtual_call}
                      0x00007fbe29242b58: movabs $0x7fbe3fc46670,%r10
                      0x00007fbe29242b62: callq  *%r10              ;*invokestatic nanoTime
                                                                    ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@157 (line 440)
  0.34%               0x00007fbe29242b65: mov    %rax,%r11
                      0x00007fbe29242b68: mov    0x70(%rsp),%r8
                      0x00007fbe29242b6d: xor    %eax,%eax
  0.35%    0.01%      0x00007fbe29242b6f: mov    $0x1,%r10d
                      0x00007fbe29242b75: lock cmpxchg %r10d,0x130(%r8)
  6.86%   15.73%      0x00007fbe29242b7e: sete   %r10b
                      0x00007fbe29242b82: movzbl %r10b,%r10d        ;*invokevirtual compareAndSwapInt
                                                                    ; - java.util.concurrent.atomic.AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl::compareAndSet@15 (line 489)
                                                                    ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@173 (line 441)
  0.35%               0x00007fbe29242b86: sub    0x10(%rsp),%r11
                      0x00007fbe29242b8b: mov    0x8(%rsp),%r8
                      0x00007fbe29242b90: add    %r11,%r8           ;*ladd
                                                                    ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@163 (line 440)
                      0x00007fbe29242b93: mov    %r8,%rbx
  0.32%               0x00007fbe29242b96: test   %r10d,%r10d
                      0x00007fbe29242b99: je     0x00007fbe29242ea5  ;*ifeq
                                                                    ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@176 (line 441)
                      0x00007fbe29242b9f: mov    0x60(%rsp),%r10
                      0x00007fbe29242ba4: movzbl 0x95(%r10),%r10d   ;*getfield isFailing
                                                                    ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@180 (line 443)
                      0x00007fbe29242bac: test   %r10d,%r10d
                      0x00007fbe29242baf: jne    0x00007fbe29242ecd  ;*ifeq
                                                                    ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@183 (line 443)
  0.45%               0x00007fbe29242bb5: mov    0x70(%rsp),%r8
                      0x00007fbe29242bba: movzbl 0x136(%r8),%r11d   ;*getfield readyInvocation
                                                                    ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@196 (line 444)
                      0x00007fbe29242bc2: test   %r11d,%r11d
                      0x00007fbe29242bc5: je     0x00007fbe29242ef5
                      0x00007fbe29242bcb: mov    %r12b,0x136(%r8)
  0.28%               0x00007fbe29242bd2: mov    %r12d,0x130(%r8)
                      0x00007fbe29242bd9: lock addl $0x0,(%rsp)     ;*invokevirtual putIntVolatile
                                                                    ; - java.util.concurrent.atomic.AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl::set@14 (line 499)
                                                                    ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@214 (line 451)
  7.13%    5.46%      0x00007fbe29242bde: mov    0x60(%rsp),%r10
                      0x00007fbe29242be3: movzbl 0x94(%r10),%r11d   ;*getfield isDone
                                                                    ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@295 (line 460)
                      0x00007fbe29242beb: mov    (%rsp),%r13
  5.20%    0.01%      0x00007fbe29242bef: add    $0x1,%r13          ; OopMap{r8=Oop [96]=Oop [104]=Oop [24]=Oop off=627}
                                                                    ;*ifeq
                                                                    ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@298 (line 460)
  0.31%               0x00007fbe29242bf3: test   %eax,0x17d15407(%rip)        # 0x00007fbe40f58000
                                                                    ;   {poll}
  0.02%               0x00007fbe29242bf9: test   %r11d,%r11d
                      0x00007fbe29242bfc: je     0x00007fbe292429db  ;*ifeq
                                                                    ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@298 (line 460)
                      0x00007fbe29242c02: movabs $0x7fbe3fc46670,%r10
                      0x00007fbe29242c0c: callq  *%r10              ;*invokestatic nanoTime
                                                                    ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@302 (line 461)
                      0x00007fbe29242c0f: mov    0x68(%rsp),%r10
                      0x00007fbe29242c14: mov    %rbx,0x20(%r10)    ;*putfield realTime
                                                                    ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@311 (line 462)
                      0x00007fbe29242c18: mov    %rax,0x30(%r10)    ;*putfield stopTime
....................................................................................................
 36.86%   40.12%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [vdso], [unknown] (16 bytes) 

 <no assembly is recorded, native region>
....................................................................................................
 23.29%   36.90%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub, version 545 (201 bytes) 

                     0x00007fbe292429bd: mov    0x60(%rsp),%r10
                     0x00007fbe292429c2: test   %r10,%r10
                     0x00007fbe292429c5: je     0x00007fbe29242f1d
                     0x00007fbe292429cb: test   %r14,%r14
                     0x00007fbe292429ce: je     0x00007fbe29242f1d
                     0x00007fbe292429d4: xor    %r13d,%r13d
                     0x00007fbe292429d7: xor    %ebx,%ebx
                  ╭  0x00007fbe292429d9: jmp    0x00007fbe292429e0
                  │  0x00007fbe292429db: mov    0x18(%rsp),%r14
                  ↘  0x00007fbe292429e0: xor    %eax,%eax
  0.36%              0x00007fbe292429e2: mov    $0x1,%r11d
  0.02%              0x00007fbe292429e8: lock cmpxchg %r11d,0x12c(%r8)
  6.17%    2.48%     0x00007fbe292429f1: sete   %r10b
                     0x00007fbe292429f5: movzbl %r10b,%r10d        ;*invokevirtual compareAndSwapInt
                                                                   ; - java.util.concurrent.atomic.AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl::compareAndSet@15 (line 489)
                                                                   ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@20 (line 419)
  0.31%    0.41%     0x00007fbe292429f9: test   %r10d,%r10d
                     0x00007fbe292429fc: je     0x00007fbe29242d75  ;*ifeq
                                                                   ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@23 (line 419)
                     0x00007fbe29242a02: mov    0x60(%rsp),%r10
                     0x00007fbe29242a07: movzbl 0x95(%r10),%r10d   ;*getfield isFailing
                                                                   ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@27 (line 421)
  0.53%              0x00007fbe29242a0f: test   %r10d,%r10d
                     0x00007fbe29242a12: jne    0x00007fbe29242dad  ;*ifeq
                                                                   ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@30 (line 421)
  0.43%              0x00007fbe29242a18: movzbl 0x136(%r8),%r11d   ;*getfield readyInvocation
                                                                   ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@43 (line 422)
                     0x00007fbe29242a20: test   %r11d,%r11d
                     0x00007fbe29242a23: jne    0x00007fbe29242d3d  ;*ifne
                                                                   ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@46 (line 422)
                     0x00007fbe29242a29: mov    0x18(%r8),%r11d    ;*getfield random
                                                                   ; - com.github.arnaudroger.RandomArrayAccess::nextIndex@2 (line 63)
                                                                   ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
                     0x00007fbe29242a2d: mov    0xc(%r8),%r10d     ;*getfield size
                                                                   ; - com.github.arnaudroger.RandomArrayAccess::nextIndex@6 (line 63)
                                                                   ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
  0.40%              0x00007fbe29242a31: mov    0x8(%r12,%r11,8),%r9d  ; implicit exception: dispatches to 0x00007fbe29242f41
                     0x00007fbe29242a36: test   %r10d,%r10d
                     0x00007fbe29242a39: jle    0x00007fbe29242de5  ;*ifgt
                                                                   ; - java.util.Random::nextInt@1 (line 387)
                                                                   ; - com.github.arnaudroger.RandomArrayAccess::nextIndex@9 (line 63)
                                                                   ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
                     0x00007fbe29242a3f: cmp    $0xf8014b28,%r9d   ;   {metadata(&apos;java/util/Random&apos;)}
                     0x00007fbe29242a46: jne    0x00007fbe29242d01
                     0x00007fbe29242a4c: lea    (%r12,%r11,8),%r9  ;*invokevirtual next
                                                                   ; - java.util.Random::nextInt@17 (line 390)
                                                                   ; - com.github.arnaudroger.RandomArrayAccess::nextIndex@9 (line 63)
                                                                   ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
  0.29%              0x00007fbe29242a50: mov    0x18(%r9),%r11d    ;*getfield seed
                                                                   ; - java.util.Random::next@1 (line 200)
                                                                   ; - java.util.Random::nextInt@17 (line 390)
                                                                   ; - com.github.arnaudroger.RandomArrayAccess::nextIndex@9 (line 63)
                                                                   ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
                     0x00007fbe29242a54: mov    0x10(%r12,%r11,8),%rax  ;*invokevirtual compareAndSwapLong
                                                                   ; - java.util.concurrent.atomic.AtomicLong::compareAndSet@9 (line 147)
                                                                   ; - java.util.Random::next@32 (line 204)
                                                                   ; - java.util.Random::nextInt@17 (line 390)
                                                                   ; - com.github.arnaudroger.RandomArrayAccess::nextIndex@9 (line 63)
                                                                   ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
                                                                   ; implicit exception: dispatches to 0x00007fbe29242f79
                     0x00007fbe29242a59: mov    %rax,%rdi
                     0x00007fbe29242a5c: movabs $0x5deece66d,%rcx
  0.31%    0.06%     0x00007fbe29242a66: imul   %rcx,%rdi
                     0x00007fbe29242a6a: add    $0xb,%rdi          ;*ladd
                                                                   ; - java.util.Random::next@20 (line 203)
                                                                   ; - java.util.Random::nextInt@17 (line 390)
                                                                   ; - com.github.arnaudroger.RandomArrayAccess::nextIndex@9 (line 63)
                                                                   ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
                     0x00007fbe29242a6e: mov    %rdi,%rdx
                     0x00007fbe29242a71: movabs $0xffffffffffff,%rcx
  0.30%    0.11%     0x00007fbe29242a7b: and    %rcx,%rdx          ;*land
                                                                   ; - java.util.Random::next@24 (line 203)
                                                                   ; - java.util.Random::nextInt@17 (line 390)
                                                                   ; - com.github.arnaudroger.RandomArrayAccess::nextIndex@9 (line 63)
                                                                   ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
                     0x00007fbe29242a7e: lock cmpxchg %rdx,0x10(%r12,%r11,8)
  6.07%    7.69%     0x00007fbe29242a85: sete   %cl
                     0x00007fbe29242a88: movzbl %cl,%ecx           ;*invokevirtual compareAndSwapLong
                                                                   ; - java.util.concurrent.atomic.AtomicLong::compareAndSet@9 (line 147)
                                                                   ; - java.util.Random::next@32 (line 204)
                                                                   ; - java.util.Random::nextInt@17 (line 390)
                                                                   ; - com.github.arnaudroger.RandomArrayAccess::nextIndex@9 (line 63)
                                                                   ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
  0.24%    0.57%     0x00007fbe29242a8b: test   %ecx,%ecx
                     0x00007fbe29242a8d: je     0x00007fbe29242e21  ;*ifeq
                                                                   ; - java.util.Random::next@35 (line 204)
                                                                   ; - java.util.Random::nextInt@17 (line 390)
                                                                   ; - com.github.arnaudroger.RandomArrayAccess::nextIndex@9 (line 63)
                                                                   ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
                     0x00007fbe29242a93: shr    $0x11,%rdi
                     0x00007fbe29242a97: mov    %r10d,%ebp
                     0x00007fbe29242a9a: dec    %ebp               ;*isub
                                                                   ; - java.util.Random::nextInt@23 (line 391)
                                                                   ; - com.github.arnaudroger.RandomArrayAccess::nextIndex@9 (line 63)
                                                                   ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
  0.36%              0x00007fbe29242a9c: mov    %r10d,%ecx
                     0x00007fbe29242a9f: and    %ebp,%ecx          ;*iand
                                                                   ; - java.util.Random::nextInt@27 (line 392)
                                                                   ; - com.github.arnaudroger.RandomArrayAccess::nextIndex@9 (line 63)
                                                                   ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
                     0x00007fbe29242aa1: and    $0x7fffffff,%rdi
                     0x00007fbe29242aa8: mov    %edi,%r11d         ;*l2i  ; - java.util.Random::next@45 (line 205)
                                                                   ; - java.util.Random::nextInt@17 (line 390)
                                                                   ; - com.github.arnaudroger.RandomArrayAccess::nextIndex@9 (line 63)
                                                                   ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
  0.40%              0x00007fbe29242aab: test   %ecx,%ecx
                     0x00007fbe29242aad: je     0x00007fbe29242e6d  ;*ifne
                                                                   ; - java.util.Random::nextInt@28 (line 392)
                                                                   ; - com.github.arnaudroger.RandomArrayAccess::nextIndex@9 (line 63)
                                                                   ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
                     0x00007fbe29242ab3: test   %r10d,%r10d
                     0x00007fbe29242ab6: je     0x00007fbe29242ca3
                     0x00007fbe29242abc: mov    %r11d,%eax
....................................................................................................
 16.19%   11.32%  <total for region 3>

....[Hottest Regions]...............................................................................
 36.86%   40.12%         C2, level 4  com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub, version 545 (299 bytes) 
 23.29%   36.90%              [vdso]  [unknown] (16 bytes) 
 16.19%   11.32%         C2, level 4  com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub, version 545 (201 bytes) 
  4.15%    0.12%        libc-2.26.so  __clock_gettime (75 bytes) 
  3.52%    0.27%              [vdso]  [unknown] (44 bytes) 
  3.45%    1.40%           libjvm.so  _ZN2os13javaTimeNanosEv (46 bytes) 
  2.71%                       [vdso]  [unknown] (52 bytes) 
  1.70%    4.17%         C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 526 (71 bytes) 
  1.70%                       [vdso]  [unknown] (31 bytes) 
  1.39%    2.24%              [vdso]  [unknown] (31 bytes) 
  1.27%                       [vdso]  [unknown] (7 bytes) 
  0.86%    0.85%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.13%            [kernel.kallsyms]  [unknown] (39 bytes) 
  0.13%    0.16%           libjvm.so  _ZN10fileStream5writeEPKcm (29 bytes) 
  0.11%    0.05%   [kernel.kallsyms]  [unknown] (27 bytes) 
  0.05%    0.02%   [kernel.kallsyms]  [unknown] (50 bytes) 
  0.05%    0.03%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.04%    0.05%   [kernel.kallsyms]  [unknown] (8 bytes) 
  0.04%    0.05%   [kernel.kallsyms]  [unknown] (35 bytes) 
  0.04%    0.02%   [kernel.kallsyms]  [unknown] (50 bytes) 
  2.35%    2.25%  <...other 298 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 53.05%   51.44%         C2, level 4  com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub, version 545 
 33.87%   39.41%              [vdso]  [unknown] 
  4.15%    0.12%        libc-2.26.so  __clock_gettime 
  3.45%    1.40%           libjvm.so  _ZN2os13javaTimeNanosEv 
  2.50%    2.15%   [kernel.kallsyms]  [unknown] 
  1.70%    4.17%         C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 526 
  0.13%    0.17%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.08%    0.05%           libjvm.so  _ZN13xmlTextStream5writeEPKcm 
  0.08%    0.05%      hsdis-amd64.so  [unknown] 
  0.04%    0.02%  libpthread-2.26.so  __pthread_getspecific 
  0.04%    0.12%        libc-2.26.so  _IO_fwrite 
  0.04%    0.11%        libc-2.26.so  vfprintf 
  0.03%    0.03%        libc-2.26.so  _IO_fflush 
  0.03%    0.04%  libpthread-2.26.so  __pthread_enable_asynccancel 
  0.03%                    libjvm.so  _ZN13defaultStream5writeEPKcm 
  0.03%                    libjvm.so  _ZN9xmlStream5flushEv 
  0.03%                    libjvm.so  _ZN7Monitor5IWaitEP6Threadl 
  0.03%           libpthread-2.26.so  __pthread_disable_asynccancel 
  0.03%    0.11%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.02%    0.02%        libc-2.26.so  _IO_file_xsputn@@GLIBC_2.2.5 
  0.67%    0.28%  <...other 60 warm methods...>
....................................................................................................
100.00%   99.67%  <totals>

....[Distribution by Source]........................................................................
 54.75%   55.61%         C2, level 4
 33.87%   39.41%              [vdso]
  4.40%    0.63%        libc-2.26.so
  4.20%    2.03%           libjvm.so
  2.50%    2.15%   [kernel.kallsyms]
  0.14%    0.08%  libpthread-2.26.so
  0.08%    0.05%      hsdis-amd64.so
  0.07%    0.02%         interpreter
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:24

Benchmark                       (size)  Mode  Cnt   Score   Error  Units
RandomArrayAccess.testGet         1000  avgt   10  20.751 ± 0.131  ns/op
RandomArrayAccess.testGet:·asm    1000  avgt          NaN            ---
