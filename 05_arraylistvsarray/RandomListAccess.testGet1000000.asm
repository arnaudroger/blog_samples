# JMH version: 1.19
# VM version: JDK 1.8.0_131, VM 25.131-b11
# VM invoker: /usr/lib/jvm/java-8-oracle/jre/bin/java
# VM options: <none>
# Warmup: 10 iterations, 1 s each
# Measurement: 10 iterations, 1 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.github.arnaudroger.RandomListAccess.testGet
# Parameters: (size = 1000000)

# Run progress: 0.00% complete, ETA 00:00:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 106.597 ns/op
# Warmup Iteration   2: 95.213 ns/op
# Warmup Iteration   3: 91.849 ns/op
# Warmup Iteration   4: 91.178 ns/op
# Warmup Iteration   5: 91.143 ns/op
# Warmup Iteration   6: 90.947 ns/op
# Warmup Iteration   7: 92.416 ns/op
# Warmup Iteration   8: 91.594 ns/op
# Warmup Iteration   9: 92.713 ns/op
# Warmup Iteration  10: 92.143 ns/op
Iteration   1: 93.217 ns/op
Iteration   2: 93.681 ns/op
Iteration   3: 96.068 ns/op
Iteration   4: 91.373 ns/op
Iteration   5: 91.738 ns/op
Iteration   6: 92.525 ns/op
Iteration   7: 92.527 ns/op
Iteration   8: 92.264 ns/op
Iteration   9: 91.549 ns/op
Iteration  10: 92.066 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.RandomListAccess.testGet":
  92.701 ±(99.9%) 2.092 ns/op [Average]
  (min, avg, max) = (91.373, 92.701, 96.068), stdev = 1.384
  CI (99.9%): [90.609, 94.793] (assumes normal distribution)

Secondary result "com.github.arnaudroger.RandomListAccess.testGet:·asm":
PrintAssembly processed: 174894 total address lines.
Perf output processed (skipped 13.494 seconds):
 Column 1: cycles (10297 events)
 Column 2: instructions (10282 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub, version 550 (572 bytes) 

                        0x00007f0a15245757: je     0x00007f0a15245d1e
                        0x00007f0a1524575d: mov    0x60(%rsp),%r10
                        0x00007f0a15245762: test   %r10,%r10
                        0x00007f0a15245765: je     0x00007f0a15245d1e
                        0x00007f0a1524576b: test   %r14,%r14
                        0x00007f0a1524576e: je     0x00007f0a15245d1e  ;*getstatic setupInvocationMutexUpdater
                                                                      ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@13 (line 419)
                        0x00007f0a15245774: xor    %r13d,%r13d
                        0x00007f0a15245777: xor    %ebx,%ebx
                  ╭     0x00007f0a15245779: jmpq   0x00007f0a152458c3
  0.17%           │  ↗  0x00007f0a1524577e: mov    %r14,0x18(%rsp)
  0.03%           │  │  0x00007f0a15245783: mov    %r13,(%rsp)
                  │  │  0x00007f0a15245787: mov    %rbx,0x8(%rsp)     ;*ifge
                  │  │                                                ; - java.util.Random::nextInt@58 (line 396)
                  │  │                                                ; - com.github.arnaudroger.RandomListAccess::nextIndex@9 (line 79)
                  │  │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
                  │  │  0x00007f0a1524578c: mov    %edx,0x10(%r8)
  0.12%           │  │  0x00007f0a15245790: movb   $0x1,0x136(%r8)
  0.01%           │  │  0x00007f0a15245798: mov    %r12d,0x12c(%r8)
  0.01%           │  │  0x00007f0a1524579f: mov    %r8,0x70(%rsp)
                  │  │  0x00007f0a152457a4: lock addl $0x0,(%rsp)     ;*invokevirtual putIntVolatile
                  │  │                                                ; - java.util.concurrent.atomic.AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl::set@14 (line 499)
                  │  │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@66 (line 430)
  4.76%    9.59%  │  │  0x00007f0a152457a9: movabs $0x7f0a2bb27670,%r10
                  │  │  0x00007f0a152457b3: callq  *%r10              ;*invokestatic nanoTime
                  │  │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@140 (line 438)
  0.20%           │  │  0x00007f0a152457b6: mov    %rax,0x10(%rsp)
                  │  │  0x00007f0a152457bb: mov    0x70(%rsp),%r10
                  │  │  0x00007f0a152457c0: mov    0x10(%r10),%r8d    ;*getfield index
                  │  │                                                ; - com.github.arnaudroger.RandomListAccess::testGet@5 (line 85)
                  │  │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@149 (line 439)
  0.38%    0.01%  │  │  0x00007f0a152457c4: mov    0x14(%r10),%r10d   ;*getfield data
                  │  │                                                ; - com.github.arnaudroger.RandomListAccess::testGet@1 (line 85)
                  │  │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@149 (line 439)
                  │  │  0x00007f0a152457c8: mov    0x10(%r12,%r10,8),%r11d  ;*getfield size
                  │  │                                                ; - java.util.ArrayList::rangeCheck@2 (line 652)
                  │  │                                                ; - java.util.ArrayList::get@2 (line 429)
                  │  │                                                ; - com.github.arnaudroger.RandomListAccess::testGet@8 (line 85)
                  │  │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@149 (line 439)
                  │  │                                                ; implicit exception: dispatches to 0x00007f0a15245dd1
  1.02%    5.04%  │  │  0x00007f0a152457cd: cmp    %r11d,%r8d
                  │  │  0x00007f0a152457d0: jge    0x00007f0a15245c55  ;*if_icmplt
                  │  │                                                ; - java.util.ArrayList::rangeCheck@5 (line 652)
                  │  │                                                ; - java.util.ArrayList::get@2 (line 429)
                  │  │                                                ; - com.github.arnaudroger.RandomListAccess::testGet@8 (line 85)
                  │  │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@149 (line 439)
  0.37%    1.46%  │  │  0x00007f0a152457d6: mov    0x14(%r12,%r10,8),%r11d  ;*getfield elementData
                  │  │                                                ; - java.util.ArrayList::elementData@1 (line 418)
                  │  │                                                ; - java.util.ArrayList::get@7 (line 431)
                  │  │                                                ; - com.github.arnaudroger.RandomListAccess::testGet@8 (line 85)
                  │  │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@149 (line 439)
                  │  │  0x00007f0a152457db: mov    0xc(%r12,%r11,8),%r10d  ; implicit exception: dispatches to 0x00007f0a15245df5
  0.71%    4.47%  │  │  0x00007f0a152457e0: cmp    %r10d,%r8d
                  │  │  0x00007f0a152457e3: jae    0x00007f0a15245a89
  0.31%    1.22%  │  │  0x00007f0a152457e9: lea    (%r12,%r11,8),%r10
                  │  │  0x00007f0a152457ed: mov    0x10(%r10,%r8,4),%r10d  ;*aaload
                  │  │                                                ; - java.util.ArrayList::elementData@5 (line 418)
                  │  │                                                ; - java.util.ArrayList::get@7 (line 431)
                  │  │                                                ; - com.github.arnaudroger.RandomListAccess::testGet@8 (line 85)
                  │  │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@149 (line 439)
 10.89%    5.39%  │  │  0x00007f0a152457f2: mov    0x8(%r12,%r10,8),%r8d  ; implicit exception: dispatches to 0x00007f0a15245e19
 34.86%    0.32%  │  │  0x00007f0a152457f7: cmp    $0xf80022ae,%r8d   ;   {metadata(&apos;java/lang/Long&apos;)}
                  │  │  0x00007f0a152457fe: jne    0x00007f0a15245d41
  0.21%           │  │  0x00007f0a15245804: lea    (%r12,%r10,8),%rdx  ;*checkcast
                  │  │                                                ; - com.github.arnaudroger.RandomListAccess::testGet@11 (line 85)
                  │  │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@149 (line 439)
                  │  │  0x00007f0a15245808: mov    0x18(%rsp),%rsi
  0.01%           │  │  0x00007f0a1524580d: xchg   %ax,%ax
  0.01%           │  │  0x00007f0a1524580f: callq  0x00007f0a15046020  ; OopMap{[96]=Oop [104]=Oop [112]=Oop [24]=Oop off=244}
                  │  │                                                ;*invokevirtual consume
                  │  │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@152 (line 439)
                  │  │                                                ;   {optimized virtual_call}
                  │  │  0x00007f0a15245814: movabs $0x7f0a2bb27670,%r10
                  │  │  0x00007f0a1524581e: callq  *%r10              ;*invokestatic nanoTime
                  │  │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@157 (line 440)
  0.16%           │  │  0x00007f0a15245821: mov    %rax,%r11
                  │  │  0x00007f0a15245824: mov    0x70(%rsp),%r8
                  │  │  0x00007f0a15245829: xor    %eax,%eax
  0.15%    0.02%  │  │  0x00007f0a1524582b: mov    $0x1,%r10d
                  │  │  0x00007f0a15245831: lock cmpxchg %r10d,0x130(%r8)
  3.71%   15.70%  │  │  0x00007f0a1524583a: sete   %r10b
                  │  │  0x00007f0a1524583e: movzbl %r10b,%r10d        ;*invokevirtual compareAndSwapInt
                  │  │                                                ; - java.util.concurrent.atomic.AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl::compareAndSet@15 (line 489)
                  │  │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@173 (line 441)
  0.16%           │  │  0x00007f0a15245842: sub    0x10(%rsp),%r11
                  │  │  0x00007f0a15245847: mov    0x8(%rsp),%r8
                  │  │  0x00007f0a1524584c: add    %r11,%r8           ;*ladd
                  │  │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@163 (line 440)
                  │  │  0x00007f0a1524584f: mov    %r8,%rbx
  0.19%           │  │  0x00007f0a15245852: test   %r10d,%r10d
                  │  │  0x00007f0a15245855: je     0x00007f0a15245c89  ;*ifeq
                  │  │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@176 (line 441)
                  │  │  0x00007f0a1524585b: mov    0x60(%rsp),%r10
                  │  │  0x00007f0a15245860: movzbl 0x95(%r10),%r10d   ;*getfield isFailing
                  │  │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@180 (line 443)
                  │  │  0x00007f0a15245868: test   %r10d,%r10d
                  │  │  0x00007f0a1524586b: jne    0x00007f0a15245cb1  ;*ifeq
                  │  │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@183 (line 443)
  0.18%           │  │  0x00007f0a15245871: mov    0x70(%rsp),%r8
                  │  │  0x00007f0a15245876: movzbl 0x136(%r8),%r11d   ;*getfield readyInvocation
                  │  │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@196 (line 444)
                  │  │  0x00007f0a1524587e: test   %r11d,%r11d
                  │  │  0x00007f0a15245881: je     0x00007f0a15245cd9
                  │  │  0x00007f0a15245887: mov    %r12b,0x136(%r8)
  0.21%           │  │  0x00007f0a1524588e: mov    %r12d,0x130(%r8)
                  │  │  0x00007f0a15245895: lock addl $0x0,(%rsp)     ;*invokevirtual putIntVolatile
                  │  │                                                ; - java.util.concurrent.atomic.AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl::set@14 (line 499)
                  │  │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@214 (line 451)
  3.58%    5.39%  │  │  0x00007f0a1524589a: mov    0x60(%rsp),%r10
                  │  │  0x00007f0a1524589f: movzbl 0x94(%r10),%r10d   ;*getfield isDone
                  │  │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@295 (line 460)
                  │  │  0x00007f0a152458a7: mov    (%rsp),%r13
  2.79%           │  │  0x00007f0a152458ab: add    $0x1,%r13          ; OopMap{r8=Oop [96]=Oop [104]=Oop [24]=Oop off=399}
                  │  │                                                ;*ifeq
                  │  │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@298 (line 460)
  0.20%           │  │  0x00007f0a152458af: test   %eax,0x17bf374b(%rip)        # 0x00007f0a2ce39000
                  │  │                                                ;   {poll}
  0.01%           │  │  0x00007f0a152458b5: test   %r10d,%r10d
                  │  │  0x00007f0a152458b8: jne    0x00007f0a15245a27  ;*ifeq
                  │  │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@298 (line 460)
                  │  │  0x00007f0a152458be: mov    0x18(%rsp),%r14
                  ↘  │  0x00007f0a152458c3: xor    %eax,%eax
  0.16%              │  0x00007f0a152458c5: mov    $0x1,%r10d
                     │  0x00007f0a152458cb: lock cmpxchg %r10d,0x12c(%r8)
  3.37%    2.56%     │  0x00007f0a152458d4: sete   %r11b
                     │  0x00007f0a152458d8: movzbl %r11b,%r11d        ;*invokevirtual compareAndSwapInt
                     │                                                ; - java.util.concurrent.atomic.AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl::compareAndSet@15 (line 489)
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@20 (line 419)
  0.20%    0.51%     │  0x00007f0a152458dc: test   %r11d,%r11d
                     │  0x00007f0a152458df: je     0x00007f0a15245b25  ;*ifeq
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@23 (line 419)
                     │  0x00007f0a152458e5: mov    0x60(%rsp),%r10
                     │  0x00007f0a152458ea: movzbl 0x95(%r10),%r10d   ;*getfield isFailing
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@27 (line 421)
                     │  0x00007f0a152458f2: test   %r10d,%r10d
                     │  0x00007f0a152458f5: jne    0x00007f0a15245b5d  ;*ifeq
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@30 (line 421)
  0.16%              │  0x00007f0a152458fb: movzbl 0x136(%r8),%r11d   ;*getfield readyInvocation
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@43 (line 422)
                     │  0x00007f0a15245903: test   %r11d,%r11d
                     │  0x00007f0a15245906: jne    0x00007f0a15245aed  ;*ifne
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@46 (line 422)
                     │  0x00007f0a1524590c: mov    0x18(%r8),%r11d    ;*getfield random
                     │                                                ; - com.github.arnaudroger.RandomListAccess::nextIndex@2 (line 79)
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
                     │  0x00007f0a15245910: mov    0xc(%r8),%r10d     ;*getfield size
                     │                                                ; - com.github.arnaudroger.RandomListAccess::nextIndex@6 (line 79)
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
  0.16%              │  0x00007f0a15245914: mov    0x8(%r12,%r11,8),%ecx  ; implicit exception: dispatches to 0x00007f0a15245d65
                     │  0x00007f0a15245919: test   %r10d,%r10d
                     │  0x00007f0a1524591c: jle    0x00007f0a15245b95  ;*ifgt
                     │                                                ; - java.util.Random::nextInt@1 (line 387)
                     │                                                ; - com.github.arnaudroger.RandomListAccess::nextIndex@9 (line 79)
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
                     │  0x00007f0a15245922: cmp    $0xf8014b28,%ecx   ;   {metadata(&apos;java/util/Random&apos;)}
                     │  0x00007f0a15245928: jne    0x00007f0a15245ab1
                     │  0x00007f0a1524592e: lea    (%r12,%r11,8),%r9  ;*invokevirtual next
                     │                                                ; - java.util.Random::nextInt@17 (line 390)
                     │                                                ; - com.github.arnaudroger.RandomListAccess::nextIndex@9 (line 79)
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
  0.21%              │  0x00007f0a15245932: mov    0x18(%r9),%r11d    ;*getfield seed
                     │                                                ; - java.util.Random::next@1 (line 200)
                     │                                                ; - java.util.Random::nextInt@17 (line 390)
                     │                                                ; - com.github.arnaudroger.RandomListAccess::nextIndex@9 (line 79)
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
                     │  0x00007f0a15245936: mov    0x10(%r12,%r11,8),%rax  ;*invokevirtual compareAndSwapLong
                     │                                                ; - java.util.concurrent.atomic.AtomicLong::compareAndSet@9 (line 147)
                     │                                                ; - java.util.Random::next@32 (line 204)
                     │                                                ; - java.util.Random::nextInt@17 (line 390)
                     │                                                ; - com.github.arnaudroger.RandomListAccess::nextIndex@9 (line 79)
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
                     │                                                ; implicit exception: dispatches to 0x00007f0a15245d9d
                     │  0x00007f0a1524593b: mov    %rax,%rdi
                     │  0x00007f0a1524593e: movabs $0x5deece66d,%rcx
  0.17%              │  0x00007f0a15245948: imul   %rcx,%rdi
                     │  0x00007f0a1524594c: add    $0xb,%rdi          ;*ladd
                     │                                                ; - java.util.Random::next@20 (line 203)
                     │                                                ; - java.util.Random::nextInt@17 (line 390)
                     │                                                ; - com.github.arnaudroger.RandomListAccess::nextIndex@9 (line 79)
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
                     │  0x00007f0a15245950: mov    %rdi,%rdx
                     │  0x00007f0a15245953: movabs $0xffffffffffff,%rcx
  0.18%              │  0x00007f0a1524595d: and    %rcx,%rdx          ;*land
                     │                                                ; - java.util.Random::next@24 (line 203)
                     │                                                ; - java.util.Random::nextInt@17 (line 390)
                     │                                                ; - com.github.arnaudroger.RandomListAccess::nextIndex@9 (line 79)
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
                     │  0x00007f0a15245960: lock cmpxchg %rdx,0x10(%r12,%r11,8)
  2.78%    7.90%     │  0x00007f0a15245967: sete   %cl
                     │  0x00007f0a1524596a: movzbl %cl,%ecx           ;*invokevirtual compareAndSwapLong
                     │                                                ; - java.util.concurrent.atomic.AtomicLong::compareAndSet@9 (line 147)
                     │                                                ; - java.util.Random::next@32 (line 204)
                     │                                                ; - java.util.Random::nextInt@17 (line 390)
                     │                                                ; - com.github.arnaudroger.RandomListAccess::nextIndex@9 (line 79)
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
  0.17%    0.58%     │  0x00007f0a1524596d: test   %ecx,%ecx
                     │  0x00007f0a1524596f: je     0x00007f0a15245bd1  ;*ifeq
                     │                                                ; - java.util.Random::next@35 (line 204)
                     │                                                ; - java.util.Random::nextInt@17 (line 390)
                     │                                                ; - com.github.arnaudroger.RandomListAccess::nextIndex@9 (line 79)
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
                     │  0x00007f0a15245975: shr    $0x11,%rdi
                     │  0x00007f0a15245979: mov    %r10d,%ebp
                     │  0x00007f0a1524597c: dec    %ebp               ;*isub
                     │                                                ; - java.util.Random::nextInt@23 (line 391)
                     │                                                ; - com.github.arnaudroger.RandomListAccess::nextIndex@9 (line 79)
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
  0.18%              │  0x00007f0a1524597e: mov    %r10d,%ecx
                     │  0x00007f0a15245981: and    %ebp,%ecx          ;*iand
                     │                                                ; - java.util.Random::nextInt@27 (line 392)
                     │                                                ; - com.github.arnaudroger.RandomListAccess::nextIndex@9 (line 79)
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
                     │  0x00007f0a15245983: and    $0x7fffffff,%rdi
                     │  0x00007f0a1524598a: mov    %edi,%r11d         ;*l2i  ; - java.util.Random::next@45 (line 205)
                     │                                                ; - java.util.Random::nextInt@17 (line 390)
                     │                                                ; - com.github.arnaudroger.RandomListAccess::nextIndex@9 (line 79)
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
  0.11%              │  0x00007f0a1524598d: test   %ecx,%ecx
                     │  0x00007f0a1524598f: je     0x00007f0a15245c1d  ;*ifne
                     │                                                ; - java.util.Random::nextInt@28 (line 392)
                     │                                                ; - com.github.arnaudroger.RandomListAccess::nextIndex@9 (line 79)
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
  0.02%              │  0x00007f0a15245995: test   %r10d,%r10d
                     │  0x00007f0a15245998: je     0x00007f0a15245a51
                     │  0x00007f0a1524599e: mov    %r11d,%eax
                     │  0x00007f0a152459a1: cmp    $0x80000000,%eax
                   ╭ │  0x00007f0a152459a6: jne    0x00007f0a152459b0
                   │ │  0x00007f0a152459a8: xor    %edx,%edx
                   │ │  0x00007f0a152459aa: cmp    $0xffffffff,%r10d
                   │╭│  0x00007f0a152459ae: je     0x00007f0a152459b4
  0.13%            ↘││  0x00007f0a152459b0: cltd   
                    ││  0x00007f0a152459b1: idiv   %r10d              ;*irem
                    ││                                                ; - java.util.Random::nextInt@52 (line 396)
                    ││                                                ; - com.github.arnaudroger.RandomListAccess::nextIndex@9 (line 79)
                    ││                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
  0.37%             ↘│  0x00007f0a152459b4: sub    %edx,%r11d
  0.12%              │  0x00007f0a152459b7: add    %r10d,%r11d
  0.03%              │  0x00007f0a152459ba: dec    %r11d
                     │  0x00007f0a152459bd: test   %r11d,%r11d
                     ╰  0x00007f0a152459c0: jge    0x00007f0a1524577e  ;*aload_0
                                                                      ; - java.util.Random::nextInt@61 (line 397)
                                                                      ; - com.github.arnaudroger.RandomListAccess::nextIndex@9 (line 79)
                                                                      ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
                        0x00007f0a152459c6: mov    %r9,0x20(%rsp)
                        0x00007f0a152459cb: mov    %r10d,0x10(%rsp)
                        0x00007f0a152459d0: mov    %rbx,0x8(%rsp)
                        0x00007f0a152459d5: mov    %r13,(%rsp)
                        0x00007f0a152459d9: mov    %r8,0x70(%rsp)
....................................................................................................
 73.92%   60.14%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [vdso], [unknown] (23 bytes) 

 <no assembly is recorded, native region>
....................................................................................................
 12.19%   34.28%  <total for region 2>

....[Hottest Regions]...............................................................................
 73.92%   60.14%         C2, level 4  com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub, version 550 (572 bytes) 
 12.19%   34.28%              [vdso]  [unknown] (23 bytes) 
  2.21%    0.01%        libc-2.26.so  __clock_gettime (75 bytes) 
  1.81%                    libjvm.so  _ZN2os13javaTimeNanosEv (47 bytes) 
  1.55%                       [vdso]  [unknown] (39 bytes) 
  1.34%                       [vdso]  [unknown] (52 bytes) 
  1.07%    0.56%              [vdso]  [unknown] (36 bytes) 
  0.86%    0.84%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.84%                  C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 531 (65 bytes) 
  0.71%                       [vdso]  [unknown] (7 bytes) 
  0.69%    1.62%              [vdso]  [unknown] (25 bytes) 
  0.14%            [kernel.kallsyms]  [unknown] (1 bytes) 
  0.13%    0.01%   [kernel.kallsyms]  [unknown] (39 bytes) 
  0.12%    0.05%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.11%    0.17%           libjvm.so  _ZN10fileStream5writeEPKcm (29 bytes) 
  0.07%    0.01%   [kernel.kallsyms]  [unknown] (9 bytes) 
  0.06%    0.03%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.06%    0.11%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ (110 bytes) 
  0.06%           libpthread-2.26.so  __libc_write (26 bytes) 
  0.04%    0.04%   [kernel.kallsyms]  [unknown] (9 bytes) 
  2.04%    2.13%  <...other 285 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 73.92%   60.14%         C2, level 4  com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub, version 550 
 17.55%   36.47%              [vdso]  [unknown] 
  2.68%    2.14%   [kernel.kallsyms]  [unknown] 
  2.21%    0.01%        libc-2.26.so  __clock_gettime 
  1.81%                    libjvm.so  _ZN2os13javaTimeNanosEv 
  0.84%                  C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 531 
  0.12%    0.07%      hsdis-amd64.so  [unknown] 
  0.11%    0.18%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.06%           libpthread-2.26.so  __libc_write 
  0.06%    0.11%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.05%    0.04%        libc-2.26.so  _IO_fwrite 
  0.04%    0.04%        libc-2.26.so  vfprintf 
  0.03%    0.01%        libc-2.26.so  _IO_fflush 
  0.03%    0.03%  libpthread-2.26.so  __pthread_enable_asynccancel 
  0.02%                    libjvm.so  jio_print 
  0.02%    0.01%        libc-2.26.so  _IO_file_xsputn@@GLIBC_2.2.5 
  0.02%                  interpreter  invoke return entry points  
  0.02%                  interpreter  invokestatic  184 invokestatic  
  0.02%    0.02%        libc-2.26.so  _IO_default_xsputn 
  0.02%    0.03%           libjvm.so  _ZN12outputStream12do_vsnprintfEPcmPKcP13__va_list_tagbRm 
  0.39%    0.15%  <...other 38 warm methods...>
....................................................................................................
100.00%   99.45%  <totals>

....[Distribution by Source]........................................................................
 74.76%   60.14%         C2, level 4
 17.55%   36.47%              [vdso]
  2.68%    2.14%   [kernel.kallsyms]
  2.41%    0.32%        libc-2.26.so
  2.25%    0.79%           libjvm.so
  0.12%    0.07%      hsdis-amd64.so
  0.11%    0.05%  libpthread-2.26.so
  0.10%    0.02%         interpreter
  0.01%                   ld-2.26.so
  0.01%             Unknown, level 0
  0.01%                  C1, level 3
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:25

Benchmark                       (size)  Mode  Cnt   Score   Error  Units
RandomListAccess.testGet       1000000  avgt   10  92.701 ± 2.092  ns/op
RandomListAccess.testGet:·asm  1000000  avgt          NaN            ---
