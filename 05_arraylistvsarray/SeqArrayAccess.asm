# JMH version: 1.19
# VM version: JDK 1.8.0_131, VM 25.131-b11
# VM invoker: /usr/lib/jvm/java-8-oracle/jre/bin/java
# VM options: <none>
# Warmup: 20 iterations, 1 s each
# Measurement: 20 iterations, 1 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Throughput, ops/time
# Benchmark: com.github.arnaudroger.SeqArrayAccess.testGet
# Parameters: (size = 1000000)

# Run progress: 0.00% complete, ETA 00:00:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 355.738 ops/s
# Warmup Iteration   2: 371.053 ops/s
# Warmup Iteration   3: 375.265 ops/s
# Warmup Iteration   4: 377.908 ops/s
# Warmup Iteration   5: 377.769 ops/s
# Warmup Iteration   6: 377.214 ops/s
# Warmup Iteration   7: 376.585 ops/s
# Warmup Iteration   8: 377.638 ops/s
# Warmup Iteration   9: 377.788 ops/s
# Warmup Iteration  10: 378.051 ops/s
# Warmup Iteration  11: 376.321 ops/s
# Warmup Iteration  12: 377.825 ops/s
# Warmup Iteration  13: 377.669 ops/s
# Warmup Iteration  14: 377.592 ops/s
# Warmup Iteration  15: 378.162 ops/s
# Warmup Iteration  16: 376.742 ops/s
# Warmup Iteration  17: 376.236 ops/s
# Warmup Iteration  18: 377.479 ops/s
# Warmup Iteration  19: 376.243 ops/s
# Warmup Iteration  20: 375.803 ops/s
Iteration   1: 373.609 ops/s
Iteration   2: 375.276 ops/s
Iteration   3: 378.223 ops/s
Iteration   4: 376.072 ops/s
Iteration   5: 378.198 ops/s
Iteration   6: 378.237 ops/s
Iteration   7: 377.580 ops/s
Iteration   8: 378.033 ops/s
Iteration   9: 377.628 ops/s
Iteration  10: 378.721 ops/s
Iteration  11: 378.773 ops/s
Iteration  12: 377.823 ops/s
Iteration  13: 378.595 ops/s
Iteration  14: 378.875 ops/s
Iteration  15: 375.861 ops/s
Iteration  16: 377.341 ops/s
Iteration  17: 370.815 ops/s
Iteration  18: 377.846 ops/s
Iteration  19: 378.094 ops/s
Iteration  20: 378.519 ops/s
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.SeqArrayAccess.testGet":
  377.206 ±(99.9%) 1.754 ops/s [Average]
  (min, avg, max) = (370.815, 377.206, 378.875), stdev = 2.019
  CI (99.9%): [375.452, 378.959] (assumes normal distribution)

Secondary result "com.github.arnaudroger.SeqArrayAccess.testGet:·asm":
PrintAssembly processed: 177922 total address lines.
Perf output processed (skipped 23.504 seconds):
 Column 1: cycles (20378 events)
 Column 2: instructions (20440 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, org.openjdk.jmh.infra.Blackhole::consume, version 517 (71 bytes) 

                     # parm0:    rdx:rdx   = &apos;java/lang/Object&apos;
                     #           [sp+0x40]  (sp of caller)
                     0x00007f269d227e60: mov    0x8(%rsi),%r10d
                     0x00007f269d227e64: shl    $0x3,%r10
                     0x00007f269d227e68: cmp    %r10,%rax
                     0x00007f269d227e6b: jne    0x00007f269d045e20  ;   {runtime_call}
                     0x00007f269d227e71: data16 xchg %ax,%ax
                     0x00007f269d227e74: nopl   0x0(%rax,%rax,1)
                     0x00007f269d227e7c: data16 data16 xchg %ax,%ax
                   [Verified Entry Point]
  9.71%    7.17%     0x00007f269d227e80: mov    %eax,-0x14000(%rsp)
  0.06%    0.05%     0x00007f269d227e87: push   %rbp
  9.41%    5.42%     0x00007f269d227e88: sub    $0x30,%rsp         ;*synchronization entry
                                                                   ; - org.openjdk.jmh.infra.Blackhole::consume@-1 (line 307)
  0.13%    0.16%     0x00007f269d227e8c: mov    %rdx,(%rsp)
  0.06%    0.10%     0x00007f269d227e90: mov    %rsi,0x8(%rsp)
  9.46%    5.62%     0x00007f269d227e95: mov    0xc4(%rsi),%ebp    ;*getfield tlrMask
                                                                   ; - org.openjdk.jmh.infra.Blackhole::consume@1 (line 307)
  0.08%    0.15%     0x00007f269d227e9b: imul   $0x19660d,0xc0(%rsi),%r11d
  8.75%    8.01%     0x00007f269d227ea6: add    $0x3c6ef35f,%r11d  ;*iadd
                                                                   ; - org.openjdk.jmh.infra.Blackhole::consume@15 (line 308)
  9.30%   11.52%     0x00007f269d227ead: mov    %r11d,0xc0(%rsi)   ;*putfield tlr
                                                                   ; - org.openjdk.jmh.infra.Blackhole::consume@17 (line 308)
  9.87%   11.92%     0x00007f269d227eb4: and    %ebp,%r11d
  0.39%    0.47%     0x00007f269d227eb7: test   %r11d,%r11d
                  ╭  0x00007f269d227eba: je     0x00007f269d227ec8
  9.36%   13.90%  │  0x00007f269d227ebc: add    $0x30,%rsp
  0.05%    0.02%  │  0x00007f269d227ec0: pop    %rbp
  0.08%    0.05%  │  0x00007f269d227ec1: test   %eax,0x1786a139(%rip)        # 0x00007f26b4a92000
                  │                                                ;   {poll_return}
  0.10%    0.09%  │  0x00007f269d227ec7: retq   
                  ↘  0x00007f269d227ec8: mov    0x60(%r15),%rax
                     0x00007f269d227ecc: mov    %rax,%r10
                     0x00007f269d227ecf: add    $0x20,%r10
                     0x00007f269d227ed3: cmp    0x70(%r15),%r10
                     0x00007f269d227ed7: jae    0x00007f269d227f82
                     0x00007f269d227edd: mov    %r10,0x60(%r15)
                     0x00007f269d227ee1: prefetchnta 0xc0(%r10)
                     0x00007f269d227ee9: mov    $0xf8000ba5,%r10d  ;   {metadata(&apos;java/lang/ref/WeakReference&apos;)}
                     0x00007f269d227eef: shl    $0x3,%r10
....................................................................................................
 66.81%   64.66%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, com.github.arnaudroger.SeqArrayAccess::testGet, version 521 (33 bytes) 

                       0x00007f269d22f4a8: jae    0x00007f269d22f4f4
                       0x00007f269d22f4aa: test   %rdx,%rdx
                  ╭    0x00007f269d22f4ad: je     0x00007f269d22f4f4  ;*aload_2
                  │                                                  ; - com.github.arnaudroger.SeqArrayAccess::testGet@17 (line 61)
                  │    0x00007f269d22f4af: shl    $0x3,%r10          ;*getfield data
                  │                                                  ; - com.github.arnaudroger.SeqArrayAccess::testGet@1 (line 61)
                  │    0x00007f269d22f4b3: xor    %ebp,%ebp
                  │    0x00007f269d22f4b5: mov    %rdx,0x8(%rsp)
                  │    0x00007f269d22f4ba: mov    %r8d,0x10(%rsp)
                  │╭   0x00007f269d22f4bf: jmp    0x00007f269d22f4c5
  9.90%   10.66%  ││↗  0x00007f269d22f4c1: mov    (%rsp),%r10        ;*aload_2
                  │││                                                ; - com.github.arnaudroger.SeqArrayAccess::testGet@17 (line 61)
                  │↘│  0x00007f269d22f4c5: mov    0x10(%r10,%rbp,4),%r11d
  0.70%    0.54%  │ │  0x00007f269d22f4ca: mov    %r10,(%rsp)
  0.04%    0.03%  │ │  0x00007f269d22f4ce: mov    %r11,%rdx
  9.47%    8.56%  │ │  0x00007f269d22f4d1: shl    $0x3,%rdx          ;*aaload
                  │ │                                                ; - com.github.arnaudroger.SeqArrayAccess::testGet@20 (line 61)
  0.18%    0.06%  │ │  0x00007f269d22f4d5: mov    0x8(%rsp),%rsi
  0.01%    0.04%  │ │  0x00007f269d22f4da: nop
  0.05%    0.03%  │ │  0x00007f269d22f4db: callq  0x00007f269d046020  ; OopMap{[0]=Oop [8]=Oop off=128}
                  │ │                                                ;*invokevirtual consume
                  │ │                                                ; - com.github.arnaudroger.SeqArrayAccess::testGet@26 (line 62)
                  │ │                                                ;   {optimized virtual_call}
 10.35%   13.07%  │ │  0x00007f269d22f4e0: inc    %ebp               ;*iinc
                  │ │                                                ; - com.github.arnaudroger.SeqArrayAccess::testGet@29 (line 61)
  0.03%    0.03%  │ │  0x00007f269d22f4e2: cmp    0x10(%rsp),%ebp
                  │ ╰  0x00007f269d22f4e6: jl     0x00007f269d22f4c1  ;*if_icmpge
                  │                                                  ; - com.github.arnaudroger.SeqArrayAccess::testGet@14 (line 61)
                  │    0x00007f269d22f4e8: add    $0x30,%rsp
                  │    0x00007f269d22f4ec: pop    %rbp
                  │    0x00007f269d22f4ed: test   %eax,0x17862b0d(%rip)        # 0x00007f26b4a92000
                  │                                                  ;   {poll_return}
                  │    0x00007f269d22f4f3: retq   
                  ↘    0x00007f269d22f4f4: mov    $0xffffff86,%esi
                       0x00007f269d22f4f9: mov    %rdx,%rbp
....................................................................................................
 30.73%   33.02%  <total for region 2>

....[Hottest Regions]...............................................................................
 66.81%   64.66%         C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 517 (71 bytes) 
 30.73%   33.02%         C2, level 4  com.github.arnaudroger.SeqArrayAccess::testGet, version 521 (33 bytes) 
  0.33%    0.33%   [kernel.kallsyms]  [unknown] (6 bytes) 
  0.14%    0.00%   [kernel.kallsyms]  [unknown] (45 bytes) 
  0.08%    0.00%   [kernel.kallsyms]  [unknown] (1 bytes) 
  0.07%    0.00%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.06%            [kernel.kallsyms]  [unknown] (5 bytes) 
  0.05%    0.11%           libjvm.so  _ZN10fileStream5writeEPKcm (82 bytes) 
  0.04%    0.07%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ (80 bytes) 
  0.04%           libpthread-2.26.so  __libc_write (16 bytes) 
  0.03%    0.01%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.03%    0.02%   [kernel.kallsyms]  [unknown] (26 bytes) 
  0.02%    0.03%   [kernel.kallsyms]  [unknown] (33 bytes) 
  0.02%    0.02%   [kernel.kallsyms]  [unknown] (11 bytes) 
  0.02%    0.05%   [kernel.kallsyms]  [unknown] (39 bytes) 
  0.02%            [kernel.kallsyms]  [unknown] (22 bytes) 
  0.01%    0.04%   [kernel.kallsyms]  [unknown] (9 bytes) 
  0.01%            [kernel.kallsyms]  [unknown] (23 bytes) 
  0.01%    0.01%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.01%    0.00%   [kernel.kallsyms]  [unknown] (24 bytes) 
  1.44%    1.60%  <...other 400 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 66.81%   64.66%         C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 517 
 30.73%   33.02%         C2, level 4  com.github.arnaudroger.SeqArrayAccess::testGet, version 521 
  1.58%    1.29%   [kernel.kallsyms]  [unknown] 
  0.09%    0.07%      hsdis-amd64.so  [unknown] 
  0.05%    0.11%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.05%    0.07%        libc-2.26.so  vfprintf 
  0.04%    0.07%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.04%    0.00%  libpthread-2.26.so  __libc_write 
  0.03%    0.08%        libc-2.26.so  _IO_fwrite 
  0.02%    0.00%        libc-2.26.so  _IO_fflush 
  0.02%    0.03%           libjvm.so  _ZN13xmlTextStream5writeEPKcm 
  0.01%    0.00%           libjvm.so  _ZN10decode_env12handle_eventEPKcPh 
  0.01%    0.01%  libpthread-2.26.so  __pthread_getspecific 
  0.01%    0.01%        libc-2.26.so  __strchrnul_avx2 
  0.01%    0.00%           libjvm.so  _ZL13printf_to_envPvPKcz 
  0.01%    0.03%        libc-2.26.so  __strlen_avx2 
  0.01%    0.00%        libc-2.26.so  _IO_old_init 
  0.01%               hsdis-amd64.so  decode_instructions 
  0.01%                 libc-2.26.so  __vsprintf_chk 
  0.01%                    libjvm.so  _ZN24DebugInformationRecorder27find_sharable_decode_offsetEi 
  0.42%    0.24%  <...other 77 warm methods...>
....................................................................................................
100.00%   99.73%  <totals>

....[Distribution by Source]........................................................................
 97.55%   97.68%         C2, level 4
  1.58%    1.29%   [kernel.kallsyms]
  0.43%    0.50%           libjvm.so
  0.21%    0.36%        libc-2.26.so
  0.10%    0.07%      hsdis-amd64.so
  0.08%    0.06%  libpthread-2.26.so
  0.03%    0.01%         interpreter
  0.01%    0.00%              [vdso]
  0.01%    0.01%         C1, level 3
  0.00%    0.00%          ld-2.26.so
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                     (size)   Mode  Cnt    Score   Error  Units
SeqArrayAccess.testGet       1000000  thrpt   20  377.206 ± 1.754  ops/s
SeqArrayAccess.testGet:·asm  1000000  thrpt           NaN            ---
