# JMH version: 1.19
# VM version: JDK 1.8.0_131, VM 25.131-b11
# VM invoker: /usr/lib/jvm/java-8-oracle/jre/bin/java
# VM options: <none>
# Warmup: 20 iterations, 1 s each
# Measurement: 20 iterations, 1 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.github.arnaudroger.Seq2ListAccess.testIndexed
# Parameters: (size = 1000000)

# Run progress: 0.00% complete, ETA 00:00:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2009539.952 ns/op
# Warmup Iteration   2: 1828160.277 ns/op
# Warmup Iteration   3: 1878778.895 ns/op
# Warmup Iteration   4: 1819228.625 ns/op
# Warmup Iteration   5: 1815828.849 ns/op
# Warmup Iteration   6: 1815518.450 ns/op
# Warmup Iteration   7: 1809963.646 ns/op
# Warmup Iteration   8: 1809209.465 ns/op
# Warmup Iteration   9: 1809524.268 ns/op
# Warmup Iteration  10: 1818547.826 ns/op
# Warmup Iteration  11: 1822485.805 ns/op
# Warmup Iteration  12: 1801017.540 ns/op
# Warmup Iteration  13: 1811414.763 ns/op
# Warmup Iteration  14: 1810006.154 ns/op
# Warmup Iteration  15: 1810689.754 ns/op
# Warmup Iteration  16: 1826233.046 ns/op
# Warmup Iteration  17: 1812321.264 ns/op
# Warmup Iteration  18: 1807318.567 ns/op
# Warmup Iteration  19: 1822354.719 ns/op
# Warmup Iteration  20: 1810011.052 ns/op
Iteration   1: 1808239.634 ns/op
Iteration   2: 1817515.040 ns/op
Iteration   3: 1809313.470 ns/op
Iteration   4: 1814297.225 ns/op
Iteration   5: 1812254.370 ns/op
Iteration   6: 1819658.684 ns/op
Iteration   7: 1811886.033 ns/op
Iteration   8: 1802842.836 ns/op
Iteration   9: 1809273.693 ns/op
Iteration  10: 1815440.472 ns/op
Iteration  11: 1819625.755 ns/op
Iteration  12: 1802428.602 ns/op
Iteration  13: 1809987.043 ns/op
Iteration  14: 1808077.123 ns/op
Iteration  15: 1818845.116 ns/op
Iteration  16: 1815795.713 ns/op
Iteration  17: 1811327.360 ns/op
Iteration  18: 1808400.047 ns/op
Iteration  19: 1797732.851 ns/op
Iteration  20: 1812357.163 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.Seq2ListAccess.testIndexed":
  1811264.911 ±(99.9%) 5101.055 ns/op [Average]
  (min, avg, max) = (1797732.851, 1811264.911, 1819658.684), stdev = 5874.382
  CI (99.9%): [1806163.856, 1816365.966] (assumes normal distribution)

Secondary result "com.github.arnaudroger.Seq2ListAccess.testIndexed:·asm":
PrintAssembly processed: 169880 total address lines.
Perf output processed (skipped 23.309 seconds):
 Column 1: cycles (20401 events)
 Column 2: instructions (20372 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.github.arnaudroger.Seq2ListAccess::testIndexed, version 507 (152 bytes) 

                      0x00007f78b121dd64: jl     0x00007f78b121dd37  ;*if_icmpge
                                                                    ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@18 (line 62)
                      0x00007f78b121dd66: mov    %r9d,%ecx
                      0x00007f78b121dd69: add    $0xfffffffd,%ecx
                      0x00007f78b121dd6c: mov    $0x80000000,%r11d
                      0x00007f78b121dd72: cmp    %ecx,%r9d
                      0x00007f78b121dd75: cmovl  %r11d,%ecx
                      0x00007f78b121dd79: cmp    %ecx,%r10d
                  ╭   0x00007f78b121dd7c: jge    0x00007f78b121de20  ;*lload_3
                  │                                                 ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@21 (line 63)
  0.41%    0.68%  │↗  0x00007f78b121dd82: mov    0x10(%rdi,%r10,4),%r8d
  1.22%    1.55%  ││  0x00007f78b121dd87: mov    0x8(%r12,%r8,8),%edx  ; implicit exception: dispatches to 0x00007f78b121de72
 11.04%   10.77%  ││  0x00007f78b121dd8c: lea    (%r12,%r8,8),%r11  ;*aaload
                  ││                                                ; - java.util.ArrayList::elementData@5 (line 418)
                  ││                                                ; - java.util.ArrayList::get@7 (line 431)
                  ││                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@25 (line 63)
  0.75%    0.99%  ││  0x00007f78b121dd90: cmp    $0xf80022ae,%edx   ;   {metadata(&apos;java/lang/Long&apos;)}
  0.01%           ││  0x00007f78b121dd96: jne    0x00007f78b121dee4  ;*checkcast
                  ││                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@28 (line 63)
  0.96%    1.30%  ││  0x00007f78b121dd9c: add    0x10(%r11),%rax    ;*ladd
                  ││                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@34 (line 63)
  8.51%    9.06%  ││  0x00007f78b121dda0: movslq %r10d,%r8
  0.90%    1.30%  ││  0x00007f78b121dda3: mov    0x14(%rdi,%r8,4),%r11d  ;*aaload
                  ││                                                ; - java.util.ArrayList::elementData@5 (line 418)
                  ││                                                ; - java.util.ArrayList::get@7 (line 431)
                  ││                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@25 (line 63)
  3.95%    1.24%  ││  0x00007f78b121dda8: test   %r11d,%r11d
                  ││  0x00007f78b121ddab: je     0x00007f78b121de63  ;*checkcast
                  ││                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@28 (line 63)
  0.58%    1.10%  ││  0x00007f78b121ddb1: mov    0x8(%r12,%r11,8),%edx
 11.44%   11.28%  ││  0x00007f78b121ddb6: shl    $0x3,%r11          ;*aaload
                  ││                                                ; - java.util.ArrayList::elementData@5 (line 418)
                  ││                                                ; - java.util.ArrayList::get@7 (line 431)
                  ││                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@25 (line 63)
  0.80%    0.85%  ││  0x00007f78b121ddba: cmp    $0xf80022ae,%edx   ;   {metadata(&apos;java/lang/Long&apos;)}
  1.25%    1.76%  ││  0x00007f78b121ddc0: jne    0x00007f78b121dee1  ;*checkcast
                  ││                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@28 (line 63)
  1.65%    2.12%  ││  0x00007f78b121ddc6: mov    0x18(%rdi,%r8,4),%esi  ;*aaload
                  ││                                                ; - java.util.ArrayList::elementData@5 (line 418)
                  ││                                                ; - java.util.ArrayList::get@7 (line 431)
                  ││                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@25 (line 63)
  0.91%    1.28%  ││  0x00007f78b121ddcb: add    0x10(%r11),%rax    ;*ladd
                  ││                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@34 (line 63)
  6.49%    6.55%  ││  0x00007f78b121ddcf: test   %esi,%esi
                  ││  0x00007f78b121ddd1: je     0x00007f78b121de68  ;*checkcast
                  ││                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@28 (line 63)
  0.50%    1.07%  ││  0x00007f78b121ddd7: mov    0x8(%r12,%rsi,8),%ebx
 13.09%   11.83%  ││  0x00007f78b121dddc: lea    (%r12,%rsi,8),%r11  ;*aaload
                  ││                                                ; - java.util.ArrayList::elementData@5 (line 418)
                  ││                                                ; - java.util.ArrayList::get@7 (line 431)
                  ││                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@25 (line 63)
  0.84%    1.04%  ││  0x00007f78b121dde0: cmp    $0xf80022ae,%ebx   ;   {metadata(&apos;java/lang/Long&apos;)}
  0.01%    0.00%  ││  0x00007f78b121dde6: jne    0x00007f78b121dedb  ;*checkcast
                  ││                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@28 (line 63)
  2.00%    2.20%  ││  0x00007f78b121ddec: mov    0x1c(%rdi,%r8,4),%r8d  ;*aaload
                  ││                                                ; - java.util.ArrayList::elementData@5 (line 418)
                  ││                                                ; - java.util.ArrayList::get@7 (line 431)
                  ││                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@25 (line 63)
  0.46%    0.81%  ││  0x00007f78b121ddf1: add    0x10(%r11),%rax    ;*ladd
                  ││                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@34 (line 63)
  6.92%    7.26%  ││  0x00007f78b121ddf5: test   %r8d,%r8d
                  ││  0x00007f78b121ddf8: je     0x00007f78b121de6e  ;*checkcast
                  ││                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@28 (line 63)
  0.61%    0.82%  ││  0x00007f78b121ddfa: mov    0x8(%r12,%r8,8),%edx
 12.00%   10.93%  ││  0x00007f78b121ddff: lea    (%r12,%r8,8),%r11  ;*aaload
                  ││                                                ; - java.util.ArrayList::elementData@5 (line 418)
                  ││                                                ; - java.util.ArrayList::get@7 (line 431)
                  ││                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@25 (line 63)
  0.43%    0.67%  ││  0x00007f78b121de03: cmp    $0xf80022ae,%edx   ;   {metadata(&apos;java/lang/Long&apos;)}
  0.01%    0.01%  ││  0x00007f78b121de09: jne    0x00007f78b121ded5  ;*checkcast
                  ││                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@28 (line 63)
  1.91%    2.42%  ││  0x00007f78b121de0f: add    0x10(%r11),%rax    ;*ladd
                  ││                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@34 (line 63)
  7.21%    6.06%  ││  0x00007f78b121de13: add    $0x4,%r10d         ;*iinc
                  ││                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@36 (line 62)
  0.64%    0.92%  ││  0x00007f78b121de17: cmp    %ecx,%r10d
           0.00%  │╰  0x00007f78b121de1a: jl     0x00007f78b121dd82  ;*if_icmpge
                  │                                                 ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@18 (line 62)
                  ↘   0x00007f78b121de20: cmp    %r9d,%r10d
                      0x00007f78b121de23: jge    0x00007f78b121de57
                      0x00007f78b121de25: data16 xchg %ax,%ax       ;*lload_3
                                                                    ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@21 (line 63)
                      0x00007f78b121de28: cmp    %r9d,%r10d
                      0x00007f78b121de2b: jge    0x00007f78b121dec9  ;*if_icmplt
                                                                    ; - java.util.ArrayList::rangeCheck@5 (line 652)
                                                                    ; - java.util.ArrayList::get@2 (line 429)
                                                                    ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@25 (line 63)
....................................................................................................
 97.48%   97.87%  <total for region 1>

....[Hottest Regions]...............................................................................
 97.48%   97.87%         C2, level 4  com.github.arnaudroger.Seq2ListAccess::testIndexed, version 507 (152 bytes) 
  0.39%    0.38%   [kernel.kallsyms]  [unknown] (6 bytes) 
  0.09%    0.00%   [kernel.kallsyms]  [unknown] (50 bytes) 
  0.08%    0.01%   [kernel.kallsyms]  [unknown] (2 bytes) 
  0.04%    0.02%   [kernel.kallsyms]  [unknown] (44 bytes) 
  0.04%    0.01%   [kernel.kallsyms]  [unknown] (9 bytes) 
  0.03%    0.00%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.02%    0.03%   [kernel.kallsyms]  [unknown] (16 bytes) 
  0.02%    0.05%           libjvm.so  _ZN10fileStream5writeEPKcm (18 bytes) 
  0.02%           libpthread-2.26.so  __pthread_getspecific (0 bytes) 
  0.02%    0.02%   [kernel.kallsyms]  [unknown] (79 bytes) 
  0.02%    0.01%   [kernel.kallsyms]  [unknown] (11 bytes) 
  0.02%    0.03%   [kernel.kallsyms]  [unknown] (40 bytes) 
  0.02%                  interpreter  invoke return entry points  (25 bytes) 
  0.01%            [kernel.kallsyms]  [unknown] (27 bytes) 
  0.01%            [kernel.kallsyms]  [unknown] (0 bytes) 
  0.01%            [kernel.kallsyms]  [unknown] (19 bytes) 
  0.01%    0.01%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.01%    0.02%   [kernel.kallsyms]  [unknown] (11 bytes) 
  0.01%    0.00%   [kernel.kallsyms]  [unknown] (33 bytes) 
  1.60%    1.51%  <...other 393 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 97.49%   97.87%         C2, level 4  com.github.arnaudroger.Seq2ListAccess::testIndexed, version 507 
  1.69%    1.33%   [kernel.kallsyms]  [unknown] 
  0.07%    0.03%      hsdis-amd64.so  [unknown] 
  0.04%    0.08%        libc-2.26.so  vfprintf 
  0.03%    0.03%        libc-2.26.so  __strlen_avx2 
  0.03%                  interpreter  invoke return entry points  
  0.03%    0.06%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.02%    0.01%  libpthread-2.26.so  __pthread_getspecific 
  0.02%    0.02%        libc-2.26.so  _IO_fwrite 
  0.02%    0.05%           libjvm.so  _ZN13xmlTextStream5writeEPKcm 
  0.02%           libpthread-2.26.so  pthread_cond_timedwait@@GLIBC_2.3.2 
  0.02%                 libc-2.26.so  __strchr_avx2 
  0.01%                perf-5027.map  [unknown] 
  0.01%           libpthread-2.26.so  __pthread_mutex_lock 
  0.01%                  interpreter  invokevirtual  182 invokevirtual  
  0.01%    0.04%           libjvm.so  _ZN12outputStream15update_positionEPKcm 
  0.01%    0.05%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.01%    0.01%           libjvm.so  _ZN7Monitor6unlockEv 
  0.01%                 libc-2.26.so  _IO_setb 
  0.01%                 libc-2.26.so  _IO_file_xsputn@@GLIBC_2.2.5 
  0.39%    0.23%  <...other 66 warm methods...>
....................................................................................................
100.00%   99.82%  <totals>

....[Distribution by Source]........................................................................
 97.49%   97.87%         C2, level 4
  1.69%    1.33%   [kernel.kallsyms]
  0.34%    0.43%           libjvm.so
  0.21%    0.27%        libc-2.26.so
  0.10%    0.04%  libpthread-2.26.so
  0.07%    0.03%      hsdis-amd64.so
  0.07%    0.01%         interpreter
  0.01%                perf-5027.map
  0.01%    0.00%              [vdso]
  0.00%    0.00%         C1, level 3
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                         (size)  Mode  Cnt        Score      Error  Units
Seq2ListAccess.testIndexed       1000000  avgt   20  1811264.911 ± 5101.055  ns/op
Seq2ListAccess.testIndexed:·asm  1000000  avgt               NaN               ---

Benchmark result is saved to jmh-result2.csv
