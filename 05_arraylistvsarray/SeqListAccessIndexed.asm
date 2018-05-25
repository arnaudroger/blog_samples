# JMH version: 1.19
# VM version: JDK 1.8.0_131, VM 25.131-b11
# VM invoker: /usr/lib/jvm/java-8-oracle/jre/bin/java
# VM options: <none>
# Warmup: 20 iterations, 1 s each
# Measurement: 20 iterations, 1 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Throughput, ops/time
# Benchmark: com.github.arnaudroger.SeqListAccess.testIndexed
# Parameters: (size = 1000000)

# Run progress: 0.00% complete, ETA 00:00:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 244.336 ops/s
# Warmup Iteration   2: 263.812 ops/s
# Warmup Iteration   3: 267.563 ops/s
# Warmup Iteration   4: 268.664 ops/s
# Warmup Iteration   5: 266.751 ops/s
# Warmup Iteration   6: 268.544 ops/s
# Warmup Iteration   7: 267.187 ops/s
# Warmup Iteration   8: 269.023 ops/s
# Warmup Iteration   9: 267.517 ops/s
# Warmup Iteration  10: 266.471 ops/s
# Warmup Iteration  11: 266.732 ops/s
# Warmup Iteration  12: 268.161 ops/s
# Warmup Iteration  13: 268.452 ops/s
# Warmup Iteration  14: 268.533 ops/s
# Warmup Iteration  15: 267.158 ops/s
# Warmup Iteration  16: 267.275 ops/s
# Warmup Iteration  17: 266.370 ops/s
# Warmup Iteration  18: 266.164 ops/s
# Warmup Iteration  19: 267.645 ops/s
# Warmup Iteration  20: 265.693 ops/s
Iteration   1: 269.437 ops/s
Iteration   2: 267.264 ops/s
Iteration   3: 267.020 ops/s
Iteration   4: 267.206 ops/s
Iteration   5: 267.324 ops/s
Iteration   6: 269.072 ops/s
Iteration   7: 268.549 ops/s
Iteration   8: 267.630 ops/s
Iteration   9: 267.219 ops/s
Iteration  10: 266.019 ops/s
Iteration  11: 268.957 ops/s
Iteration  12: 268.686 ops/s
Iteration  13: 267.618 ops/s
Iteration  14: 267.033 ops/s
Iteration  15: 266.235 ops/s
Iteration  16: 269.742 ops/s
Iteration  17: 267.263 ops/s
Iteration  18: 269.441 ops/s
Iteration  19: 268.938 ops/s
Iteration  20: 267.681 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.SeqListAccess.testIndexed":
  267.917 ±(99.9%) 0.952 ops/s [Average]
  (min, avg, max) = (266.019, 267.917, 269.742), stdev = 1.097
  CI (99.9%): [266.964, 268.869] (assumes normal distribution)

Secondary result "com.github.arnaudroger.SeqListAccess.testIndexed:·asm":
PrintAssembly processed: 172926 total address lines.
Perf output processed (skipped 23.364 seconds):
 Column 1: cycles (20708 events)
 Column 2: instructions (20697 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.github.arnaudroger.SeqListAccess::testIndexed, version 528 (92 bytes) 

                       0x00007f2925225eb8: jle    0x00007f2925225f34  ;*if_icmpge
                                                                     ; - com.github.arnaudroger.SeqListAccess::testIndexed@16 (line 76)
                       0x00007f2925225ebe: test   %rdx,%rdx
                       0x00007f2925225ec1: je     0x00007f2925225f8d  ;*aload_1
                                                                     ; - com.github.arnaudroger.SeqListAccess::testIndexed@19 (line 77)
                       0x00007f2925225ec7: lea    (%r12,%r11,8),%rcx  ;*getfield data
                                                                     ; - com.github.arnaudroger.SeqListAccess::testIndexed@1 (line 74)
                       0x00007f2925225ecb: xor    %ebp,%ebp
                       0x00007f2925225ecd: mov    %r9d,%r10d
                  ╭    0x00007f2925225ed0: jmp    0x00007f2925225eea
  6.59%    4.76%  │ ↗  0x00007f2925225ed2: mov    0x8(%rsp),%r11d
                  │ │  0x00007f2925225ed7: mov    0x10(%r12,%r11,8),%r10d  ;*getfield size
                  │ │                                                ; - java.util.ArrayList::rangeCheck@2 (line 652)
                  │ │                                                ; - java.util.ArrayList::get@2 (line 429)
                  │ │                                                ; - com.github.arnaudroger.SeqListAccess::testIndexed@23 (line 77)
  0.11%    0.12%  │ │  0x00007f2925225edc: mov    (%rsp),%rdx
  1.58%    1.34%  │ │  0x00007f2925225ee0: mov    0xc(%rsp),%r9d
  5.42%    4.90%  │ │  0x00007f2925225ee5: mov    0x10(%rsp),%rcx    ;*aload_1
                  │ │                                                ; - com.github.arnaudroger.SeqListAccess::testIndexed@19 (line 77)
                  ↘ │  0x00007f2925225eea: cmp    %r10d,%ebp
                    │  0x00007f2925225eed: jge    0x00007f2925225f65  ;*if_icmplt
                    │                                                ; - java.util.ArrayList::rangeCheck@5 (line 652)
                    │                                                ; - java.util.ArrayList::get@2 (line 429)
                    │                                                ; - com.github.arnaudroger.SeqListAccess::testIndexed@23 (line 77)
  0.15%    0.08%    │  0x00007f2925225eef: mov    0x14(%r12,%r11,8),%r10d  ;*getfield elementData
                    │                                                ; - java.util.ArrayList::elementData@1 (line 418)
                    │                                                ; - java.util.ArrayList::get@7 (line 431)
                    │                                                ; - com.github.arnaudroger.SeqListAccess::testIndexed@23 (line 77)
  1.40%    1.46%    │  0x00007f2925225ef4: mov    0xc(%r12,%r10,8),%r8d  ; implicit exception: dispatches to 0x00007f2925225fb6
  9.69%   10.38%    │  0x00007f2925225ef9: cmp    %r8d,%ebp
                   ╭│  0x00007f2925225efc: jae    0x00007f2925225f40
  3.95%    4.98%   ││  0x00007f2925225efe: mov    %rcx,0x10(%rsp)
  0.04%    0.03%   ││  0x00007f2925225f03: mov    %r9d,0xc(%rsp)
  0.49%    0.50%   ││  0x00007f2925225f08: mov    %r11d,0x8(%rsp)
  2.68%    2.58%   ││  0x00007f2925225f0d: mov    %rdx,(%rsp)
  3.80%    3.86%   ││  0x00007f2925225f11: shl    $0x3,%r10
  0.04%    0.07%   ││  0x00007f2925225f15: mov    0x10(%r10,%rbp,4),%r11d
  4.53%    3.99%   ││  0x00007f2925225f1a: mov    %r11,%rdx
  2.14%    2.49%   ││  0x00007f2925225f1d: shl    $0x3,%rdx          ;*aaload
                   ││                                                ; - java.util.ArrayList::elementData@5 (line 418)
                   ││                                                ; - java.util.ArrayList::get@7 (line 431)
                   ││                                                ; - com.github.arnaudroger.SeqListAccess::testIndexed@23 (line 77)
  4.24%    4.03%   ││  0x00007f2925225f21: mov    (%rsp),%rsi
  0.11%    0.06%   ││  0x00007f2925225f25: xchg   %ax,%ax
  0.49%    0.37%   ││  0x00007f2925225f27: callq  0x00007f2925046020  ; OopMap{[0]=Oop [8]=NarrowOop [16]=Oop off=172}
                   ││                                                ;*invokevirtual consume
                   ││                                                ; - com.github.arnaudroger.SeqListAccess::testIndexed@26 (line 77)
                   ││                                                ;   {optimized virtual_call}
  6.70%    5.13%   ││  0x00007f2925225f2c: inc    %ebp               ;*iinc
                   ││                                                ; - com.github.arnaudroger.SeqListAccess::testIndexed@29 (line 76)
  0.11%    0.08%   ││  0x00007f2925225f2e: cmp    0xc(%rsp),%ebp
                   │╰  0x00007f2925225f32: jl     0x00007f2925225ed2  ;*if_icmpge
                   │                                                 ; - com.github.arnaudroger.SeqListAccess::testIndexed@16 (line 76)
                   │   0x00007f2925225f34: add    $0x40,%rsp
                   │   0x00007f2925225f38: pop    %rbp
                   │   0x00007f2925225f39: test   %eax,0x173b50c1(%rip)        # 0x00007f293c5db000
                   │                                                 ;   {poll_return}
                   │   0x00007f2925225f3f: retq   
                   ↘   0x00007f2925225f40: mov    $0xffffffe4,%esi
                       0x00007f2925225f45: mov    %r11d,0x8(%rsp)
....................................................................................................
 54.25%   51.23%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, org.openjdk.jmh.infra.Blackhole::consume, version 522 (71 bytes) 

                     # parm0:    rdx:rdx   = &apos;java/lang/Object&apos;
                     #           [sp+0x40]  (sp of caller)
                     0x00007f29252220e0: mov    0x8(%rsi),%r10d
                     0x00007f29252220e4: shl    $0x3,%r10
                     0x00007f29252220e8: cmp    %r10,%rax
                     0x00007f29252220eb: jne    0x00007f2925045e20  ;   {runtime_call}
                     0x00007f29252220f1: data16 xchg %ax,%ax
                     0x00007f29252220f4: nopl   0x0(%rax,%rax,1)
                     0x00007f29252220fc: data16 data16 xchg %ax,%ax
                   [Verified Entry Point]
  6.12%    7.09%     0x00007f2925222100: mov    %eax,-0x14000(%rsp)
  0.54%    0.50%     0x00007f2925222107: push   %rbp
  2.39%    2.29%     0x00007f2925222108: sub    $0x30,%rsp         ;*synchronization entry
                                                                   ; - org.openjdk.jmh.infra.Blackhole::consume@-1 (line 307)
  3.99%    5.28%     0x00007f292522210c: mov    %rdx,(%rsp)
  0.58%    0.51%     0x00007f2925222110: mov    %rsi,0x8(%rsp)
  2.36%    2.14%     0x00007f2925222115: mov    0xc4(%rsi),%ebp    ;*getfield tlrMask
                                                                   ; - org.openjdk.jmh.infra.Blackhole::consume@1 (line 307)
  4.31%    5.48%     0x00007f292522211b: imul   $0x19660d,0xc0(%rsi),%r11d
  3.27%    4.08%     0x00007f2925222126: add    $0x3c6ef35f,%r11d  ;*iadd
                                                                   ; - org.openjdk.jmh.infra.Blackhole::consume@15 (line 308)
  4.13%    4.61%     0x00007f292522212d: mov    %r11d,0xc0(%rsi)   ;*putfield tlr
                                                                   ; - org.openjdk.jmh.infra.Blackhole::consume@17 (line 308)
  6.66%    6.72%     0x00007f2925222134: and    %ebp,%r11d
  0.80%    0.62%     0x00007f2925222137: test   %r11d,%r11d
                  ╭  0x00007f292522213a: je     0x00007f2925222148
  4.44%    3.88%  │  0x00007f292522213c: add    $0x30,%rsp
  0.18%    0.16%  │  0x00007f2925222140: pop    %rbp
  1.66%    1.25%  │  0x00007f2925222141: test   %eax,0x173b8eb9(%rip)        # 0x00007f293c5db000
                  │                                                ;   {poll_return}
  0.71%    0.63%  │  0x00007f2925222147: retq   
                  ↘  0x00007f2925222148: mov    0x60(%r15),%rax
                     0x00007f292522214c: mov    %rax,%r10
                     0x00007f292522214f: add    $0x20,%r10
                     0x00007f2925222153: cmp    0x70(%r15),%r10
                     0x00007f2925222157: jae    0x00007f2925222202
                     0x00007f292522215d: mov    %r10,0x60(%r15)
                     0x00007f2925222161: prefetchnta 0xc0(%r10)
                     0x00007f2925222169: mov    $0xf8000ba5,%r10d  ;   {metadata(&apos;java/lang/ref/WeakReference&apos;)}
                     0x00007f292522216f: shl    $0x3,%r10
....................................................................................................
 42.14%   45.24%  <total for region 2>

....[Hottest Regions]...............................................................................
 54.25%   51.23%         C2, level 4  com.github.arnaudroger.SeqListAccess::testIndexed, version 528 (92 bytes) 
 42.14%   45.24%         C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 522 (71 bytes) 
  1.71%    1.71%   [kernel.kallsyms]  [unknown] (6 bytes) 
  0.12%    0.00%   [kernel.kallsyms]  [unknown] (2 bytes) 
  0.11%    0.00%   [kernel.kallsyms]  [unknown] (39 bytes) 
  0.08%    0.00%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.05%    0.04%   [kernel.kallsyms]  [unknown] (9 bytes) 
  0.04%    0.08%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ (102 bytes) 
  0.03%    0.02%   [kernel.kallsyms]  [unknown] (26 bytes) 
  0.02%    0.02%   [kernel.kallsyms]  [unknown] (42 bytes) 
  0.02%    0.02%   [kernel.kallsyms]  [unknown] (41 bytes) 
  0.02%    0.02%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.02%    0.02%  libpthread-2.26.so  __pthread_getspecific (27 bytes) 
  0.02%    0.02%   [kernel.kallsyms]  [unknown] (51 bytes) 
  0.02%    0.02%   [kernel.kallsyms]  [unknown] (60 bytes) 
  0.02%    0.02%           libjvm.so  _ZN10fileStream5writeEPKcm (4 bytes) 
  0.01%    0.02%   [kernel.kallsyms]  [unknown] (26 bytes) 
  0.01%    0.00%   [kernel.kallsyms]  [unknown] (4 bytes) 
  0.01%            [kernel.kallsyms]  [unknown] (6 bytes) 
  0.01%    0.00%   [kernel.kallsyms]  [unknown] (22 bytes) 
  1.26%    1.47%  <...other 344 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 54.25%   51.23%         C2, level 4  com.github.arnaudroger.SeqListAccess::testIndexed, version 528 
 42.14%   45.24%         C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 522 
  2.82%    2.61%   [kernel.kallsyms]  [unknown] 
  0.08%    0.04%      hsdis-amd64.so  [unknown] 
  0.04%    0.08%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.04%    0.11%        libc-2.26.so  vfprintf 
  0.03%    0.06%        libc-2.26.so  _IO_fwrite 
  0.03%    0.03%        libc-2.26.so  __strlen_avx2 
  0.03%    0.03%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.02%    0.01%           libjvm.so  _ZN12stringStream5writeEPKcm 
  0.02%    0.01%        libc-2.26.so  __strchr_avx2 
  0.02%    0.02%  libpthread-2.26.so  __pthread_getspecific 
  0.02%    0.05%           libjvm.so  _ZN13xmlTextStream5writeEPKcm 
  0.01%                    libjvm.so  jio_print 
  0.01%                  interpreter  invoke return entry points  
  0.01%    0.02%  libpthread-2.26.so  __pthread_enable_asynccancel 
  0.01%                    libjvm.so  _ZN13defaultStream5flushEv 
  0.01%    0.02%        libc-2.26.so  _IO_str_init_static_internal 
  0.01%    0.01%           libjvm.so  _ZN10decode_env12handle_eventEPKcPh 
  0.01%                    libjvm.so  _ZN8Constant11as_ConstantEv 
  0.35%    0.21%  <...other 61 warm methods...>
....................................................................................................
100.00%   99.78%  <totals>

....[Distribution by Source]........................................................................
 96.40%   96.47%         C2, level 4
  2.82%    2.61%   [kernel.kallsyms]
  0.36%    0.43%           libjvm.so
  0.19%    0.34%        libc-2.26.so
  0.08%    0.04%      hsdis-amd64.so
  0.07%    0.08%  libpthread-2.26.so
  0.07%    0.02%         interpreter
  0.01%                       [vdso]
  0.00%                  C1, level 1
  0.00%                  C1, level 3
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                        (size)   Mode  Cnt    Score   Error  Units
SeqListAccess.testIndexed       1000000  thrpt   20  267.917 ± 0.952  ops/s
SeqListAccess.testIndexed:·asm  1000000  thrpt           NaN            ---
