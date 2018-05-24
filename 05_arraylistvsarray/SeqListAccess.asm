# JMH version: 1.19
# VM version: JDK 1.8.0_131, VM 25.131-b11
# VM invoker: /usr/lib/jvm/java-8-oracle/jre/bin/java
# VM options: <none>
# Warmup: 20 iterations, 1 s each
# Measurement: 20 iterations, 1 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Throughput, ops/time
# Benchmark: com.github.arnaudroger.SeqListAccess.testClassicForEach
# Parameters: (size = 1000000)

# Run progress: 0.00% complete, ETA 00:00:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 210.904 ops/s
# Warmup Iteration   2: 229.573 ops/s
# Warmup Iteration   3: 231.371 ops/s
# Warmup Iteration   4: 229.461 ops/s
# Warmup Iteration   5: 231.142 ops/s
# Warmup Iteration   6: 229.813 ops/s
# Warmup Iteration   7: 230.114 ops/s
# Warmup Iteration   8: 230.451 ops/s
# Warmup Iteration   9: 228.927 ops/s
# Warmup Iteration  10: 230.779 ops/s
# Warmup Iteration  11: 228.518 ops/s
# Warmup Iteration  12: 230.327 ops/s
# Warmup Iteration  13: 231.162 ops/s
# Warmup Iteration  14: 229.281 ops/s
# Warmup Iteration  15: 230.874 ops/s
# Warmup Iteration  16: 226.730 ops/s
# Warmup Iteration  17: 171.495 ops/s
# Warmup Iteration  18: 171.489 ops/s
# Warmup Iteration  19: 170.708 ops/s
# Warmup Iteration  20: 170.875 ops/s
Iteration   1: 171.527 ops/s
Iteration   2: 170.829 ops/s
Iteration   3: 171.404 ops/s
Iteration   4: 169.951 ops/s
Iteration   5: 171.497 ops/s
Iteration   6: 171.148 ops/s
Iteration   7: 171.806 ops/s
Iteration   8: 171.363 ops/s
Iteration   9: 170.088 ops/s
Iteration  10: 171.583 ops/s
Iteration  11: 171.292 ops/s
Iteration  12: 171.109 ops/s
Iteration  13: 171.416 ops/s
Iteration  14: 170.938 ops/s
Iteration  15: 171.302 ops/s
Iteration  16: 171.904 ops/s
Iteration  17: 171.205 ops/s
Iteration  18: 171.657 ops/s
Iteration  19: 170.938 ops/s
Iteration  20: 171.828 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.SeqListAccess.testClassicForEach":
  171.239 ±(99.9%) 0.445 ops/s [Average]
  (min, avg, max) = (169.951, 171.239, 171.904), stdev = 0.513
  CI (99.9%): [170.794, 171.684] (assumes normal distribution)

Secondary result "com.github.arnaudroger.SeqListAccess.testClassicForEach:·asm":
PrintAssembly processed: 176024 total address lines.
Perf output processed (skipped 23.589 seconds):
 Column 1: cycles (20524 events)
 Column 2: instructions (20514 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.github.arnaudroger.SeqListAccess::testClassicForEach, version 527 (121 bytes) 

                                                                    ; - com.github.arnaudroger.SeqListAccess::testClassicForEach@9 (line 68)
                      0x00007ff489232e89: cmp    %r11d,%r10d
                  ╭   0x00007ff489232e8c: je     0x00007ff489232f22  ;*if_icmpeq
                  │                                                 ; - java.util.ArrayList$Itr::hasNext@11 (line 846)
                  │                                                 ; - com.github.arnaudroger.SeqListAccess::testClassicForEach@9 (line 68)
                  │   0x00007ff489232e92: mov    (%rsp),%r11
                  │   0x00007ff489232e96: test   %r11,%r11
                  │   0x00007ff489232e99: je     0x00007ff489232fad
                  │   0x00007ff489232e9f: nop                       ;*aload_2
                  │                                                 ; - com.github.arnaudroger.SeqListAccess::testClassicForEach@17 (line 68)
  4.58%   10.44%  │↗  0x00007ff489232ea0: mov    0xc(%r12,%r9,8),%ecx  ;*getfield modCount
                  ││                                                ; - java.util.ArrayList$Itr::checkForComodification@4 (line 900)
                  ││                                                ; - java.util.ArrayList$Itr::next@1 (line 851)
                  ││                                                ; - com.github.arnaudroger.SeqListAccess::testClassicForEach@18 (line 68)
                  ││                                                ; implicit exception: dispatches to 0x00007ff489232fe9
                  ││  0x00007ff489232ea5: mov    0x14(%rbp),%r11d   ;*getfield expectedModCount
                  ││                                                ; - java.util.ArrayList$Itr::checkForComodification@8 (line 900)
                  ││                                                ; - java.util.ArrayList$Itr::next@1 (line 851)
                  ││                                                ; - com.github.arnaudroger.SeqListAccess::testClassicForEach@18 (line 68)
                  ││  0x00007ff489232ea9: cmp    %r11d,%ecx
                  ││  0x00007ff489232eac: jne    0x00007ff489232f49  ;*if_icmpeq
                  ││                                                ; - java.util.ArrayList$Itr::checkForComodification@11 (line 900)
                  ││                                                ; - java.util.ArrayList$Itr::next@1 (line 851)
                  ││                                                ; - com.github.arnaudroger.SeqListAccess::testClassicForEach@18 (line 68)
                  ││  0x00007ff489232eb2: mov    0x10(%r12,%r9,8),%r11d  ;*getfield size
                  ││                                                ; - java.util.ArrayList::access$100@1 (line 106)
                  ││                                                ; - java.util.ArrayList$Itr::next@14 (line 853)
                  ││                                                ; - com.github.arnaudroger.SeqListAccess::testClassicForEach@18 (line 68)
  4.76%    7.81%  ││  0x00007ff489232eb7: cmp    %r11d,%r10d
                  ││  0x00007ff489232eba: jge    0x00007ff489232f61  ;*if_icmplt
                  ││                                                ; - java.util.ArrayList$Itr::next@17 (line 853)
                  ││                                                ; - com.github.arnaudroger.SeqListAccess::testClassicForEach@18 (line 68)
  0.01%           ││  0x00007ff489232ec0: mov    0x14(%r12,%r9,8),%r8d  ;*getfield elementData
                  ││                                                ; - java.util.ArrayList$Itr::next@32 (line 855)
                  ││                                                ; - com.github.arnaudroger.SeqListAccess::testClassicForEach@18 (line 68)
                  ││  0x00007ff489232ec5: mov    0xc(%r12,%r8,8),%r11d  ;*arraylength
                  ││                                                ; - java.util.ArrayList$Itr::next@38 (line 856)
                  ││                                                ; - com.github.arnaudroger.SeqListAccess::testClassicForEach@18 (line 68)
                  ││                                                ; implicit exception: dispatches to 0x00007ff489232ff9
  0.01%           ││  0x00007ff489232eca: cmp    %r11d,%r10d
                  ││  0x00007ff489232ecd: jge    0x00007ff489232f7d  ;*if_icmplt
                  ││                                                ; - java.util.ArrayList$Itr::next@39 (line 856)
                  ││                                                ; - com.github.arnaudroger.SeqListAccess::testClassicForEach@18 (line 68)
  4.41%    4.55%  ││  0x00007ff489232ed3: mov    %r10d,0x10(%rbp)   ;*putfield lastRet
                  ││                                                ; - java.util.ArrayList$Itr::next@61 (line 859)
                  ││                                                ; - com.github.arnaudroger.SeqListAccess::testClassicForEach@18 (line 68)
                  ││  0x00007ff489232ed7: mov    %r10d,%ecx
                  ││  0x00007ff489232eda: inc    %ecx
  0.00%    0.00%  ││  0x00007ff489232edc: mov    %ecx,0xc(%rbp)     ;*putfield cursor
                  ││                                                ; - java.util.ArrayList$Itr::next@54 (line 858)
                  ││                                                ; - com.github.arnaudroger.SeqListAccess::testClassicForEach@18 (line 68)
  4.39%    6.63%  ││  0x00007ff489232edf: cmp    %r11d,%r10d
                  ││  0x00007ff489232ee2: jae    0x00007ff489232f2e
  0.01%           ││  0x00007ff489232ee4: lea    (%r12,%r8,8),%r11
                  ││  0x00007ff489232ee8: mov    0x10(%r11,%r10,4),%r10d  ;*aaload
                  ││                                                ; - java.util.ArrayList$Itr::next@64 (line 859)
                  ││                                                ; - com.github.arnaudroger.SeqListAccess::testClassicForEach@18 (line 68)
  0.13%    0.00%  ││  0x00007ff489232eed: mov    0x8(%r12,%r10,8),%r8d  ; implicit exception: dispatches to 0x00007ff489233009
  6.87%    8.56%  ││  0x00007ff489232ef2: cmp    $0xf80022ae,%r8d   ;   {metadata(&apos;java/lang/Long&apos;)}
                  ││  0x00007ff489232ef9: jne    0x00007ff489232fd5  ;*invokeinterface next
                  ││                                                ; - com.github.arnaudroger.SeqListAccess::testClassicForEach@18 (line 68)
  0.01%           ││  0x00007ff489232eff: lea    (%r12,%r10,8),%rdx  ;*checkcast
                  ││                                                ; - com.github.arnaudroger.SeqListAccess::testClassicForEach@23 (line 68)
                  ││  0x00007ff489232f03: mov    (%rsp),%rsi
  4.64%   10.38%  ││  0x00007ff489232f07: callq  0x00007ff489046020  ; OopMap{rbp=Oop [0]=Oop off=236}
                  ││                                                ;*invokevirtual consume
                  ││                                                ; - com.github.arnaudroger.SeqListAccess::testClassicForEach@29 (line 69)
                  ││                                                ;   {optimized virtual_call}
 49.60%   42.94%  ││  0x00007ff489232f0c: mov    0x18(%rbp),%r9d    ;*getfield this$0
                  ││                                                ; - java.util.ArrayList$Itr::hasNext@5 (line 846)
                  ││                                                ; - com.github.arnaudroger.SeqListAccess::testClassicForEach@9 (line 68)
  0.10%    0.01%  ││  0x00007ff489232f10: mov    0x10(%r12,%r9,8),%r11d  ; implicit exception: dispatches to 0x00007ff489233019
                  ││  0x00007ff489232f15: mov    0xc(%rbp),%r10d    ;*getfield cursor
                  ││                                                ; - java.util.ArrayList$Itr::hasNext@1 (line 846)
                  ││                                                ; - com.github.arnaudroger.SeqListAccess::testClassicForEach@9 (line 68)
  0.00%           ││  0x00007ff489232f19: cmp    %r11d,%r10d
                  │╰  0x00007ff489232f1c: jne    0x00007ff489232ea0  ;*ifeq
                  │                                                 ; - com.github.arnaudroger.SeqListAccess::testClassicForEach@14 (line 68)
                  ↘   0x00007ff489232f22: add    $0x30,%rsp
                      0x00007ff489232f26: pop    %rbp
                      0x00007ff489232f27: test   %eax,0x1673b0d3(%rip)        # 0x00007ff49f96e000
                                                                    ;   {poll_return}
                      0x00007ff489232f2d: retq   
                      0x00007ff489232f2e: mov    $0xffffffe4,%esi
....................................................................................................
 79.52%   91.34%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, org.openjdk.jmh.infra.Blackhole::consume, version 523 (71 bytes) 

                     # parm0:    rdx:rdx   = &apos;java/lang/Object&apos;
                     #           [sp+0x40]  (sp of caller)
                     0x00007ff4892294a0: mov    0x8(%rsi),%r10d
                     0x00007ff4892294a4: shl    $0x3,%r10
                     0x00007ff4892294a8: cmp    %r10,%rax
                     0x00007ff4892294ab: jne    0x00007ff489045e20  ;   {runtime_call}
                     0x00007ff4892294b1: data16 xchg %ax,%ax
                     0x00007ff4892294b4: nopl   0x0(%rax,%rax,1)
                     0x00007ff4892294bc: data16 data16 xchg %ax,%ax
                   [Verified Entry Point]
  0.00%              0x00007ff4892294c0: mov    %eax,-0x14000(%rsp)
  4.40%    6.03%     0x00007ff4892294c7: push   %rbp
  0.02%    0.00%     0x00007ff4892294c8: sub    $0x30,%rsp         ;*synchronization entry
                                                                   ; - org.openjdk.jmh.infra.Blackhole::consume@-1 (line 307)
                     0x00007ff4892294cc: mov    %rdx,(%rsp)
  4.28%              0x00007ff4892294d0: mov    %rsi,0x8(%rsp)
  0.01%              0x00007ff4892294d5: mov    0xc4(%rsi),%ebp    ;*getfield tlrMask
                                                                   ; - org.openjdk.jmh.infra.Blackhole::consume@1 (line 307)
  0.00%    0.00%     0x00007ff4892294db: imul   $0x19660d,0xc0(%rsi),%r11d
                     0x00007ff4892294e6: add    $0x3c6ef35f,%r11d  ;*iadd
                                                                   ; - org.openjdk.jmh.infra.Blackhole::consume@15 (line 308)
  4.51%    0.00%     0x00007ff4892294ed: mov    %r11d,0xc0(%rsi)   ;*putfield tlr
                                                                   ; - org.openjdk.jmh.infra.Blackhole::consume@17 (line 308)
  0.01%              0x00007ff4892294f4: and    %ebp,%r11d
                     0x00007ff4892294f7: test   %r11d,%r11d
                  ╭  0x00007ff4892294fa: je     0x00007ff489229508
                  │  0x00007ff4892294fc: add    $0x30,%rsp
  4.49%    0.00%  │  0x00007ff489229500: pop    %rbp
  0.01%    0.01%  │  0x00007ff489229501: test   %eax,0x16744af9(%rip)        # 0x00007ff49f96e000
                  │                                                ;   {poll_return}
  0.02%    0.02%  │  0x00007ff489229507: retq   
                  ↘  0x00007ff489229508: mov    0x60(%r15),%rax
                     0x00007ff48922950c: mov    %rax,%r10
                     0x00007ff48922950f: add    $0x20,%r10
                     0x00007ff489229513: cmp    0x70(%r15),%r10
                     0x00007ff489229517: jae    0x00007ff4892295c2
                     0x00007ff48922951d: mov    %r10,0x60(%r15)
                     0x00007ff489229521: prefetchnta 0xc0(%r10)
                     0x00007ff489229529: mov    $0xf8000ba5,%r10d  ;   {metadata(&apos;java/lang/ref/WeakReference&apos;)}
                     0x00007ff48922952f: shl    $0x3,%r10
....................................................................................................
 17.77%    6.08%  <total for region 2>

....[Hottest Regions]...............................................................................
 79.52%   91.34%         C2, level 4  com.github.arnaudroger.SeqListAccess::testClassicForEach, version 527 (121 bytes) 
 17.77%    6.08%         C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 523 (71 bytes) 
  0.65%    0.64%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.12%    0.00%   [kernel.kallsyms]  [unknown] (39 bytes) 
  0.09%    0.01%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.05%    0.01%   [kernel.kallsyms]  [unknown] (5 bytes) 
  0.04%    0.02%   [kernel.kallsyms]  [unknown] (9 bytes) 
  0.03%    0.01%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.03%    0.09%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ (92 bytes) 
  0.02%    0.01%   [kernel.kallsyms]  [unknown] (23 bytes) 
  0.02%    0.00%   [kernel.kallsyms]  [unknown] (26 bytes) 
  0.02%    0.01%           libjvm.so  _ZN10decode_env12handle_eventEPKcPh (74 bytes) 
  0.02%    0.01%           libjvm.so  _ZN13xmlTextStream5writeEPKcm (42 bytes) 
  0.02%    0.01%   [kernel.kallsyms]  [unknown] (12 bytes) 
  0.02%    0.01%   [kernel.kallsyms]  [unknown] (39 bytes) 
  0.02%    0.02%   [kernel.kallsyms]  [unknown] (30 bytes) 
  0.02%                    libjvm.so  _ZN2os13PlatformEvent4parkEl (3 bytes) 
  0.02%    0.04%           libjvm.so  _ZN10fileStream5writeEPKcm (36 bytes) 
  0.02%    0.00%           libjvm.so  _ZN15StatSamplerTask4taskEv (26 bytes) 
  0.02%           libpthread-2.26.so  __libc_write (16 bytes) 
  1.45%    1.66%  <...other 405 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 79.52%   91.34%         C2, level 4  com.github.arnaudroger.SeqListAccess::testClassicForEach, version 527 
 17.77%    6.08%         C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 523 
  1.81%    1.67%   [kernel.kallsyms]  [unknown] 
  0.07%    0.11%        libc-2.26.so  vfprintf 
  0.06%    0.06%      hsdis-amd64.so  decode_instructions 
  0.04%    0.02%           libjvm.so  _ZN13xmlTextStream5writeEPKcm 
  0.04%    0.09%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.03%    0.03%        libc-2.26.so  _IO_fwrite 
  0.02%                    libjvm.so  _ZN2os13PlatformEvent4parkEl 
  0.02%    0.01%           libjvm.so  _ZN10decode_env12handle_eventEPKcPh 
  0.02%    0.02%        libc-2.26.so  __strlen_avx2 
  0.02%    0.00%           libjvm.so  _ZN15StatSamplerTask4taskEv 
  0.02%    0.00%        libc-2.26.so  _IO_fflush 
  0.02%    0.04%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.02%           libpthread-2.26.so  __libc_write 
  0.02%    0.00%  libpthread-2.26.so  pthread_cond_timedwait@@GLIBC_2.3.2 
  0.01%    0.01%           libjvm.so  _ZN13defaultStream4holdEl 
  0.01%    0.00%        libc-2.26.so  _IO_old_init 
  0.01%    0.00%           libjvm.so  _ZN7Monitor6unlockEv 
  0.01%    0.04%        libc-2.26.so  _IO_default_xsputn 
  0.42%    0.24%  <...other 77 warm methods...>
....................................................................................................
100.00%   99.78%  <totals>

....[Distribution by Source]........................................................................
 97.29%   97.42%         C2, level 4
  1.81%    1.67%   [kernel.kallsyms]
  0.48%    0.45%           libjvm.so
  0.23%    0.32%        libc-2.26.so
  0.06%    0.06%      hsdis-amd64.so
  0.06%    0.05%  libpthread-2.26.so
  0.05%    0.01%         interpreter
  0.01%    0.01%         C1, level 3
  0.00%                perf-2552.map
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                               (size)   Mode  Cnt    Score   Error  Units
SeqListAccess.testClassicForEach       1000000  thrpt   20  171.239 ± 0.445  ops/s
SeqListAccess.testClassicForEach:·asm  1000000  thrpt           NaN            ---
