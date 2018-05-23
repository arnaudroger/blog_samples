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
# Parameters: (size = 10)

# Run progress: 0.00% complete, ETA 00:00:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 27.866 ns/op
# Warmup Iteration   2: 23.111 ns/op
# Warmup Iteration   3: 24.210 ns/op
# Warmup Iteration   4: 22.968 ns/op
# Warmup Iteration   5: 23.463 ns/op
# Warmup Iteration   6: 22.890 ns/op
# Warmup Iteration   7: 22.985 ns/op
# Warmup Iteration   8: 22.838 ns/op
# Warmup Iteration   9: 23.224 ns/op
# Warmup Iteration  10: 23.277 ns/op
Iteration   1: 23.293 ns/op
Iteration   2: 23.533 ns/op
Iteration   3: 23.208 ns/op
Iteration   4: 23.166 ns/op
Iteration   5: 23.453 ns/op
Iteration   6: 23.555 ns/op
Iteration   7: 23.617 ns/op
Iteration   8: 23.471 ns/op
Iteration   9: 23.449 ns/op
Iteration  10: 23.553 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.RandomListAccess.testGet":
  23.430 ±(99.9%) 0.235 ns/op [Average]
  (min, avg, max) = (23.166, 23.430, 23.617), stdev = 0.155
  CI (99.9%): [23.195, 23.664] (assumes normal distribution)

Secondary result "com.github.arnaudroger.RandomListAccess.testGet:·asm":
PrintAssembly processed: 172564 total address lines.
Perf output processed (skipped 13.233 seconds):
 Column 1: cycles (10410 events)
 Column 2: instructions (10399 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub, version 582 (561 bytes) 

                        0x00007fa82d25411d: mov    0x60(%rsp),%r10
                        0x00007fa82d254122: test   %r10,%r10
                        0x00007fa82d254125: je     0x00007fa82d2546d1
                        0x00007fa82d25412b: test   %r14,%r14
                        0x00007fa82d25412e: je     0x00007fa82d2546d1
                        0x00007fa82d254134: xor    %r13d,%r13d
                        0x00007fa82d254137: xor    %ebx,%ebx
                  ╭     0x00007fa82d254139: jmp    0x00007fa82d254140
                  │  ↗  0x00007fa82d25413b: mov    0x18(%rsp),%r14
                  ↘  │  0x00007fa82d254140: xor    %eax,%eax
  0.17%              │  0x00007fa82d254142: mov    $0x1,%r10d
                     │  0x00007fa82d254148: lock cmpxchg %r10d,0x12c(%r8)
  3.50%    1.58%     │  0x00007fa82d254151: sete   %r11b
                     │  0x00007fa82d254155: movzbl %r11b,%r11d        ;*invokevirtual compareAndSwapInt
                     │                                                ; - java.util.concurrent.atomic.AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl::compareAndSet@15 (line 489)
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@20 (line 419)
  0.20%    0.35%     │  0x00007fa82d254159: test   %r11d,%r11d
                     │  0x00007fa82d25415c: je     0x00007fa82d2544f5  ;*ifeq
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@23 (line 419)
                     │  0x00007fa82d254162: mov    0x60(%rsp),%r10
                     │  0x00007fa82d254167: movzbl 0x95(%r10),%r10d   ;*getfield isFailing
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@27 (line 421)
                     │  0x00007fa82d25416f: test   %r10d,%r10d
                     │  0x00007fa82d254172: jne    0x00007fa82d25452d  ;*ifeq
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@30 (line 421)
  0.22%              │  0x00007fa82d254178: movzbl 0x136(%r8),%r11d   ;*getfield readyInvocation
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@43 (line 422)
                     │  0x00007fa82d254180: test   %r11d,%r11d
                     │  0x00007fa82d254183: jne    0x00007fa82d2544bd  ;*ifne
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@46 (line 422)
                     │  0x00007fa82d254189: mov    0x18(%r8),%r11d    ;*getfield random
                     │                                                ; - com.github.arnaudroger.RandomListAccess::nextIndex@2 (line 79)
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
                     │  0x00007fa82d25418d: mov    0xc(%r8),%r10d     ;*getfield size
                     │                                                ; - com.github.arnaudroger.RandomListAccess::nextIndex@6 (line 79)
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
  0.17%              │  0x00007fa82d254191: mov    0x8(%r12,%r11,8),%ecx  ; implicit exception: dispatches to 0x00007fa82d254719
                     │  0x00007fa82d254196: test   %r10d,%r10d
                     │  0x00007fa82d254199: jle    0x00007fa82d254565  ;*ifgt
                     │                                                ; - java.util.Random::nextInt@1 (line 387)
                     │                                                ; - com.github.arnaudroger.RandomListAccess::nextIndex@9 (line 79)
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
                     │  0x00007fa82d25419f: cmp    $0xf8014b28,%ecx   ;   {metadata(&apos;java/util/Random&apos;)}
                     │  0x00007fa82d2541a5: jne    0x00007fa82d254481
                     │  0x00007fa82d2541ab: lea    (%r12,%r11,8),%r9  ;*invokevirtual next
                     │                                                ; - java.util.Random::nextInt@17 (line 390)
                     │                                                ; - com.github.arnaudroger.RandomListAccess::nextIndex@9 (line 79)
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
  0.19%              │  0x00007fa82d2541af: mov    0x18(%r9),%r11d    ;*getfield seed
                     │                                                ; - java.util.Random::next@1 (line 200)
                     │                                                ; - java.util.Random::nextInt@17 (line 390)
                     │                                                ; - com.github.arnaudroger.RandomListAccess::nextIndex@9 (line 79)
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
                     │  0x00007fa82d2541b3: mov    0x10(%r12,%r11,8),%rax  ;*invokevirtual compareAndSwapLong
                     │                                                ; - java.util.concurrent.atomic.AtomicLong::compareAndSet@9 (line 147)
                     │                                                ; - java.util.Random::next@32 (line 204)
                     │                                                ; - java.util.Random::nextInt@17 (line 390)
                     │                                                ; - com.github.arnaudroger.RandomListAccess::nextIndex@9 (line 79)
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
                     │                                                ; implicit exception: dispatches to 0x00007fa82d254751
                     │  0x00007fa82d2541b8: mov    %rax,%rdi
                     │  0x00007fa82d2541bb: movabs $0x5deece66d,%rcx
  0.19%              │  0x00007fa82d2541c5: imul   %rcx,%rdi
                     │  0x00007fa82d2541c9: add    $0xb,%rdi          ;*ladd
                     │                                                ; - java.util.Random::next@20 (line 203)
                     │                                                ; - java.util.Random::nextInt@17 (line 390)
                     │                                                ; - com.github.arnaudroger.RandomListAccess::nextIndex@9 (line 79)
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
                     │  0x00007fa82d2541cd: mov    %rdi,%rdx
                     │  0x00007fa82d2541d0: movabs $0xffffffffffff,%rcx
  0.20%              │  0x00007fa82d2541da: and    %rcx,%rdx          ;*land
                     │                                                ; - java.util.Random::next@24 (line 203)
                     │                                                ; - java.util.Random::nextInt@17 (line 390)
                     │                                                ; - com.github.arnaudroger.RandomListAccess::nextIndex@9 (line 79)
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
                     │  0x00007fa82d2541dd: lock cmpxchg %rdx,0x10(%r12,%r11,8)
  3.16%    4.55%     │  0x00007fa82d2541e4: sete   %cl
                     │  0x00007fa82d2541e7: movzbl %cl,%ecx           ;*invokevirtual compareAndSwapLong
                     │                                                ; - java.util.concurrent.atomic.AtomicLong::compareAndSet@9 (line 147)
                     │                                                ; - java.util.Random::next@32 (line 204)
                     │                                                ; - java.util.Random::nextInt@17 (line 390)
                     │                                                ; - com.github.arnaudroger.RandomListAccess::nextIndex@9 (line 79)
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
  0.26%    0.31%     │  0x00007fa82d2541ea: test   %ecx,%ecx
                     │  0x00007fa82d2541ec: je     0x00007fa82d2545a1  ;*ifeq
                     │                                                ; - java.util.Random::next@35 (line 204)
                     │                                                ; - java.util.Random::nextInt@17 (line 390)
                     │                                                ; - com.github.arnaudroger.RandomListAccess::nextIndex@9 (line 79)
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
  0.02%              │  0x00007fa82d2541f2: shr    $0x11,%rdi
                     │  0x00007fa82d2541f6: mov    %r10d,%ebp
                     │  0x00007fa82d2541f9: dec    %ebp               ;*isub
                     │                                                ; - java.util.Random::nextInt@23 (line 391)
                     │                                                ; - com.github.arnaudroger.RandomListAccess::nextIndex@9 (line 79)
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
  0.12%    0.01%     │  0x00007fa82d2541fb: mov    %r10d,%ecx
  0.03%              │  0x00007fa82d2541fe: and    %ebp,%ecx          ;*iand
                     │                                                ; - java.util.Random::nextInt@27 (line 392)
                     │                                                ; - com.github.arnaudroger.RandomListAccess::nextIndex@9 (line 79)
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
                     │  0x00007fa82d254200: and    $0x7fffffff,%rdi
                     │  0x00007fa82d254207: mov    %edi,%r11d         ;*l2i  ; - java.util.Random::next@45 (line 205)
                     │                                                ; - java.util.Random::nextInt@17 (line 390)
                     │                                                ; - com.github.arnaudroger.RandomListAccess::nextIndex@9 (line 79)
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
  0.18%              │  0x00007fa82d25420a: test   %ecx,%ecx
                     │  0x00007fa82d25420c: je     0x00007fa82d2545ed  ;*ifne
                     │                                                ; - java.util.Random::nextInt@28 (line 392)
                     │                                                ; - com.github.arnaudroger.RandomListAccess::nextIndex@9 (line 79)
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
  0.02%              │  0x00007fa82d254212: test   %r10d,%r10d
                     │  0x00007fa82d254215: je     0x00007fa82d254423
                     │  0x00007fa82d25421b: mov    %r11d,%eax
                     │  0x00007fa82d25421e: cmp    $0x80000000,%eax
                   ╭ │  0x00007fa82d254223: jne    0x00007fa82d25422d
                   │ │  0x00007fa82d254225: xor    %edx,%edx
                   │ │  0x00007fa82d254227: cmp    $0xffffffff,%r10d
                   │╭│  0x00007fa82d25422b: je     0x00007fa82d254231
  0.14%            ↘││  0x00007fa82d25422d: cltd   
  0.03%             ││  0x00007fa82d25422e: idiv   %r10d              ;*irem
                    ││                                                ; - java.util.Random::nextInt@52 (line 396)
                    ││                                                ; - com.github.arnaudroger.RandomListAccess::nextIndex@9 (line 79)
                    ││                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
  0.29%             ↘│  0x00007fa82d254231: sub    %edx,%r11d
  0.13%              │  0x00007fa82d254234: add    %r10d,%r11d
  0.06%              │  0x00007fa82d254237: dec    %r11d
                     │  0x00007fa82d25423a: test   %r11d,%r11d
                     │  0x00007fa82d25423d: jl     0x00007fa82d2543c4
                     │  0x00007fa82d254243: mov    %r14,0x18(%rsp)
  0.18%              │  0x00007fa82d254248: mov    %r13,(%rsp)
  0.02%              │  0x00007fa82d25424c: mov    %rbx,0x8(%rsp)     ;*ifge
                     │                                                ; - java.util.Random::nextInt@58 (line 396)
                     │                                                ; - com.github.arnaudroger.RandomListAccess::nextIndex@9 (line 79)
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
                     │  0x00007fa82d254251: mov    %edx,0x10(%r8)
                     │  0x00007fa82d254255: movb   $0x1,0x136(%r8)
  0.17%              │  0x00007fa82d25425d: mov    %r12d,0x12c(%r8)
  0.01%              │  0x00007fa82d254264: mov    %r8,0x70(%rsp)
                     │  0x00007fa82d254269: lock addl $0x0,(%rsp)     ;*invokevirtual putIntVolatile
                     │                                                ; - java.util.concurrent.atomic.AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl::set@14 (line 499)
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@66 (line 430)
  5.16%    5.47%     │  0x00007fa82d25426e: movabs $0x7fa8422d1670,%r10
                     │  0x00007fa82d254278: callq  *%r10              ;*invokestatic nanoTime
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@140 (line 438)
  0.18%              │  0x00007fa82d25427b: mov    %rax,0x10(%rsp)
                     │  0x00007fa82d254280: mov    0x70(%rsp),%r10
                     │  0x00007fa82d254285: mov    0x10(%r10),%r8d    ;*getfield index
                     │                                                ; - com.github.arnaudroger.RandomListAccess::testGet@5 (line 85)
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@149 (line 439)
  0.42%    0.70%     │  0x00007fa82d254289: mov    0x14(%r10),%r10d   ;*getfield data
                     │                                                ; - com.github.arnaudroger.RandomListAccess::testGet@1 (line 85)
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@149 (line 439)
                     │  0x00007fa82d25428d: mov    0x10(%r12,%r10,8),%r11d  ;*getfield size
                     │                                                ; - java.util.ArrayList::rangeCheck@2 (line 652)
                     │                                                ; - java.util.ArrayList::get@2 (line 429)
                     │                                                ; - com.github.arnaudroger.RandomListAccess::testGet@8 (line 85)
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@149 (line 439)
                     │                                                ; implicit exception: dispatches to 0x00007fa82d254785
  0.96%    3.38%     │  0x00007fa82d254292: cmp    %r11d,%r8d
                     │  0x00007fa82d254295: jge    0x00007fa82d254625  ;*if_icmplt
                     │                                                ; - java.util.ArrayList::rangeCheck@5 (line 652)
                     │                                                ; - java.util.ArrayList::get@2 (line 429)
                     │                                                ; - com.github.arnaudroger.RandomListAccess::testGet@8 (line 85)
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@149 (line 439)
  0.42%    0.88%     │  0x00007fa82d25429b: mov    0x14(%r12,%r10,8),%r11d  ;*getfield elementData
                     │                                                ; - java.util.ArrayList::elementData@1 (line 418)
                     │                                                ; - java.util.ArrayList::get@7 (line 431)
                     │                                                ; - com.github.arnaudroger.RandomListAccess::testGet@8 (line 85)
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@149 (line 439)
                     │  0x00007fa82d2542a0: mov    0xc(%r12,%r11,8),%r10d  ; implicit exception: dispatches to 0x00007fa82d2547a9
  0.99%    2.44%     │  0x00007fa82d2542a5: cmp    %r10d,%r8d
                     │  0x00007fa82d2542a8: jae    0x00007fa82d254459
  0.43%    0.72%     │  0x00007fa82d2542ae: lea    (%r12,%r11,8),%r10
                     │  0x00007fa82d2542b2: mov    0x10(%r10,%r8,4),%r10d  ;*aaload
                     │                                                ; - java.util.ArrayList::elementData@5 (line 418)
                     │                                                ; - java.util.ArrayList::get@7 (line 431)
                     │                                                ; - com.github.arnaudroger.RandomListAccess::testGet@8 (line 85)
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@149 (line 439)
                     │  0x00007fa82d2542b7: mov    0x8(%r12,%r10,8),%r8d  ; implicit exception: dispatches to 0x00007fa82d2547cd
  0.92%    1.64%     │  0x00007fa82d2542bc: cmp    $0xf80022ae,%r8d   ;   {metadata(&apos;java/lang/Long&apos;)}
                     │  0x00007fa82d2542c3: jne    0x00007fa82d2546f5
  0.16%    0.01%     │  0x00007fa82d2542c9: lea    (%r12,%r10,8),%rdx  ;*checkcast
                     │                                                ; - com.github.arnaudroger.RandomListAccess::testGet@11 (line 85)
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@149 (line 439)
                     │  0x00007fa82d2542cd: mov    0x18(%rsp),%rsi
                     │  0x00007fa82d2542d2: nop
                     │  0x00007fa82d2542d3: callq  0x00007fa82d046020  ; OopMap{[96]=Oop [104]=Oop [112]=Oop [24]=Oop off=504}
                     │                                                ;*invokevirtual consume
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@152 (line 439)
                     │                                                ;   {optimized virtual_call}
                     │  0x00007fa82d2542d8: movabs $0x7fa8422d1670,%r10
                     │  0x00007fa82d2542e2: callq  *%r10              ;*invokestatic nanoTime
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@157 (line 440)
  0.16%              │  0x00007fa82d2542e5: mov    %rax,%r11
                     │  0x00007fa82d2542e8: mov    0x70(%rsp),%r8
  0.01%              │  0x00007fa82d2542ed: xor    %eax,%eax
  0.16%    0.01%     │  0x00007fa82d2542ef: mov    $0x1,%r10d
                     │  0x00007fa82d2542f5: lock cmpxchg %r10d,0x130(%r8)
  4.06%    9.13%     │  0x00007fa82d2542fe: sete   %r10b
                     │  0x00007fa82d254302: movzbl %r10b,%r10d        ;*invokevirtual compareAndSwapInt
                     │                                                ; - java.util.concurrent.atomic.AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl::compareAndSet@15 (line 489)
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@173 (line 441)
  0.17%    0.01%     │  0x00007fa82d254306: sub    0x10(%rsp),%r11
                     │  0x00007fa82d25430b: mov    0x8(%rsp),%r8
                     │  0x00007fa82d254310: add    %r11,%r8           ;*ladd
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@163 (line 440)
                     │  0x00007fa82d254313: mov    %r8,%rbx
  0.23%              │  0x00007fa82d254316: test   %r10d,%r10d
                     │  0x00007fa82d254319: je     0x00007fa82d254659  ;*ifeq
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@176 (line 441)
                     │  0x00007fa82d25431f: mov    0x60(%rsp),%r10
                     │  0x00007fa82d254324: movzbl 0x95(%r10),%r10d   ;*getfield isFailing
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@180 (line 443)
                     │  0x00007fa82d25432c: test   %r10d,%r10d
                     │  0x00007fa82d25432f: jne    0x00007fa82d254681  ;*ifeq
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@183 (line 443)
  0.17%              │  0x00007fa82d254335: mov    0x70(%rsp),%r8
                     │  0x00007fa82d25433a: movzbl 0x136(%r8),%r11d   ;*getfield readyInvocation
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@196 (line 444)
                     │  0x00007fa82d254342: test   %r11d,%r11d
                     │  0x00007fa82d254345: je     0x00007fa82d2546a9
                     │  0x00007fa82d25434b: mov    %r12b,0x136(%r8)
  0.18%              │  0x00007fa82d254352: mov    %r12d,0x130(%r8)
                     │  0x00007fa82d254359: lock addl $0x0,(%rsp)     ;*invokevirtual putIntVolatile
                     │                                                ; - java.util.concurrent.atomic.AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl::set@14 (line 499)
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@214 (line 451)
  3.92%    3.06%     │  0x00007fa82d25435e: mov    0x60(%rsp),%r10
                     │  0x00007fa82d254363: movzbl 0x94(%r10),%r10d   ;*getfield isDone
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@295 (line 460)
                     │  0x00007fa82d25436b: mov    (%rsp),%r13
  2.87%              │  0x00007fa82d25436f: add    $0x1,%r13          ; OopMap{r8=Oop [96]=Oop [104]=Oop [24]=Oop off=659}
                     │                                                ;*ifeq
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@298 (line 460)
  0.22%              │  0x00007fa82d254373: test   %eax,0x1638ec87(%rip)        # 0x00007fa8435e3000
                     │                                                ;   {poll}
                     │  0x00007fa82d254379: test   %r10d,%r10d
                     ╰  0x00007fa82d25437c: je     0x00007fa82d25413b  ;*ifeq
                                                                      ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@298 (line 460)
                        0x00007fa82d254382: movabs $0x7fa8422d1670,%r10
                        0x00007fa82d25438c: callq  *%r10              ;*invokestatic nanoTime
                                                                      ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@302 (line 461)
                        0x00007fa82d25438f: mov    0x68(%rsp),%r10
....................................................................................................
 31.50%   34.24%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [vdso], [unknown] (16 bytes) 

 <no assembly is recorded, native region>
....................................................................................................
 22.27%   34.30%  <total for region 2>

....[Hottest Region 3]..............................................................................
C2, level 4, com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub, version 554 (306 bytes) 

                                                                    ; - com.github.arnaudroger.RandomListAccess::nextIndex@9 (line 79)
                                                                    ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
                      0x00007fa82d23b567: test   %r11d,%r11d
                      0x00007fa82d23b56a: je     0x00007fa82d23b6f1
                      0x00007fa82d23b570: mov    %r10d,%eax
                      0x00007fa82d23b573: cmp    $0x80000000,%eax
                  ╭   0x00007fa82d23b578: jne    0x00007fa82d23b582
                  │   0x00007fa82d23b57a: xor    %edx,%edx
                  │   0x00007fa82d23b57c: cmp    $0xffffffff,%r11d
                  │╭  0x00007fa82d23b580: je     0x00007fa82d23b586
  0.09%           ↘│  0x00007fa82d23b582: cltd   
                   │  0x00007fa82d23b583: idiv   %r11d              ;*irem
                   │                                                ; - java.util.Random::nextInt@52 (line 396)
                   │                                                ; - com.github.arnaudroger.RandomListAccess::nextIndex@9 (line 79)
                   │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
  0.19%            ↘  0x00007fa82d23b586: sub    %edx,%r10d
  0.16%               0x00007fa82d23b589: add    %r11d,%r10d
                      0x00007fa82d23b58c: dec    %r10d              ;*iadd
                                                                    ; - java.util.Random::nextInt@57 (line 396)
                                                                    ; - com.github.arnaudroger.RandomListAccess::nextIndex@9 (line 79)
                                                                    ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
                      0x00007fa82d23b58f: test   %r10d,%r10d
                      0x00007fa82d23b592: jl     0x00007fa82d23b82d  ;*ifge
                                                                    ; - java.util.Random::nextInt@58 (line 396)
                                                                    ; - com.github.arnaudroger.RandomListAccess::nextIndex@9 (line 79)
                                                                    ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
                      0x00007fa82d23b598: mov    0x10(%rsp),%r10
  0.19%               0x00007fa82d23b59d: mov    %edx,0x10(%r10)
                      0x00007fa82d23b5a1: movb   $0x1,0x136(%r10)
                      0x00007fa82d23b5a9: mov    %r12d,0x12c(%r10)
                      0x00007fa82d23b5b0: lock addl $0x0,(%rsp)     ;*invokevirtual putIntVolatile
                                                                    ; - java.util.concurrent.atomic.AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl::set@14 (line 499)
                                                                    ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@66 (line 430)
  3.13%    3.48%      0x00007fa82d23b5b5: movabs $0x7fa8422d1670,%r10
                      0x00007fa82d23b5bf: callq  *%r10              ;*invokestatic nanoTime
                                                                    ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@140 (line 438)
  0.12%               0x00007fa82d23b5c2: mov    %rax,0x28(%rsp)
                      0x00007fa82d23b5c7: mov    0x10(%rsp),%r10
                      0x00007fa82d23b5cc: mov    0x10(%r10),%r9d    ;*getfield index
                                                                    ; - com.github.arnaudroger.RandomListAccess::testGet@5 (line 85)
                                                                    ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@149 (line 439)
  0.37%    0.47%      0x00007fa82d23b5d0: mov    0x14(%r10),%r10d   ;*getfield data
                                                                    ; - com.github.arnaudroger.RandomListAccess::testGet@1 (line 85)
                                                                    ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@149 (line 439)
                      0x00007fa82d23b5d4: mov    0x10(%r12,%r10,8),%r11d  ;*getfield size
                                                                    ; - java.util.ArrayList::rangeCheck@2 (line 652)
                                                                    ; - java.util.ArrayList::get@2 (line 429)
                                                                    ; - com.github.arnaudroger.RandomListAccess::testGet@8 (line 85)
                                                                    ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@149 (line 439)
                                                                    ; implicit exception: dispatches to 0x00007fa82d23b995
  0.70%    2.00%      0x00007fa82d23b5d9: cmp    %r11d,%r9d
                      0x00007fa82d23b5dc: jge    0x00007fa82d23b855  ;*if_icmplt
                                                                    ; - java.util.ArrayList::rangeCheck@5 (line 652)
                                                                    ; - java.util.ArrayList::get@2 (line 429)
                                                                    ; - com.github.arnaudroger.RandomListAccess::testGet@8 (line 85)
                                                                    ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@149 (line 439)
  0.26%    0.72%      0x00007fa82d23b5e2: mov    0x14(%r12,%r10,8),%r10d  ;*getfield elementData
                                                                    ; - java.util.ArrayList::elementData@1 (line 418)
                                                                    ; - java.util.ArrayList::get@7 (line 431)
                                                                    ; - com.github.arnaudroger.RandomListAccess::testGet@8 (line 85)
                                                                    ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@149 (line 439)
                      0x00007fa82d23b5e7: mov    0xc(%r12,%r10,8),%r8d  ; implicit exception: dispatches to 0x00007fa82d23b9a9
  0.51%    1.43%      0x00007fa82d23b5ec: cmp    %r8d,%r9d
                      0x00007fa82d23b5ef: jae    0x00007fa82d23b705
  0.16%    0.25%      0x00007fa82d23b5f5: shl    $0x3,%r10
                      0x00007fa82d23b5f9: mov    0x10(%r10,%r9,4),%r10d  ;*aaload
                                                                    ; - java.util.ArrayList::elementData@5 (line 418)
                                                                    ; - java.util.ArrayList::get@7 (line 431)
                                                                    ; - com.github.arnaudroger.RandomListAccess::testGet@8 (line 85)
                                                                    ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@149 (line 439)
                      0x00007fa82d23b5fe: mov    0x8(%r12,%r10,8),%r11d  ; implicit exception: dispatches to 0x00007fa82d23b9bd
  0.46%    0.74%      0x00007fa82d23b603: cmp    $0xf80022ae,%r11d  ;   {metadata(&apos;java/lang/Long&apos;)}
                      0x00007fa82d23b60a: jne    0x00007fa82d23b931
  0.14%    0.24%      0x00007fa82d23b610: lea    (%r12,%r10,8),%rdx  ;*checkcast
                                                                    ; - com.github.arnaudroger.RandomListAccess::testGet@11 (line 85)
                                                                    ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@149 (line 439)
                      0x00007fa82d23b614: mov    0x8(%rsp),%rsi
                      0x00007fa82d23b619: xchg   %ax,%ax
                      0x00007fa82d23b61b: callq  0x00007fa82d046020  ; OopMap{rbp=Oop [0]=Oop [8]=Oop [16]=Oop off=640}
                                                                    ;*invokevirtual consume
                                                                    ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@152 (line 439)
                                                                    ;   {optimized virtual_call}
                      0x00007fa82d23b620: movabs $0x7fa8422d1670,%r10
                      0x00007fa82d23b62a: callq  *%r10              ;*invokestatic nanoTime
                                                                    ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@157 (line 440)
  0.12%               0x00007fa82d23b62d: mov    %rax,%r10
                      0x00007fa82d23b630: mov    0x10(%rsp),%r8
                      0x00007fa82d23b635: xor    %eax,%eax
  0.07%               0x00007fa82d23b637: mov    $0x1,%r11d
                      0x00007fa82d23b63d: lock cmpxchg %r11d,0x130(%r8)
  2.83%    5.92%      0x00007fa82d23b646: sete   %r11b
                      0x00007fa82d23b64a: movzbl %r11b,%r11d        ;*invokevirtual compareAndSwapInt
                                                                    ; - java.util.concurrent.atomic.AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl::compareAndSet@15 (line 489)
                                                                    ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@173 (line 441)
  0.11%               0x00007fa82d23b64e: sub    0x28(%rsp),%r10
                      0x00007fa82d23b653: mov    0x20(%rsp),%r8
                      0x00007fa82d23b658: add    %r10,%r8           ;*ladd
                                                                    ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@163 (line 440)
                      0x00007fa82d23b65b: mov    %r8,0x20(%rsp)
  0.09%               0x00007fa82d23b660: test   %r11d,%r11d
                      0x00007fa82d23b663: je     0x00007fa82d23b879  ;*ifeq
                                                                    ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@176 (line 441)
                      0x00007fa82d23b669: movzbl 0x95(%rbp),%r10d   ;*getfield isFailing
                                                                    ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@180 (line 443)
                      0x00007fa82d23b671: test   %r10d,%r10d
                      0x00007fa82d23b674: jne    0x00007fa82d23b88d  ;*ifeq
                                                                    ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@183 (line 443)
                      0x00007fa82d23b67a: mov    0x10(%rsp),%r10
  0.13%               0x00007fa82d23b67f: movzbl 0x136(%r10),%r8d   ;*getfield readyInvocation
                                                                    ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@196 (line 444)
                      0x00007fa82d23b687: test   %r8d,%r8d
                      0x00007fa82d23b68a: je     0x00007fa82d23b8a1
                      0x00007fa82d23b690: mov    %r12b,0x136(%r10)
                      0x00007fa82d23b697: mov    %r12d,0x130(%r10)
  0.15%               0x00007fa82d23b69e: lock addl $0x0,(%rsp)     ;*invokevirtual putIntVolatile
                                                                    ; - java.util.concurrent.atomic.AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl::set@14 (line 499)
                                                                    ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@214 (line 451)
  3.38%    2.12%      0x00007fa82d23b6a3: movzbl 0x94(%rbp),%r11d   ;*getfield isDone
                                                                    ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@295 (line 460)
                      0x00007fa82d23b6ab: mov    0x18(%rsp),%rbx
                      0x00007fa82d23b6b0: add    $0x1,%rbx          ; OopMap{r10=Oop rbp=Oop [0]=Oop [8]=Oop off=788}
                                                                    ;*ifeq
                                                                    ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@298 (line 460)
  0.09%               0x00007fa82d23b6b4: test   %eax,0x163a7946(%rip)        # 0x00007fa8435e3000
                                                                    ;   {poll}
                      0x00007fa82d23b6ba: test   %r11d,%r11d
                      0x00007fa82d23b6bd: je     0x00007fa82d23b480  ;*ifeq
                                                                    ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@298 (line 460)
                      0x00007fa82d23b6c3: movabs $0x7fa8422d1670,%r10
                      0x00007fa82d23b6cd: callq  *%r10              ;*invokestatic nanoTime
                                                                    ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@302 (line 461)
                      0x00007fa82d23b6d0: mov    (%rsp),%r11
....................................................................................................
 13.46%   17.38%  <total for region 3>

....[Hottest Regions]...............................................................................
 31.50%   34.24%         C2, level 4  com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub, version 582 (561 bytes) 
 22.27%   34.30%              [vdso]  [unknown] (16 bytes) 
 13.46%   17.38%         C2, level 4  com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub, version 554 (306 bytes) 
  7.79%    4.91%         C2, level 4  com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub, version 554 (214 bytes) 
  4.18%    0.22%        libc-2.26.so  __clock_gettime (74 bytes) 
  3.70%    0.81%           libjvm.so  _ZN2os13javaTimeNanosEv (47 bytes) 
  3.29%    1.14%              [vdso]  [unknown] (44 bytes) 
  3.04%                       [vdso]  [unknown] (52 bytes) 
  2.02%    2.00%   [kernel.kallsyms]  [unknown] (0 bytes) 
  2.00%    0.49%              [vdso]  [unknown] (36 bytes) 
  1.56%    0.28%         C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 530 (65 bytes) 
  1.27%    1.64%              [vdso]  [unknown] (25 bytes) 
  1.24%                       [vdso]  [unknown] (7 bytes) 
  0.13%    0.01%   [kernel.kallsyms]  [unknown] (28 bytes) 
  0.12%    0.02%   [kernel.kallsyms]  [unknown] (39 bytes) 
  0.09%    0.06%           libjvm.so  _ZN10fileStream5writeEPKcm (14 bytes) 
  0.08%    0.02%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.06%    0.06%   [kernel.kallsyms]  [unknown] (26 bytes) 
  0.06%    0.04%   [kernel.kallsyms]  [unknown] (27 bytes) 
  0.05%    0.02%   [kernel.kallsyms]  [unknown] (0 bytes) 
  2.12%    2.36%  <...other 305 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 33.09%   37.58%              [vdso]  [unknown] 
 31.50%   34.24%         C2, level 4  com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub, version 582 
 21.25%   22.29%         C2, level 4  com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub, version 554 
  4.18%    0.22%        libc-2.26.so  __clock_gettime 
  3.70%    0.81%           libjvm.so  _ZN2os13javaTimeNanosEv 
  3.53%    3.29%   [kernel.kallsyms]  [unknown] 
  1.56%    0.28%         C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 530 
  0.10%    0.09%      hsdis-amd64.so  [unknown] 
  0.09%    0.07%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.05%    0.09%        libc-2.26.so  _IO_fwrite 
  0.05%    0.13%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.04%    0.01%           libjvm.so  _ZN10decode_env12handle_eventEPKcPh 
  0.04%    0.04%        libc-2.26.so  _IO_default_xsputn 
  0.04%    0.05%           libjvm.so  _ZN12outputStream15update_positionEPKcm 
  0.03%                 libc-2.26.so  __memmove_avx_unaligned_erms 
  0.03%    0.04%        libc-2.26.so  __strlen_avx2 
  0.03%    0.01%           libjvm.so  _ZN13defaultStream5flushEv 
  0.03%    0.04%           libjvm.so  _ZN13xmlTextStream5writeEPKcm 
  0.03%           libpthread-2.26.so  __libc_write 
  0.03%    0.09%        libc-2.26.so  vfprintf 
  0.63%    0.19%  <...other 56 warm methods...>
....................................................................................................
100.00%   99.54%  <totals>

....[Distribution by Source]........................................................................
 54.30%   56.83%         C2, level 4
 33.09%   37.58%              [vdso]
  4.48%    0.63%        libc-2.26.so
  4.34%    1.49%           libjvm.so
  3.53%    3.29%   [kernel.kallsyms]
  0.10%    0.10%      hsdis-amd64.so
  0.08%    0.03%         interpreter
  0.06%    0.02%  libpthread-2.26.so
  0.03%    0.03%         C1, level 3
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:24

Benchmark                      (size)  Mode  Cnt   Score   Error  Units
RandomListAccess.testGet           10  avgt   10  23.430 ± 0.235  ns/op
RandomListAccess.testGet:·asm      10  avgt          NaN            ---
