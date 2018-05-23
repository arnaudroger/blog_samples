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
# Parameters: (size = 1000000)

# Run progress: 0.00% complete, ETA 00:00:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 37.089 ns/op
# Warmup Iteration   2: 36.776 ns/op
# Warmup Iteration   3: 33.664 ns/op
# Warmup Iteration   4: 33.789 ns/op
# Warmup Iteration   5: 33.777 ns/op
# Warmup Iteration   6: 33.738 ns/op
# Warmup Iteration   7: 33.894 ns/op
# Warmup Iteration   8: 33.807 ns/op
# Warmup Iteration   9: 34.009 ns/op
# Warmup Iteration  10: 33.876 ns/op
Iteration   1: 34.769 ns/op
Iteration   2: 34.005 ns/op
Iteration   3: 33.820 ns/op
Iteration   4: 33.695 ns/op
Iteration   5: 33.942 ns/op
Iteration   6: 34.253 ns/op
Iteration   7: 33.948 ns/op
Iteration   8: 33.738 ns/op
Iteration   9: 33.816 ns/op
Iteration  10: 33.804 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.RandomArrayAccess.testGet":
  33.979 ±(99.9%) 0.484 ns/op [Average]
  (min, avg, max) = (33.695, 33.979, 34.769), stdev = 0.320
  CI (99.9%): [33.495, 34.463] (assumes normal distribution)

Secondary result "com.github.arnaudroger.RandomArrayAccess.testGet:·asm":
PrintAssembly processed: 167601 total address lines.
Perf output processed (skipped 13.316 seconds):
 Column 1: cycles (10275 events)
 Column 2: instructions (10274 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub, version 547 (492 bytes) 

                     0x00007f28212328b7: je     0x00007f2821232e2a
                     0x00007f28212328bd: mov    0x60(%rsp),%r10
                     0x00007f28212328c2: test   %r10,%r10
                     0x00007f28212328c5: je     0x00007f2821232e2a
                     0x00007f28212328cb: test   %r14,%r14
                     0x00007f28212328ce: je     0x00007f2821232e2a  ;*getstatic setupInvocationMutexUpdater
                                                                   ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@13 (line 419)
                     0x00007f28212328d4: xor    %r13d,%r13d
                     0x00007f28212328d7: xor    %ebx,%ebx
                  ╭  0x00007f28212328d9: jmpq   0x00007f28212329ff
  0.01%           │  0x00007f28212328de: mov    %r14,0x18(%rsp)
  0.31%           │  0x00007f28212328e3: mov    %r13,(%rsp)
                  │  0x00007f28212328e7: mov    %rbx,0x8(%rsp)     ;*ifge
                  │                                                ; - java.util.Random::nextInt@58 (line 396)
                  │                                                ; - com.github.arnaudroger.RandomArrayAccess::nextIndex@9 (line 63)
                  │                                                ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
                  │  0x00007f28212328ec: mov    %edx,0x10(%r8)
                  │  0x00007f28212328f0: movb   $0x1,0x136(%r8)
  0.24%           │  0x00007f28212328f8: mov    %r12d,0x12c(%r8)
                  │  0x00007f28212328ff: mov    %r8,0x70(%rsp)
                  │  0x00007f2821232904: lock addl $0x0,(%rsp)     ;*invokevirtual putIntVolatile
                  │                                                ; - java.util.concurrent.atomic.AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl::set@14 (line 499)
                  │                                                ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@66 (line 430)
  7.61%    9.54%  │  0x00007f2821232909: movabs $0x7f2837120670,%r10
                  │  0x00007f2821232913: callq  *%r10              ;*invokestatic nanoTime
                  │                                                ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@140 (line 438)
  0.30%           │  0x00007f2821232916: mov    %rax,0x10(%rsp)
                  │  0x00007f282123291b: mov    0x70(%rsp),%r10
                  │  0x00007f2821232920: mov    0x14(%r10),%r8d    ;*getfield data
                  │                                                ; - com.github.arnaudroger.RandomArrayAccess::testGet@1 (line 69)
                  │                                                ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@149 (line 439)
  0.40%    0.19%  │  0x00007f2821232924: mov    0x10(%r10),%r10d   ;*getfield index
                  │                                                ; - com.github.arnaudroger.RandomArrayAccess::testGet@5 (line 69)
                  │                                                ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@149 (line 439)
  0.29%           │  0x00007f2821232928: mov    0xc(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x00007f2821232eb9
  1.80%    6.15%  │  0x00007f282123292d: cmp    %r11d,%r10d
                  │  0x00007f2821232930: jae    0x00007f2821232bc9
  0.60%    1.91%  │  0x00007f2821232936: lea    (%r12,%r8,8),%r11
                  │  0x00007f282123293a: mov    0x10(%r11,%r10,4),%r11d
 14.29%    8.66%  │  0x00007f282123293f: mov    %r11,%rdx
                  │  0x00007f2821232942: shl    $0x3,%rdx          ;*aaload
                  │                                                ; - com.github.arnaudroger.RandomArrayAccess::testGet@8 (line 69)
                  │                                                ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@149 (line 439)
  0.32%           │  0x00007f2821232946: mov    0x18(%rsp),%rsi
  0.01%           │  0x00007f282123294b: callq  0x00007f2821046020  ; OopMap{[96]=Oop [104]=Oop [112]=Oop [24]=Oop off=208}
                  │                                                ;*invokevirtual consume
                  │                                                ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@152 (line 439)
                  │                                                ;   {optimized virtual_call}
  0.34%           │  0x00007f2821232950: movabs $0x7f2837120670,%r10
                  │  0x00007f282123295a: callq  *%r10              ;*invokestatic nanoTime
                  │                                                ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@157 (line 440)
  0.32%           │  0x00007f282123295d: mov    %rax,%r11
                  │  0x00007f2821232960: mov    0x70(%rsp),%r8
                  │  0x00007f2821232965: xor    %eax,%eax
  0.19%    0.02%  │  0x00007f2821232967: mov    $0x1,%r10d
                  │  0x00007f282123296d: lock cmpxchg %r10d,0x130(%r8)
  6.08%   15.79%  │  0x00007f2821232976: sete   %r10b
                  │  0x00007f282123297a: movzbl %r10b,%r10d        ;*invokevirtual compareAndSwapInt
                  │                                                ; - java.util.concurrent.atomic.AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl::compareAndSet@15 (line 489)
                  │                                                ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@173 (line 441)
  0.32%           │  0x00007f282123297e: sub    0x10(%rsp),%r11
                  │  0x00007f2821232983: mov    0x8(%rsp),%r8
                  │  0x00007f2821232988: add    %r11,%r8           ;*ladd
                  │                                                ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@163 (line 440)
                  │  0x00007f282123298b: mov    %r8,%rbx
  0.28%           │  0x00007f282123298e: test   %r10d,%r10d
                  │  0x00007f2821232991: je     0x00007f2821232d95  ;*ifeq
                  │                                                ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@176 (line 441)
                  │  0x00007f2821232997: mov    0x60(%rsp),%r10
                  │  0x00007f282123299c: movzbl 0x95(%r10),%r10d   ;*getfield isFailing
                  │                                                ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@180 (line 443)
                  │  0x00007f28212329a4: test   %r10d,%r10d
                  │  0x00007f28212329a7: jne    0x00007f2821232dbd  ;*ifeq
                  │                                                ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@183 (line 443)
  0.32%           │  0x00007f28212329ad: mov    0x70(%rsp),%r8
                  │  0x00007f28212329b2: movzbl 0x136(%r8),%r11d   ;*getfield readyInvocation
                  │                                                ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@196 (line 444)
                  │  0x00007f28212329ba: test   %r11d,%r11d
                  │  0x00007f28212329bd: je     0x00007f2821232de5
                  │  0x00007f28212329c3: mov    %r12b,0x136(%r8)
  0.33%           │  0x00007f28212329ca: mov    %r12d,0x130(%r8)
                  │  0x00007f28212329d1: lock addl $0x0,(%rsp)     ;*invokevirtual putIntVolatile
                  │                                                ; - java.util.concurrent.atomic.AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl::set@14 (line 499)
                  │                                                ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@214 (line 451)
  6.07%    5.33%  │  0x00007f28212329d6: mov    0x60(%rsp),%r10
                  │  0x00007f28212329db: movzbl 0x94(%r10),%r11d   ;*getfield isDone
                  │                                                ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@295 (line 460)
                  │  0x00007f28212329e3: mov    (%rsp),%r13
  4.70%           │  0x00007f28212329e7: add    $0x1,%r13          ; OopMap{r8=Oop [96]=Oop [104]=Oop [24]=Oop off=363}
                  │                                                ;*ifeq
                  │                                                ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@298 (line 460)
  0.33%           │  0x00007f28212329eb: test   %eax,0x171ff60f(%rip)        # 0x00007f2838432000
                  │                                                ;   {poll}
  0.02%           │  0x00007f28212329f1: test   %r11d,%r11d
                  │  0x00007f28212329f4: jne    0x00007f2821232b67  ;*ifeq
                  │                                                ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@298 (line 460)
                  │  0x00007f28212329fa: mov    0x18(%rsp),%r14
                  ↘  0x00007f28212329ff: xor    %eax,%eax
  0.35%              0x00007f2821232a01: mov    $0x1,%r11d
  0.01%              0x00007f2821232a07: lock cmpxchg %r11d,0x12c(%r8)
  4.89%    1.59%     0x00007f2821232a10: sete   %r10b
                     0x00007f2821232a14: movzbl %r10b,%r10d        ;*invokevirtual compareAndSwapInt
                                                                   ; - java.util.concurrent.atomic.AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl::compareAndSet@15 (line 489)
                                                                   ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@20 (line 419)
  0.26%    1.20%     0x00007f2821232a18: test   %r10d,%r10d
                     0x00007f2821232a1b: je     0x00007f2821232c65  ;*ifeq
                                                                   ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@23 (line 419)
                     0x00007f2821232a21: mov    0x60(%rsp),%r10
                     0x00007f2821232a26: movzbl 0x95(%r10),%r10d   ;*getfield isFailing
                                                                   ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@27 (line 421)
                     0x00007f2821232a2e: test   %r10d,%r10d
                     0x00007f2821232a31: jne    0x00007f2821232c9d  ;*ifeq
                                                                   ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@30 (line 421)
  0.26%    0.38%     0x00007f2821232a37: movzbl 0x136(%r8),%r11d   ;*getfield readyInvocation
                                                                   ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@43 (line 422)
                     0x00007f2821232a3f: test   %r11d,%r11d
                     0x00007f2821232a42: jne    0x00007f2821232c2d  ;*ifne
                                                                   ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@46 (line 422)
                     0x00007f2821232a48: mov    0x18(%r8),%r11d    ;*getfield random
                                                                   ; - com.github.arnaudroger.RandomArrayAccess::nextIndex@2 (line 63)
                                                                   ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
                     0x00007f2821232a4c: mov    0xc(%r8),%r10d     ;*getfield size
                                                                   ; - com.github.arnaudroger.RandomArrayAccess::nextIndex@6 (line 63)
                                                                   ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
  0.25%              0x00007f2821232a50: mov    0x8(%r12,%r11,8),%r9d  ; implicit exception: dispatches to 0x00007f2821232e4d
                     0x00007f2821232a55: test   %r10d,%r10d
                     0x00007f2821232a58: jle    0x00007f2821232cd5  ;*ifgt
                                                                   ; - java.util.Random::nextInt@1 (line 387)
                                                                   ; - com.github.arnaudroger.RandomArrayAccess::nextIndex@9 (line 63)
                                                                   ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
                     0x00007f2821232a5e: cmp    $0xf8014b28,%r9d   ;   {metadata(&apos;java/util/Random&apos;)}
                     0x00007f2821232a65: jne    0x00007f2821232bf1
                     0x00007f2821232a6b: lea    (%r12,%r11,8),%r9  ;*invokevirtual next
                                                                   ; - java.util.Random::nextInt@17 (line 390)
                                                                   ; - com.github.arnaudroger.RandomArrayAccess::nextIndex@9 (line 63)
                                                                   ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
  0.39%              0x00007f2821232a6f: mov    0x18(%r9),%r11d    ;*getfield seed
                                                                   ; - java.util.Random::next@1 (line 200)
                                                                   ; - java.util.Random::nextInt@17 (line 390)
                                                                   ; - com.github.arnaudroger.RandomArrayAccess::nextIndex@9 (line 63)
                                                                   ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
                     0x00007f2821232a73: mov    0x10(%r12,%r11,8),%rax  ;*invokevirtual compareAndSwapLong
                                                                   ; - java.util.concurrent.atomic.AtomicLong::compareAndSet@9 (line 147)
                                                                   ; - java.util.Random::next@32 (line 204)
                                                                   ; - java.util.Random::nextInt@17 (line 390)
                                                                   ; - com.github.arnaudroger.RandomArrayAccess::nextIndex@9 (line 63)
                                                                   ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
                                                                   ; implicit exception: dispatches to 0x00007f2821232e85
                     0x00007f2821232a78: mov    %rax,%rdi
                     0x00007f2821232a7b: movabs $0x5deece66d,%rcx
  0.25%              0x00007f2821232a85: imul   %rcx,%rdi
                     0x00007f2821232a89: add    $0xb,%rdi          ;*ladd
                                                                   ; - java.util.Random::next@20 (line 203)
                                                                   ; - java.util.Random::nextInt@17 (line 390)
                                                                   ; - com.github.arnaudroger.RandomArrayAccess::nextIndex@9 (line 63)
                                                                   ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
                     0x00007f2821232a8d: mov    %rdi,%rdx
                     0x00007f2821232a90: movabs $0xffffffffffff,%rcx
  0.37%              0x00007f2821232a9a: and    %rcx,%rdx          ;*land
                                                                   ; - java.util.Random::next@24 (line 203)
                                                                   ; - java.util.Random::nextInt@17 (line 390)
                                                                   ; - com.github.arnaudroger.RandomArrayAccess::nextIndex@9 (line 63)
                                                                   ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
                     0x00007f2821232a9d: lock cmpxchg %rdx,0x10(%r12,%r11,8)
  5.13%    7.03%     0x00007f2821232aa4: sete   %cl
                     0x00007f2821232aa7: movzbl %cl,%ecx           ;*invokevirtual compareAndSwapLong
                                                                   ; - java.util.concurrent.atomic.AtomicLong::compareAndSet@9 (line 147)
                                                                   ; - java.util.Random::next@32 (line 204)
                                                                   ; - java.util.Random::nextInt@17 (line 390)
                                                                   ; - com.github.arnaudroger.RandomArrayAccess::nextIndex@9 (line 63)
                                                                   ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
  0.26%    1.08%     0x00007f2821232aaa: test   %ecx,%ecx
                     0x00007f2821232aac: je     0x00007f2821232d11  ;*ifeq
                                                                   ; - java.util.Random::next@35 (line 204)
                                                                   ; - java.util.Random::nextInt@17 (line 390)
                                                                   ; - com.github.arnaudroger.RandomArrayAccess::nextIndex@9 (line 63)
                                                                   ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
  0.02%              0x00007f2821232ab2: shr    $0x11,%rdi
                     0x00007f2821232ab6: mov    %r10d,%ebp
                     0x00007f2821232ab9: dec    %ebp               ;*isub
                                                                   ; - java.util.Random::nextInt@23 (line 391)
                                                                   ; - com.github.arnaudroger.RandomArrayAccess::nextIndex@9 (line 63)
                                                                   ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
  0.28%    0.43%     0x00007f2821232abb: mov    %r10d,%ecx
  0.01%              0x00007f2821232abe: and    %ebp,%ecx          ;*iand
                                                                   ; - java.util.Random::nextInt@27 (line 392)
                                                                   ; - com.github.arnaudroger.RandomArrayAccess::nextIndex@9 (line 63)
                                                                   ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
                     0x00007f2821232ac0: and    $0x7fffffff,%rdi
                     0x00007f2821232ac7: mov    %edi,%r11d         ;*l2i  ; - java.util.Random::next@45 (line 205)
                                                                   ; - java.util.Random::nextInt@17 (line 390)
                                                                   ; - com.github.arnaudroger.RandomArrayAccess::nextIndex@9 (line 63)
                                                                   ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
  0.24%              0x00007f2821232aca: test   %ecx,%ecx
                     0x00007f2821232acc: je     0x00007f2821232d5d  ;*ifne
                                                                   ; - java.util.Random::nextInt@28 (line 392)
                                                                   ; - com.github.arnaudroger.RandomArrayAccess::nextIndex@9 (line 63)
                                                                   ; - com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@51 (line 423)
                     0x00007f2821232ad2: test   %r10d,%r10d
                     0x00007f2821232ad5: je     0x00007f2821232b91
                     0x00007f2821232adb: mov    %r11d,%eax
....................................................................................................
 58.49%   59.30%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [vdso], [unknown] (16 bytes) 

 <no assembly is recorded, native region>
....................................................................................................
 19.85%   35.82%  <total for region 2>

....[Hottest Regions]...............................................................................
 58.49%   59.30%         C2, level 4  com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub, version 547 (492 bytes) 
 19.85%   35.82%              [vdso]  [unknown] (16 bytes) 
  3.55%    0.02%        libc-2.26.so  __clock_gettime (73 bytes) 
  3.09%    0.02%           libjvm.so  _ZN2os13javaTimeNanosEv (46 bytes) 
  2.89%                       [vdso]  [unknown] (39 bytes) 
  2.45%                       [vdso]  [unknown] (52 bytes) 
  1.38%    0.01%              [vdso]  [unknown] (36 bytes) 
  1.35%    1.44%              [vdso]  [unknown] (31 bytes) 
  1.23%                  C2, level 4  com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub, version 547 (13 bytes) 
  1.18%                       [vdso]  [unknown] (7 bytes) 
  1.11%    0.10%         C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 530 (53 bytes) 
  0.36%    0.32%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.24%    0.04%   [kernel.kallsyms]  [unknown] (78 bytes) 
  0.15%    0.03%   [kernel.kallsyms]  [unknown] (39 bytes) 
  0.08%    0.01%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.07%    0.01%   [kernel.kallsyms]  [unknown] (27 bytes) 
  0.07%    0.09%           libjvm.so  _ZN10fileStream5writeEPKcm (14 bytes) 
  0.07%    0.18%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ (102 bytes) 
  0.06%    0.04%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.05%    0.02%  libpthread-2.26.so  __pthread_getspecific (58 bytes) 
  2.29%    2.57%  <...other 321 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 59.73%   59.30%         C2, level 4  com.github.arnaudroger.generated.RandomArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub, version 547 
 29.11%   37.27%              [vdso]  [unknown] 
  3.55%    0.02%        libc-2.26.so  __clock_gettime 
  3.09%    0.02%           libjvm.so  _ZN2os13javaTimeNanosEv 
  2.13%    2.01%   [kernel.kallsyms]  [unknown] 
  1.11%    0.10%         C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 530 
  0.09%    0.12%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.08%    0.18%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.07%    0.04%      hsdis-amd64.so  [unknown] 
  0.05%    0.02%  libpthread-2.26.so  __pthread_getspecific 
  0.05%    0.04%        libc-2.26.so  _IO_fwrite 
  0.05%    0.02%  libpthread-2.26.so  __libc_write 
  0.04%           libpthread-2.26.so  __pthread_enable_asynccancel 
  0.04%    0.04%        libc-2.26.so  _IO_default_xsputn 
  0.04%    0.02%           libjvm.so  _ZN7Monitor5ILockEP6Thread 
  0.03%                 libc-2.26.so  _IO_fflush 
  0.03%    0.03%        libc-2.26.so  __strchrnul_avx2 
  0.03%                    libjvm.so  _ZNK12MutableSpace13used_in_wordsEv 
  0.03%                    libjvm.so  _ZN12outputStream12do_vsnprintfEPcmPKcP13__va_list_tagbRm 
  0.03%    0.08%           libjvm.so  _ZN13xmlTextStream5writeEPKcm 
  0.64%    0.29%  <...other 55 warm methods...>
....................................................................................................
100.00%   99.57%  <totals>

....[Distribution by Source]........................................................................
 60.85%   59.39%         C2, level 4
 29.11%   37.27%              [vdso]
  3.87%    0.36%        libc-2.26.so
  3.75%    0.84%           libjvm.so
  2.13%    2.01%   [kernel.kallsyms]
  0.18%    0.07%  libpthread-2.26.so
  0.08%    0.05%      hsdis-amd64.so
  0.03%    0.01%         interpreter
  0.01%                    libzip.so
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:24

Benchmark                        (size)  Mode  Cnt   Score   Error  Units
RandomArrayAccess.testGet       1000000  avgt   10  33.979 ± 0.484  ns/op
RandomArrayAccess.testGet:·asm  1000000  avgt          NaN            ---
