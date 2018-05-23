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
# Parameters: (size = 10)

# Run progress: 0.00% complete, ETA 00:00:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 23.419 ns/op
# Warmup Iteration   2: 21.321 ns/op
# Warmup Iteration   3: 20.826 ns/op
# Warmup Iteration   4: 20.847 ns/op
# Warmup Iteration   5: 20.918 ns/op
# Warmup Iteration   6: 20.704 ns/op
# Warmup Iteration   7: 20.714 ns/op
# Warmup Iteration   8: 20.884 ns/op
# Warmup Iteration   9: 20.800 ns/op
# Warmup Iteration  10: 20.897 ns/op
Iteration   1: 20.814 ns/op
Iteration   2: 20.944 ns/op
Iteration   3: 20.862 ns/op
Iteration   4: 20.759 ns/op
Iteration   5: 20.904 ns/op
Iteration   6: 20.866 ns/op
Iteration   7: 20.792 ns/op
Iteration   8: 20.748 ns/op
Iteration   9: 20.736 ns/op
Iteration  10: 20.877 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.RandomArrayAccess.testGet":
  20.830 ±(99.9%) 0.107 ns/op [Average]
  (min, avg, max) = (20.736, 20.830, 20.944), stdev = 0.071
  CI (99.9%): [20.723, 20.938] (assumes normal distribution)

Secondary result "com.github.arnaudroger.RandomArrayAccess.testGet:·asm":
PrintAssembly processed: 161795 total address lines.
Perf output processed (skipped 13.059 seconds):
 Column 1: cycles (10278 events)
 Column 2: instructions (10273 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub, version 514 (301 bytes) 

                                                                    ; - com.github.arnaudroger.RandomArrayAccess::nextIndex@9 (line 63)
                                                                    ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
                      0x00007f85e1227452: test   %r10d,%r10d
                      0x00007f85e1227455: je     0x00007f85e12275d8
                      0x00007f85e122745b: mov    %r8d,%eax
                      0x00007f85e122745e: cmp    $0x80000000,%eax
                  ╭   0x00007f85e1227463: jne    0x00007f85e122746d
                  │   0x00007f85e1227465: xor    %edx,%edx
                  │   0x00007f85e1227467: cmp    $0xffffffff,%r10d
                  │╭  0x00007f85e122746b: je     0x00007f85e1227471
  0.48%           ↘│  0x00007f85e122746d: cltd   
                   │  0x00007f85e122746e: idiv   %r10d              ;*irem
                   │                                                ; - java.util.Random::nextInt@52 (line 396)
                   │                                                ; - com.github.arnaudroger.RandomArrayAccess::nextIndex@9 (line 63)
                   │                                                ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
  0.64%            ↘  0x00007f85e1227471: sub    %edx,%r8d
  0.28%               0x00007f85e1227474: add    %r10d,%r8d
                      0x00007f85e1227477: dec    %r8d               ;*iadd
                                                                    ; - java.util.Random::nextInt@57 (line 396)
                                                                    ; - com.github.arnaudroger.RandomArrayAccess::nextIndex@9 (line 63)
                                                                    ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
                      0x00007f85e122747a: test   %r8d,%r8d
                      0x00007f85e122747d: jl     0x00007f85e1227791  ;*ifge
                                                                    ; - java.util.Random::nextInt@58 (line 396)
                                                                    ; - com.github.arnaudroger.RandomArrayAccess::nextIndex@9 (line 63)
                                                                    ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
                      0x00007f85e1227483: mov    %rbp,0x8(%rsp)
  0.37%               0x00007f85e1227488: mov    %rbx,(%rsp)
                      0x00007f85e122748c: mov    %rdi,0x68(%rsp)
                      0x00007f85e1227491: mov    %r14,%rbp
                      0x00007f85e1227494: mov    %r13,0x60(%rsp)
  0.39%               0x00007f85e1227499: mov    %edx,0x10(%r11)
                      0x00007f85e122749d: movb   $0x1,0x136(%r11)
                      0x00007f85e12274a5: mov    %r12d,0x12c(%r11)
                      0x00007f85e12274ac: mov    %r11,0x70(%rsp)
  0.33%               0x00007f85e12274b1: lock addl $0x0,(%rsp)     ;*invokevirtual putIntVolatile
                                                                    ; - java.util.concurrent.atomic.AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl::set@14 (line 499)
                                                                    ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@66 (line 430)
  8.90%   10.16%      0x00007f85e12274b6: movabs $0x7f85f8768670,%r10
                      0x00007f85e12274c0: callq  *%r10              ;*invokestatic nanoTime
                                                                    ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@140 (line 438)
  0.40%               0x00007f85e12274c3: mov    %rax,0x10(%rsp)
                      0x00007f85e12274c8: mov    0x70(%rsp),%r10
                      0x00007f85e12274cd: mov    0x10(%r10),%r10d   ;*getfield index
                                                                    ; - com.github.arnaudroger.RandomArrayAccess::testGet@5 (line 69)
                                                                    ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@149 (line 439)
  0.76%    0.05%      0x00007f85e12274d1: mov    0x70(%rsp),%r11
                      0x00007f85e12274d6: mov    0x14(%r11),%r8d    ;*getfield data
                                                                    ; - com.github.arnaudroger.RandomArrayAccess::testGet@1 (line 69)
                                                                    ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@149 (line 439)
  0.32%    0.53%      0x00007f85e12274da: mov    0xc(%r12,%r8,8),%r9d  ; implicit exception: dispatches to 0x00007f85e1227895
  1.94%    6.06%      0x00007f85e12274df: cmp    %r9d,%r10d
                      0x00007f85e12274e2: jae    0x00007f85e1227605
  0.68%    2.19%      0x00007f85e12274e8: lea    (%r12,%r8,8),%r11
                      0x00007f85e12274ec: mov    0x10(%r11,%r10,4),%r10d
                      0x00007f85e12274f1: mov    %r10,%rdx
                      0x00007f85e12274f4: shl    $0x3,%rdx          ;*aaload
                                                                    ; - com.github.arnaudroger.RandomArrayAccess::testGet@8 (line 69)
                                                                    ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@149 (line 439)
  0.43%    1.32%      0x00007f85e12274f8: mov    0x68(%rsp),%rsi
                      0x00007f85e12274fd: xchg   %ax,%ax
                      0x00007f85e12274ff: callq  0x00007f85e1046020  ; OopMap{rbp=Oop [96]=Oop [104]=Oop [112]=Oop off=484}
                                                                    ;*invokevirtual consume
                                                                    ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@152 (line 439)
                                                                    ;   {optimized virtual_call}
                      0x00007f85e1227504: movabs $0x7f85f8768670,%r10
                      0x00007f85e122750e: callq  *%r10              ;*invokestatic nanoTime
                                                                    ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@157 (line 440)
  0.41%               0x00007f85e1227511: mov    %rax,%r11
                      0x00007f85e1227514: mov    0x70(%rsp),%r8
                      0x00007f85e1227519: xor    %eax,%eax
  0.39%               0x00007f85e122751b: mov    $0x1,%r10d
                      0x00007f85e1227521: lock cmpxchg %r10d,0x130(%r8)
  7.06%   14.78%      0x00007f85e122752a: sete   %r10b
                      0x00007f85e122752e: movzbl %r10b,%r10d        ;*invokevirtual compareAndSwapInt
                                                                    ; - java.util.concurrent.atomic.AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl::compareAndSet@15 (line 489)
                                                                    ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@173 (line 441)
  0.30%               0x00007f85e1227532: sub    0x10(%rsp),%r11
                      0x00007f85e1227537: mov    0x8(%rsp),%r8
                      0x00007f85e122753c: add    %r11,%r8           ;*ladd
                                                                    ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@163 (line 440)
                      0x00007f85e122753f: mov    %r8,0x8(%rsp)
  0.26%               0x00007f85e1227544: test   %r10d,%r10d
                      0x00007f85e1227547: je     0x00007f85e12277d1  ;*ifeq
                                                                    ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@176 (line 441)
                      0x00007f85e122754d: mov    %rbp,%r14
                      0x00007f85e1227550: movzbl 0x95(%r14),%r11d   ;*getfield isFailing
                                                                    ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@180 (line 443)
                      0x00007f85e1227558: test   %r11d,%r11d
                      0x00007f85e122755b: jne    0x00007f85e12277e5  ;*ifeq
                                                                    ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@183 (line 443)
  0.34%               0x00007f85e1227561: mov    0x70(%rsp),%r11
                      0x00007f85e1227566: movzbl 0x136(%r11),%r10d  ;*getfield readyInvocation
                                                                    ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@196 (line 444)
                      0x00007f85e122756e: test   %r10d,%r10d
                      0x00007f85e1227571: je     0x00007f85e12277f9
                      0x00007f85e1227577: mov    %r12b,0x136(%r11)
  0.35%               0x00007f85e122757e: mov    %r12d,0x130(%r11)
                      0x00007f85e1227585: lock addl $0x0,(%rsp)     ;*invokevirtual putIntVolatile
                                                                    ; - java.util.concurrent.atomic.AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl::set@14 (line 499)
                                                                    ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@214 (line 451)
  7.07%    5.62%      0x00007f85e122758a: movzbl 0x94(%r14),%r8d    ;*getfield isDone
                                                                    ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@295 (line 460)
                      0x00007f85e1227592: mov    (%rsp),%rbx
  4.92%               0x00007f85e1227596: add    $0x1,%rbx          ; OopMap{r11=Oop r14=Oop [96]=Oop [104]=Oop off=634}
                                                                    ;*ifeq
                                                                    ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@298 (line 460)
  0.28%               0x00007f85e122759a: test   %eax,0x18852a60(%rip)        # 0x00007f85f9a7a000
                                                                    ;   {poll}
                      0x00007f85e12275a0: test   %r8d,%r8d
                      0x00007f85e12275a3: je     0x00007f85e1227370  ;*ifeq
                                                                    ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@298 (line 460)
                      0x00007f85e12275a9: movabs $0x7f85f8768670,%r10
                      0x00007f85e12275b3: callq  *%r10              ;*invokestatic nanoTime
                                                                    ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@302 (line 461)
                      0x00007f85e12275b6: mov    0x60(%rsp),%r10
....................................................................................................
 37.31%   40.71%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [vdso], [unknown] (16 bytes) 

 <no assembly is recorded, native region>
....................................................................................................
 23.88%   35.86%  <total for region 2>

....[Hottest Regions]...............................................................................
 37.31%   40.71%         C2, level 4  com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub, version 514 (301 bytes) 
 23.88%   35.86%              [vdso]  [unknown] (16 bytes) 
  8.41%    8.11%         C2, level 4  com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub, version 514 (144 bytes) 
  6.77%    3.55%         C2, level 4  com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub, version 514 (30 bytes) 
  4.31%    0.20%        libc-2.26.so  __clock_gettime (74 bytes) 
  3.53%    0.40%              [vdso]  [unknown] (44 bytes) 
  3.29%    1.25%           libjvm.so  _ZN2os13javaTimeNanosEv (46 bytes) 
  2.82%                       [vdso]  [unknown] (52 bytes) 
  1.89%    4.43%         C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 493 (71 bytes) 
  1.61%    2.03%              [vdso]  [unknown] (19 bytes) 
  1.55%                       [vdso]  [unknown] (31 bytes) 
  1.31%                       [vdso]  [unknown] (7 bytes) 
  0.56%    0.55%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.18%    0.01%   [kernel.kallsyms]  [unknown] (50 bytes) 
  0.15%            [kernel.kallsyms]  [unknown] (1 bytes) 
  0.08%    0.10%           libjvm.so  _ZN10fileStream5writeEPKcm (14 bytes) 
  0.06%    0.06%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.06%    0.01%   [kernel.kallsyms]  [unknown] (5 bytes) 
  0.05%    0.05%   [kernel.kallsyms]  [unknown] (9 bytes) 
  0.04%            [kernel.kallsyms]  [unknown] (39 bytes) 
  2.15%    2.68%  <...other 331 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 52.49%   52.37%         C2, level 4  com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub, version 514 
 34.70%   38.29%              [vdso]  [unknown] 
  4.31%    0.20%        libc-2.26.so  __clock_gettime 
  3.29%    1.25%           libjvm.so  _ZN2os13javaTimeNanosEv 
  2.23%    2.22%   [kernel.kallsyms]  [unknown] 
  1.89%    4.43%         C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 493 
  0.09%    0.11%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.06%    0.04%      hsdis-amd64.so  [unknown] 
  0.05%    0.05%           libjvm.so  _ZN13xmlTextStream5writeEPKcm 
  0.05%                    libjvm.so  _ZN7Monitor5ILockEP6Thread 
  0.04%    0.07%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.03%    0.01%           libjvm.so  _ZN13defaultStream4holdEl 
  0.03%    0.02%           libjvm.so  _ZN15PerfLongVariant6sampleEv 
  0.03%    0.03%  libpthread-2.26.so  __pthread_getspecific 
  0.03%    0.05%        libc-2.26.so  _IO_fwrite 
  0.03%    0.01%           libjvm.so  _ZN12outputStream12do_vsnprintfEPcmPKcP13__va_list_tagbRm 
  0.03%           libpthread-2.26.so  __libc_write 
  0.03%    0.04%           libjvm.so  _ZN12outputStream15update_positionEPKcm 
  0.02%    0.01%           libjvm.so  _ZN10decode_env12handle_eventEPKcPh 
  0.02%                    libjvm.so  _ZN12stringStream5writeEPKcm 
  0.57%    0.42%  <...other 51 warm methods...>
....................................................................................................
100.00%   99.61%  <totals>

....[Distribution by Source]........................................................................
 54.38%   56.80%         C2, level 4
 34.70%   38.29%              [vdso]
  4.50%    0.67%        libc-2.26.so
  3.99%    1.83%           libjvm.so
  2.23%    2.22%   [kernel.kallsyms]
  0.11%    0.11%  libpthread-2.26.so
  0.06%    0.05%      hsdis-amd64.so
  0.05%    0.03%         interpreter
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:24

Benchmark                       (size)  Mode  Cnt   Score   Error  Units
RandomArrayAccess.testGet           10  avgt   10  20.830 ± 0.107  ns/op
RandomArrayAccess.testGet:·asm      10  avgt          NaN            ---
