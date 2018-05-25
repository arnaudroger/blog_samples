# JMH version: 1.19
# VM version: JDK 1.8.0_131, VM 25.131-b11
# VM invoker: /usr/lib/jvm/java-8-oracle/jre/bin/java
# VM options: <none>
# Warmup: 20 iterations, 1 s each
# Measurement: 20 iterations, 1 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.github.arnaudroger.Seq2ArrayAccess.testGet
# Parameters: (size = 1000000)

# Run progress: 0.00% complete, ETA 00:00:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1783893.589 ns/op
# Warmup Iteration   2: 1676819.640 ns/op
# Warmup Iteration   3: 1658323.338 ns/op
# Warmup Iteration   4: 1651696.861 ns/op
# Warmup Iteration   5: 1654650.188 ns/op
# Warmup Iteration   6: 1656652.179 ns/op
# Warmup Iteration   7: 1663408.922 ns/op
# Warmup Iteration   8: 1650793.695 ns/op
# Warmup Iteration   9: 1656791.661 ns/op
# Warmup Iteration  10: 1653384.843 ns/op
# Warmup Iteration  11: 1661269.196 ns/op
# Warmup Iteration  12: 1659493.234 ns/op
# Warmup Iteration  13: 1664309.028 ns/op
# Warmup Iteration  14: 1653935.207 ns/op
# Warmup Iteration  15: 1655335.850 ns/op
# Warmup Iteration  16: 1654582.623 ns/op
# Warmup Iteration  17: 1657227.099 ns/op
# Warmup Iteration  18: 1651247.460 ns/op
# Warmup Iteration  19: 1654279.562 ns/op
# Warmup Iteration  20: 1654214.090 ns/op
Iteration   1: 1657734.235 ns/op
Iteration   2: 1653771.765 ns/op
Iteration   3: 1648235.988 ns/op
Iteration   4: 1656782.694 ns/op
Iteration   5: 1656506.907 ns/op
Iteration   6: 1654958.792 ns/op
Iteration   7: 1660904.960 ns/op
Iteration   8: 1663417.967 ns/op
Iteration   9: 1657054.917 ns/op
Iteration  10: 1648938.435 ns/op
Iteration  11: 1650440.517 ns/op
Iteration  12: 1651966.889 ns/op
Iteration  13: 1651798.855 ns/op
Iteration  14: 1654131.374 ns/op
Iteration  15: 1661714.174 ns/op
Iteration  16: 1652420.700 ns/op
Iteration  17: 1655834.036 ns/op
Iteration  18: 1643492.857 ns/op
Iteration  19: 1643217.640 ns/op
Iteration  20: 1647397.995 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.Seq2ArrayAccess.testGet":
  1653536.085 ±(99.9%) 4824.406 ns/op [Average]
  (min, avg, max) = (1643217.640, 1653536.085, 1663417.967), stdev = 5555.793
  CI (99.9%): [1648711.679, 1658360.490] (assumes normal distribution)

Secondary result "com.github.arnaudroger.Seq2ArrayAccess.testGet:·asm":
PrintAssembly processed: 171776 total address lines.
Perf output processed (skipped 23.453 seconds):
 Column 1: cycles (20319 events)
 Column 2: instructions (20307 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.github.arnaudroger.Seq2ArrayAccess::testGet, version 509 (56 bytes) 

                      0x00007f410d21bbfe: mov    %ebp,%r10d
                      0x00007f410d21bc01: add    $0xfffffffd,%r10d
                      0x00007f410d21bc05: lea    (%r12,%r9,8),%rbx
                      0x00007f410d21bc09: mov    $0x1,%r11d
                      0x00007f410d21bc0f: mov    $0x80000000,%r9d
                      0x00007f410d21bc15: cmp    %r10d,%r8d
                      0x00007f410d21bc18: cmovl  %r9d,%r10d
                      0x00007f410d21bc1c: cmp    $0x1,%r10d
                  ╭   0x00007f410d21bc20: jle    0x00007f410d21bc5f  ;*aload_3
                  │                                                 ; - com.github.arnaudroger.Seq2ArrayAccess::testGet@21 (line 57)
  0.01%           │↗  0x00007f410d21bc22: mov    0x10(%rbx,%r11,4),%r9d
  0.02%    0.01%  ││  0x00007f410d21bc27: add    0x10(%r12,%r9,8),%rax  ; implicit exception: dispatches to 0x00007f410d21bc99
 24.24%   23.98%  ││  0x00007f410d21bc2c: movslq %r11d,%r8
  0.22%    0.02%  ││  0x00007f410d21bc2f: mov    0x14(%rbx,%r8,4),%ecx  ;*aaload
                  ││                                                ; - com.github.arnaudroger.Seq2ArrayAccess::testGet@24 (line 57)
  0.01%           ││  0x00007f410d21bc34: mov    0x10(%r12,%rcx,8),%r9  ;*getfield value
                  ││                                                ; - java.lang.Long::longValue@1 (line 1000)
                  ││                                                ; - com.github.arnaudroger.Seq2ArrayAccess::testGet@30 (line 58)
                  ││                                                ; implicit exception: dispatches to 0x00007f410d21bc99
 19.05%   19.40%  ││  0x00007f410d21bc39: mov    0x18(%rbx,%r8,4),%ecx  ;*aaload
                  ││                                                ; - com.github.arnaudroger.Seq2ArrayAccess::testGet@24 (line 57)
  3.10%    4.06%  ││  0x00007f410d21bc3e: mov    0x10(%r12,%rcx,8),%rcx  ;*getfield value
                  ││                                                ; - java.lang.Long::longValue@1 (line 1000)
                  ││                                                ; - com.github.arnaudroger.Seq2ArrayAccess::testGet@30 (line 58)
                  ││                                                ; implicit exception: dispatches to 0x00007f410d21bc99
 19.01%   18.85%  ││  0x00007f410d21bc43: mov    0x1c(%rbx,%r8,4),%edi  ;*aaload
                  ││                                                ; - com.github.arnaudroger.Seq2ArrayAccess::testGet@24 (line 57)
  2.05%    0.88%  ││  0x00007f410d21bc48: mov    0x10(%r12,%rdi,8),%r8  ;*getfield value
                  ││                                                ; - java.lang.Long::longValue@1 (line 1000)
                  ││                                                ; - com.github.arnaudroger.Seq2ArrayAccess::testGet@30 (line 58)
                  ││                                                ; implicit exception: dispatches to 0x00007f410d21bc99
 22.24%   21.00%  ││  0x00007f410d21bc4d: add    %r9,%rax
  2.17%    2.67%  ││  0x00007f410d21bc50: add    %rcx,%rax
  1.17%    1.32%  ││  0x00007f410d21bc53: add    %r8,%rax           ;*ladd
                  ││                                                ; - com.github.arnaudroger.Seq2ArrayAccess::testGet@33 (line 58)
  4.74%    6.00%  ││  0x00007f410d21bc56: add    $0x4,%r11d         ;*iinc
                  ││                                                ; - com.github.arnaudroger.Seq2ArrayAccess::testGet@35 (line 57)
  0.02%    0.01%  ││  0x00007f410d21bc5a: cmp    %r10d,%r11d
                  │╰  0x00007f410d21bc5d: jl     0x00007f410d21bc22  ;*if_icmpge
                  │                                                 ; - com.github.arnaudroger.Seq2ArrayAccess::testGet@18 (line 57)
                  ↘   0x00007f410d21bc5f: cmp    %ebp,%r11d
                      0x00007f410d21bc62: jge    0x00007f410d21bc76  ;*aload_3
                                                                    ; - com.github.arnaudroger.Seq2ArrayAccess::testGet@21 (line 57)
                      0x00007f410d21bc64: mov    0x10(%rbx,%r11,4),%r10d  ;*aaload
                                                                    ; - com.github.arnaudroger.Seq2ArrayAccess::testGet@24 (line 57)
                      0x00007f410d21bc69: add    0x10(%r12,%r10,8),%rax  ;*ladd
                                                                    ; - com.github.arnaudroger.Seq2ArrayAccess::testGet@33 (line 58)
....................................................................................................
 98.05%   98.21%  <total for region 1>

....[Hottest Regions]...............................................................................
 98.05%   98.21%         C2, level 4  com.github.arnaudroger.Seq2ArrayAccess::testGet, version 509 (56 bytes) 
  0.11%    0.00%   [kernel.kallsyms]  [unknown] (45 bytes) 
  0.08%    0.01%   [kernel.kallsyms]  [unknown] (2 bytes) 
  0.05%    0.04%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.05%    0.02%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.05%    0.01%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.04%            [kernel.kallsyms]  [unknown] (46 bytes) 
  0.04%            [kernel.kallsyms]  [unknown] (22 bytes) 
  0.04%                  interpreter  invoke return entry points  (36 bytes) 
  0.03%    0.02%   [kernel.kallsyms]  [unknown] (9 bytes) 
  0.03%    0.01%           libjvm.so  _ZN7Monitor6unlockEv (52 bytes) 
  0.02%    0.03%   [kernel.kallsyms]  [unknown] (50 bytes) 
  0.02%    0.02%   [kernel.kallsyms]  [unknown] (27 bytes) 
  0.02%    0.02%   [kernel.kallsyms]  [unknown] (136 bytes) 
  0.02%                  C2, level 4  com.github.arnaudroger.Seq2ArrayAccess::testGet, version 509 (0 bytes) 
  0.01%            [kernel.kallsyms]  [unknown] (6 bytes) 
  0.01%    0.02%   [kernel.kallsyms]  [unknown] (15 bytes) 
  0.01%    0.01%   [kernel.kallsyms]  [unknown] (12 bytes) 
  0.01%            [kernel.kallsyms]  [unknown] (19 bytes) 
  0.01%            [kernel.kallsyms]  [unknown] (27 bytes) 
  1.25%    1.56%  <...other 360 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 98.07%   98.21%         C2, level 4  com.github.arnaudroger.Seq2ArrayAccess::testGet, version 509 
  1.17%    0.94%   [kernel.kallsyms]  [unknown] 
  0.06%    0.03%      hsdis-amd64.so  [unknown] 
  0.05%                  interpreter  invoke return entry points  
  0.04%    0.08%        libc-2.26.so  vfprintf 
  0.03%    0.05%        libc-2.26.so  _IO_fwrite 
  0.03%    0.00%         interpreter  invokevirtual  182 invokevirtual  
  0.03%    0.01%           libjvm.so  _ZN7Monitor6unlockEv 
  0.02%    0.04%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.02%    0.01%        libc-2.26.so  _IO_file_xsputn@@GLIBC_2.2.5 
  0.02%    0.07%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.01%    0.03%        libc-2.26.so  __strlen_avx2 
  0.01%    0.02%           libjvm.so  _ZN13defaultStream4holdEl 
  0.01%    0.01%        libc-2.26.so  _IO_default_xsputn 
  0.01%    0.02%        libc-2.26.so  __strchr_avx2 
  0.01%    0.04%           libjvm.so  _ZN13xmlTextStream5writeEPKcm 
  0.01%    0.00%           libjvm.so  _ZN7nmethod21print_code_comment_onEP12outputStreamiPhS2_ 
  0.01%                 libc-2.26.so  __memmove_avx_unaligned_erms 
  0.01%                 libc-2.26.so  __GI___libc_write 
  0.01%    0.00%        libc-2.26.so  _IO_padn 
  0.34%    0.13%  <...other 59 warm methods...>
....................................................................................................
100.00%   99.72%  <totals>

....[Distribution by Source]........................................................................
 98.07%   98.21%         C2, level 4
  1.17%    0.94%   [kernel.kallsyms]
  0.31%    0.43%           libjvm.so
  0.22%    0.33%        libc-2.26.so
  0.15%    0.00%         interpreter
  0.07%    0.04%      hsdis-amd64.so
  0.02%    0.04%  libpthread-2.26.so
  0.00%                       [vdso]
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                      (size)  Mode  Cnt        Score      Error  Units
Seq2ArrayAccess.testGet       1000000  avgt   20  1653536.085 ± 4824.406  ns/op
Seq2ArrayAccess.testGet:·asm  1000000  avgt               NaN               ---

Benchmark result is saved to jmh-result2.csv
