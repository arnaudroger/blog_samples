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
# Parameters: (size = 1000)

# Run progress: 0.00% complete, ETA 00:00:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 28.380 ns/op
# Warmup Iteration   2: 23.995 ns/op
# Warmup Iteration   3: 23.574 ns/op
# Warmup Iteration   4: 23.580 ns/op
# Warmup Iteration   5: 23.799 ns/op
# Warmup Iteration   6: 23.520 ns/op
# Warmup Iteration   7: 23.633 ns/op
# Warmup Iteration   8: 23.615 ns/op
# Warmup Iteration   9: 23.763 ns/op
# Warmup Iteration  10: 23.730 ns/op
Iteration   1: 23.588 ns/op
Iteration   2: 23.879 ns/op
Iteration   3: 23.702 ns/op
Iteration   4: 23.545 ns/op
Iteration   5: 23.817 ns/op
Iteration   6: 23.743 ns/op
Iteration   7: 23.595 ns/op
Iteration   8: 23.633 ns/op
Iteration   9: 23.600 ns/op
Iteration  10: 23.717 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.RandomListAccess.testGet":
  23.682 ±(99.9%) 0.164 ns/op [Average]
  (min, avg, max) = (23.545, 23.682, 23.879), stdev = 0.109
  CI (99.9%): [23.518, 23.846] (assumes normal distribution)

Secondary result "com.github.arnaudroger.RandomListAccess.testGet:·asm":
PrintAssembly processed: 174657 total address lines.
Perf output processed (skipped 13.391 seconds):
 Column 1: cycles (10309 events)
 Column 2: instructions (10313 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub, version 552 (569 bytes) 

                        0x00007fd659027317: je     0x00007fd6590278de
                        0x00007fd65902731d: mov    0x60(%rsp),%r10
                        0x00007fd659027322: test   %r10,%r10
                        0x00007fd659027325: je     0x00007fd6590278de
                        0x00007fd65902732b: test   %r14,%r14
                        0x00007fd65902732e: je     0x00007fd6590278de  ;*getstatic setupInvocationMutexUpdater
                                                                      ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@13 (line 419)
                        0x00007fd659027334: xor    %r13d,%r13d
                        0x00007fd659027337: xor    %ebx,%ebx
                  ╭     0x00007fd659027339: jmpq   0x00007fd659027483
  0.34%           │  ↗  0x00007fd65902733e: mov    %r14,0x18(%rsp)
                  │  │  0x00007fd659027343: mov    %r13,(%rsp)
                  │  │  0x00007fd659027347: mov    %rbx,0x8(%rsp)     ;*ifge
                  │  │                                                ; - java.util.Random::nextInt@58 (line 396)
                  │  │                                                ; - com.github.arnaudroger.RandomListAccess::nextIndex@9 (line 79)
                  │  │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
                  │  │  0x00007fd65902734c: mov    %edx,0x10(%r8)
  0.41%           │  │  0x00007fd659027350: movb   $0x1,0x136(%r8)
                  │  │  0x00007fd659027358: mov    %r12d,0x12c(%r8)
                  │  │  0x00007fd65902735f: mov    %r8,0x70(%rsp)
                  │  │  0x00007fd659027364: lock addl $0x0,(%rsp)     ;*invokevirtual putIntVolatile
                  │  │                                                ; - java.util.concurrent.atomic.AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl::set@14 (line 499)
                  │  │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@66 (line 430)
  8.92%    8.88%  │  │  0x00007fd659027369: movabs $0x7fd66dc6b670,%r10
                  │  │  0x00007fd659027373: callq  *%r10              ;*invokestatic nanoTime
                  │  │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@140 (line 438)
  0.32%           │  │  0x00007fd659027376: mov    %rax,0x10(%rsp)
                  │  │  0x00007fd65902737b: mov    0x70(%rsp),%r10
                  │  │  0x00007fd659027380: mov    0x10(%r10),%r8d    ;*getfield index
                  │  │                                                ; - com.github.arnaudroger.RandomListAccess::testGet@5 (line 85)
                  │  │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@149 (line 439)
  0.56%    0.01%  │  │  0x00007fd659027384: mov    0x14(%r10),%r10d   ;*getfield data
                  │  │                                                ; - com.github.arnaudroger.RandomListAccess::testGet@1 (line 85)
                  │  │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@149 (line 439)
                  │  │  0x00007fd659027388: mov    0x10(%r12,%r10,8),%r11d  ;*getfield size
                  │  │                                                ; - java.util.ArrayList::rangeCheck@2 (line 652)
                  │  │                                                ; - java.util.ArrayList::get@2 (line 429)
                  │  │                                                ; - com.github.arnaudroger.RandomListAccess::testGet@8 (line 85)
                  │  │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@149 (line 439)
                  │  │                                                ; implicit exception: dispatches to 0x00007fd659027991
  1.74%    4.79%  │  │  0x00007fd65902738d: cmp    %r11d,%r8d
                  │  │  0x00007fd659027390: jge    0x00007fd659027815  ;*if_icmplt
                  │  │                                                ; - java.util.ArrayList::rangeCheck@5 (line 652)
                  │  │                                                ; - java.util.ArrayList::get@2 (line 429)
                  │  │                                                ; - com.github.arnaudroger.RandomListAccess::testGet@8 (line 85)
                  │  │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@149 (line 439)
  0.69%    1.47%  │  │  0x00007fd659027396: mov    0x14(%r12,%r10,8),%r11d  ;*getfield elementData
                  │  │                                                ; - java.util.ArrayList::elementData@1 (line 418)
                  │  │                                                ; - java.util.ArrayList::get@7 (line 431)
                  │  │                                                ; - com.github.arnaudroger.RandomListAccess::testGet@8 (line 85)
                  │  │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@149 (line 439)
                  │  │  0x00007fd65902739b: mov    0xc(%r12,%r11,8),%r10d  ; implicit exception: dispatches to 0x00007fd6590279b5
  1.37%    4.28%  │  │  0x00007fd6590273a0: cmp    %r10d,%r8d
                  │  │  0x00007fd6590273a3: jae    0x00007fd659027649
  0.78%    1.56%  │  │  0x00007fd6590273a9: lea    (%r12,%r11,8),%r10
                  │  │  0x00007fd6590273ad: mov    0x10(%r10,%r8,4),%r10d  ;*aaload
                  │  │                                                ; - java.util.ArrayList::elementData@5 (line 418)
                  │  │                                                ; - java.util.ArrayList::get@7 (line 431)
                  │  │                                                ; - com.github.arnaudroger.RandomListAccess::testGet@8 (line 85)
                  │  │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@149 (line 439)
  0.07%    0.09%  │  │  0x00007fd6590273b2: mov    0x8(%r12,%r10,8),%r8d  ; implicit exception: dispatches to 0x00007fd6590279d9
  2.26%    3.32%  │  │  0x00007fd6590273b7: cmp    $0xf80022ae,%r8d   ;   {metadata(&apos;java/lang/Long&apos;)}
                  │  │  0x00007fd6590273be: jne    0x00007fd659027901
  0.42%    0.14%  │  │  0x00007fd6590273c4: lea    (%r12,%r10,8),%rdx  ;*checkcast
                  │  │                                                ; - com.github.arnaudroger.RandomListAccess::testGet@11 (line 85)
                  │  │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@149 (line 439)
                  │  │  0x00007fd6590273c8: mov    0x18(%rsp),%rsi
                  │  │  0x00007fd6590273cd: xchg   %ax,%ax
                  │  │  0x00007fd6590273cf: callq  0x00007fd658e2b020  ; OopMap{[96]=Oop [104]=Oop [112]=Oop [24]=Oop off=244}
                  │  │                                                ;*invokevirtual consume
                  │  │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@152 (line 439)
                  │  │                                                ;   {optimized virtual_call}
                  │  │  0x00007fd6590273d4: movabs $0x7fd66dc6b670,%r10
                  │  │  0x00007fd6590273de: callq  *%r10              ;*invokestatic nanoTime
                  │  │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@157 (line 440)
  0.44%           │  │  0x00007fd6590273e1: mov    %rax,%r11
                  │  │  0x00007fd6590273e4: mov    0x70(%rsp),%r8
                  │  │  0x00007fd6590273e9: xor    %eax,%eax
  0.39%    0.01%  │  │  0x00007fd6590273eb: mov    $0x1,%r10d
                  │  │  0x00007fd6590273f1: lock cmpxchg %r10d,0x130(%r8)
  6.58%   15.36%  │  │  0x00007fd6590273fa: sete   %r10b
                  │  │  0x00007fd6590273fe: movzbl %r10b,%r10d        ;*invokevirtual compareAndSwapInt
                  │  │                                                ; - java.util.concurrent.atomic.AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl::compareAndSet@15 (line 489)
                  │  │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@173 (line 441)
  0.35%           │  │  0x00007fd659027402: sub    0x10(%rsp),%r11
                  │  │  0x00007fd659027407: mov    0x8(%rsp),%r8
                  │  │  0x00007fd65902740c: add    %r11,%r8           ;*ladd
                  │  │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@163 (line 440)
                  │  │  0x00007fd65902740f: mov    %r8,%rbx
  0.35%           │  │  0x00007fd659027412: test   %r10d,%r10d
                  │  │  0x00007fd659027415: je     0x00007fd659027849  ;*ifeq
                  │  │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@176 (line 441)
                  │  │  0x00007fd65902741b: mov    0x60(%rsp),%r10
                  │  │  0x00007fd659027420: movzbl 0x95(%r10),%r10d   ;*getfield isFailing
                  │  │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@180 (line 443)
                  │  │  0x00007fd659027428: test   %r10d,%r10d
                  │  │  0x00007fd65902742b: jne    0x00007fd659027871  ;*ifeq
                  │  │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@183 (line 443)
  0.33%           │  │  0x00007fd659027431: mov    0x70(%rsp),%r8
                  │  │  0x00007fd659027436: movzbl 0x136(%r8),%r11d   ;*getfield readyInvocation
                  │  │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@196 (line 444)
                  │  │  0x00007fd65902743e: test   %r11d,%r11d
                  │  │  0x00007fd659027441: je     0x00007fd659027899
                  │  │  0x00007fd659027447: mov    %r12b,0x136(%r8)
  0.34%           │  │  0x00007fd65902744e: mov    %r12d,0x130(%r8)
                  │  │  0x00007fd659027455: lock addl $0x0,(%rsp)     ;*invokevirtual putIntVolatile
                  │  │                                                ; - java.util.concurrent.atomic.AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl::set@14 (line 499)
                  │  │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@214 (line 451)
  7.03%    5.40%  │  │  0x00007fd65902745a: mov    0x60(%rsp),%r10
                  │  │  0x00007fd65902745f: movzbl 0x94(%r10),%r10d   ;*getfield isDone
                  │  │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@295 (line 460)
                  │  │  0x00007fd659027467: mov    (%rsp),%r13
  5.38%           │  │  0x00007fd65902746b: add    $0x1,%r13          ; OopMap{r8=Oop [96]=Oop [104]=Oop [24]=Oop off=399}
                  │  │                                                ;*ifeq
                  │  │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@298 (line 460)
  0.37%           │  │  0x00007fd65902746f: test   %eax,0x15f55b8b(%rip)        # 0x00007fd66ef7d000
                  │  │                                                ;   {poll}
                  │  │  0x00007fd659027475: test   %r10d,%r10d
                  │  │  0x00007fd659027478: jne    0x00007fd6590275e7  ;*ifeq
                  │  │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@298 (line 460)
                  │  │  0x00007fd65902747e: mov    0x18(%rsp),%r14
                  ↘  │  0x00007fd659027483: xor    %eax,%eax
  0.36%              │  0x00007fd659027485: mov    $0x1,%r10d
                     │  0x00007fd65902748b: lock cmpxchg %r10d,0x12c(%r8)
  5.62%    2.29%     │  0x00007fd659027494: sete   %r11b
                     │  0x00007fd659027498: movzbl %r11b,%r11d        ;*invokevirtual compareAndSwapInt
                     │                                                ; - java.util.concurrent.atomic.AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl::compareAndSet@15 (line 489)
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@20 (line 419)
  0.38%    0.61%     │  0x00007fd65902749c: test   %r11d,%r11d
                     │  0x00007fd65902749f: je     0x00007fd6590276e5  ;*ifeq
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@23 (line 419)
                     │  0x00007fd6590274a5: mov    0x60(%rsp),%r10
                     │  0x00007fd6590274aa: movzbl 0x95(%r10),%r10d   ;*getfield isFailing
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@27 (line 421)
                     │  0x00007fd6590274b2: test   %r10d,%r10d
                     │  0x00007fd6590274b5: jne    0x00007fd65902771d  ;*ifeq
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@30 (line 421)
  0.41%              │  0x00007fd6590274bb: movzbl 0x136(%r8),%r11d   ;*getfield readyInvocation
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@43 (line 422)
                     │  0x00007fd6590274c3: test   %r11d,%r11d
                     │  0x00007fd6590274c6: jne    0x00007fd6590276ad  ;*ifne
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@46 (line 422)
                     │  0x00007fd6590274cc: mov    0x18(%r8),%r11d    ;*getfield random
                     │                                                ; - com.github.arnaudroger.RandomListAccess::nextIndex@2 (line 79)
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
                     │  0x00007fd6590274d0: mov    0xc(%r8),%r10d     ;*getfield size
                     │                                                ; - com.github.arnaudroger.RandomListAccess::nextIndex@6 (line 79)
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
  0.41%              │  0x00007fd6590274d4: mov    0x8(%r12,%r11,8),%ecx  ; implicit exception: dispatches to 0x00007fd659027925
                     │  0x00007fd6590274d9: test   %r10d,%r10d
                     │  0x00007fd6590274dc: jle    0x00007fd659027755  ;*ifgt
                     │                                                ; - java.util.Random::nextInt@1 (line 387)
                     │                                                ; - com.github.arnaudroger.RandomListAccess::nextIndex@9 (line 79)
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
                     │  0x00007fd6590274e2: cmp    $0xf8014b28,%ecx   ;   {metadata(&apos;java/util/Random&apos;)}
                     │  0x00007fd6590274e8: jne    0x00007fd659027671
                     │  0x00007fd6590274ee: lea    (%r12,%r11,8),%r9  ;*invokevirtual next
                     │                                                ; - java.util.Random::nextInt@17 (line 390)
                     │                                                ; - com.github.arnaudroger.RandomListAccess::nextIndex@9 (line 79)
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
  0.36%              │  0x00007fd6590274f2: mov    0x18(%r9),%r11d    ;*getfield seed
                     │                                                ; - java.util.Random::next@1 (line 200)
                     │                                                ; - java.util.Random::nextInt@17 (line 390)
                     │                                                ; - com.github.arnaudroger.RandomListAccess::nextIndex@9 (line 79)
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
                     │  0x00007fd6590274f6: mov    0x10(%r12,%r11,8),%rax  ;*invokevirtual compareAndSwapLong
                     │                                                ; - java.util.concurrent.atomic.AtomicLong::compareAndSet@9 (line 147)
                     │                                                ; - java.util.Random::next@32 (line 204)
                     │                                                ; - java.util.Random::nextInt@17 (line 390)
                     │                                                ; - com.github.arnaudroger.RandomListAccess::nextIndex@9 (line 79)
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
                     │                                                ; implicit exception: dispatches to 0x00007fd65902795d
                     │  0x00007fd6590274fb: mov    %rax,%rdi
                     │  0x00007fd6590274fe: movabs $0x5deece66d,%rcx
  0.32%              │  0x00007fd659027508: imul   %rcx,%rdi
                     │  0x00007fd65902750c: add    $0xb,%rdi          ;*ladd
                     │                                                ; - java.util.Random::next@20 (line 203)
                     │                                                ; - java.util.Random::nextInt@17 (line 390)
                     │                                                ; - com.github.arnaudroger.RandomListAccess::nextIndex@9 (line 79)
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
                     │  0x00007fd659027510: mov    %rdi,%rdx
                     │  0x00007fd659027513: movabs $0xffffffffffff,%rcx
  0.40%              │  0x00007fd65902751d: and    %rcx,%rdx          ;*land
                     │                                                ; - java.util.Random::next@24 (line 203)
                     │                                                ; - java.util.Random::nextInt@17 (line 390)
                     │                                                ; - com.github.arnaudroger.RandomListAccess::nextIndex@9 (line 79)
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
                     │  0x00007fd659027520: lock cmpxchg %rdx,0x10(%r12,%r11,8)
  5.73%    7.80%     │  0x00007fd659027527: sete   %cl
                     │  0x00007fd65902752a: movzbl %cl,%ecx           ;*invokevirtual compareAndSwapLong
                     │                                                ; - java.util.concurrent.atomic.AtomicLong::compareAndSet@9 (line 147)
                     │                                                ; - java.util.Random::next@32 (line 204)
                     │                                                ; - java.util.Random::nextInt@17 (line 390)
                     │                                                ; - com.github.arnaudroger.RandomListAccess::nextIndex@9 (line 79)
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
  0.43%    0.56%     │  0x00007fd65902752d: test   %ecx,%ecx
                     │  0x00007fd65902752f: je     0x00007fd659027791  ;*ifeq
                     │                                                ; - java.util.Random::next@35 (line 204)
                     │                                                ; - java.util.Random::nextInt@17 (line 390)
                     │                                                ; - com.github.arnaudroger.RandomListAccess::nextIndex@9 (line 79)
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
                     │  0x00007fd659027535: shr    $0x11,%rdi
                     │  0x00007fd659027539: mov    %r10d,%ebp
                     │  0x00007fd65902753c: dec    %ebp               ;*isub
                     │                                                ; - java.util.Random::nextInt@23 (line 391)
                     │                                                ; - com.github.arnaudroger.RandomListAccess::nextIndex@9 (line 79)
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
  0.38%              │  0x00007fd65902753e: mov    %r10d,%ecx
                     │  0x00007fd659027541: and    %ebp,%ecx          ;*iand
                     │                                                ; - java.util.Random::nextInt@27 (line 392)
                     │                                                ; - com.github.arnaudroger.RandomListAccess::nextIndex@9 (line 79)
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
                     │  0x00007fd659027543: and    $0x7fffffff,%rdi
                     │  0x00007fd65902754a: mov    %edi,%r11d         ;*l2i  ; - java.util.Random::next@45 (line 205)
                     │                                                ; - java.util.Random::nextInt@17 (line 390)
                     │                                                ; - com.github.arnaudroger.RandomListAccess::nextIndex@9 (line 79)
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
  0.33%              │  0x00007fd65902754d: test   %ecx,%ecx
                     │  0x00007fd65902754f: je     0x00007fd6590277dd  ;*ifne
                     │                                                ; - java.util.Random::nextInt@28 (line 392)
                     │                                                ; - com.github.arnaudroger.RandomListAccess::nextIndex@9 (line 79)
                     │                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
  0.01%              │  0x00007fd659027555: test   %r10d,%r10d
                     │  0x00007fd659027558: je     0x00007fd659027611
                     │  0x00007fd65902755e: mov    %r11d,%eax
                     │  0x00007fd659027561: cmp    $0x80000000,%eax
                   ╭ │  0x00007fd659027566: jne    0x00007fd659027570
                   │ │  0x00007fd659027568: xor    %edx,%edx
                   │ │  0x00007fd65902756a: cmp    $0xffffffff,%r10d
                   │╭│  0x00007fd65902756e: je     0x00007fd659027574
  0.28%            ↘││  0x00007fd659027570: cltd   
                    ││  0x00007fd659027571: idiv   %r10d              ;*irem
                    ││                                                ; - java.util.Random::nextInt@52 (line 396)
                    ││                                                ; - com.github.arnaudroger.RandomListAccess::nextIndex@9 (line 79)
                    ││                                                ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
  0.63%             ↘│  0x00007fd659027574: sub    %edx,%r11d
  0.35%              │  0x00007fd659027577: add    %r10d,%r11d
                     │  0x00007fd65902757a: dec    %r11d
                     │  0x00007fd65902757d: test   %r11d,%r11d
                     ╰  0x00007fd659027580: jge    0x00007fd65902733e  ;*aload_0
                                                                      ; - java.util.Random::nextInt@61 (line 397)
                                                                      ; - com.github.arnaudroger.RandomListAccess::nextIndex@9 (line 79)
                                                                      ; - com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
                        0x00007fd659027586: mov    %r9,0x20(%rsp)
                        0x00007fd65902758b: mov    %r10d,0x10(%rsp)
                        0x00007fd659027590: mov    %rbx,0x8(%rsp)
                        0x00007fd659027595: mov    %r13,(%rsp)
....................................................................................................
 55.81%   56.56%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [vdso], [unknown] (16 bytes) 

 <no assembly is recorded, native region>
....................................................................................................
 21.11%   35.14%  <total for region 2>

....[Hottest Regions]...............................................................................
 55.81%   56.56%         C2, level 4  com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub, version 552 (569 bytes) 
 21.11%   35.14%              [vdso]  [unknown] (16 bytes) 
  3.80%    0.27%        libc-2.26.so  __clock_gettime (74 bytes) 
  3.42%    0.87%           libjvm.so  _ZN2os13javaTimeNanosEv (46 bytes) 
  3.23%    1.09%              [vdso]  [unknown] (39 bytes) 
  2.80%                       [vdso]  [unknown] (52 bytes) 
  2.09%    0.59%              [vdso]  [unknown] (36 bytes) 
  1.46%    0.21%         C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 528 (65 bytes) 
  1.43%    1.42%   [kernel.kallsyms]  [unknown] (0 bytes) 
  1.36%    1.53%              [vdso]  [unknown] (25 bytes) 
  1.22%                       [vdso]  [unknown] (7 bytes) 
  0.16%    0.01%   [kernel.kallsyms]  [unknown] (30 bytes) 
  0.08%            [kernel.kallsyms]  [unknown] (0 bytes) 
  0.08%            [kernel.kallsyms]  [unknown] (1 bytes) 
  0.07%            [kernel.kallsyms]  [unknown] (0 bytes) 
  0.06%    0.03%   [kernel.kallsyms]  [unknown] (43 bytes) 
  0.04%            [kernel.kallsyms]  [unknown] (9 bytes) 
  0.04%    0.02%   [kernel.kallsyms]  [unknown] (85 bytes) 
  0.04%            [kernel.kallsyms]  [unknown] (27 bytes) 
  0.04%    0.04%   [kernel.kallsyms]  [unknown] (30 bytes) 
  1.69%    2.22%  <...other 259 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 55.81%   56.56%         C2, level 4  com.github.arnaudroger.generated.RandomListAccess_testGet_jmhTest::testGet_avgt_jmhStub, version 552 
 31.81%   38.35%              [vdso]  [unknown] 
  3.80%    0.27%        libc-2.26.so  __clock_gettime 
  3.42%    0.87%           libjvm.so  _ZN2os13javaTimeNanosEv 
  2.76%    2.63%   [kernel.kallsyms]  [unknown] 
  1.46%    0.21%         C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 528 
  0.09%    0.06%      hsdis-amd64.so  [unknown] 
  0.06%    0.09%        libc-2.26.so  vfprintf 
  0.05%    0.08%        libc-2.26.so  _IO_fwrite 
  0.04%    0.01%           libjvm.so  _ZN7Monitor5ILockEP6Thread 
  0.03%    0.02%        libc-2.26.so  __strchr_avx2 
  0.03%           libpthread-2.26.so  __libc_write 
  0.03%    0.03%           libjvm.so  _ZN12outputStream15update_positionEPKcm 
  0.03%                    libjvm.so  _ZN7Monitor6unlockEv 
  0.02%    0.04%        libc-2.26.so  __strlen_avx2 
  0.02%    0.07%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.02%    0.01%  libpthread-2.26.so  __pthread_enable_asynccancel 
  0.02%    0.02%           libjvm.so  _ZN10decode_env12handle_eventEPKcPh 
  0.02%    0.04%        libc-2.26.so  _IO_default_xsputn 
  0.02%    0.01%           libjvm.so  _ZN13defaultStream5writeEPKcm 
  0.48%    0.32%  <...other 45 warm methods...>
....................................................................................................
100.00%   99.68%  <totals>

....[Distribution by Source]........................................................................
 57.26%   56.77%         C2, level 4
 31.81%   38.35%              [vdso]
  4.08%    0.68%        libc-2.26.so
  3.89%    1.47%           libjvm.so
  2.76%    2.63%   [kernel.kallsyms]
  0.10%    0.06%      hsdis-amd64.so
  0.07%    0.01%  libpthread-2.26.so
  0.02%    0.01%         C1, level 3
  0.01%    0.01%         interpreter
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:25

Benchmark                      (size)  Mode  Cnt   Score   Error  Units
RandomListAccess.testGet         1000  avgt   10  23.682 ± 0.164  ns/op
RandomListAccess.testGet:·asm    1000  avgt          NaN            ---
