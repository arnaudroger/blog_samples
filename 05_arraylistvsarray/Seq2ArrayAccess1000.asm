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
# Parameters: (size = 1000)

# Run progress: 0.00% complete, ETA 00:00:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 334.349 ns/op
# Warmup Iteration   2: 346.347 ns/op
# Warmup Iteration   3: 318.022 ns/op
# Warmup Iteration   4: 321.903 ns/op
# Warmup Iteration   5: 317.772 ns/op
# Warmup Iteration   6: 319.919 ns/op
# Warmup Iteration   7: 318.490 ns/op
# Warmup Iteration   8: 317.578 ns/op
# Warmup Iteration   9: 317.263 ns/op
# Warmup Iteration  10: 317.551 ns/op
# Warmup Iteration  11: 320.836 ns/op
# Warmup Iteration  12: 317.835 ns/op
# Warmup Iteration  13: 319.652 ns/op
# Warmup Iteration  14: 316.904 ns/op
# Warmup Iteration  15: 317.256 ns/op
# Warmup Iteration  16: 322.853 ns/op
# Warmup Iteration  17: 320.175 ns/op
# Warmup Iteration  18: 320.182 ns/op
# Warmup Iteration  19: 318.752 ns/op
# Warmup Iteration  20: 320.307 ns/op
Iteration   1: 322.303 ns/op
Iteration   2: 321.378 ns/op
Iteration   3: 319.529 ns/op
Iteration   4: 320.261 ns/op
Iteration   5: 323.531 ns/op
Iteration   6: 320.900 ns/op
Iteration   7: 319.312 ns/op
Iteration   8: 321.831 ns/op
Iteration   9: 318.855 ns/op
Iteration  10: 319.784 ns/op
Iteration  11: 324.568 ns/op
Iteration  12: 319.887 ns/op
Iteration  13: 319.830 ns/op
Iteration  14: 318.753 ns/op
Iteration  15: 322.076 ns/op
Iteration  16: 321.250 ns/op
Iteration  17: 321.013 ns/op
Iteration  18: 319.132 ns/op
Iteration  19: 318.847 ns/op
Iteration  20: 319.453 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.Seq2ArrayAccess.testGet":
  320.625 ±(99.9%) 1.407 ns/op [Average]
  (min, avg, max) = (318.753, 320.625, 324.568), stdev = 1.621
  CI (99.9%): [319.217, 322.032] (assumes normal distribution)

Secondary result "com.github.arnaudroger.Seq2ArrayAccess.testGet:·asm":
PrintAssembly processed: 171949 total address lines.
Perf output processed (skipped 23.316 seconds):
 Column 1: cycles (20704 events)
 Column 2: instructions (20706 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.github.arnaudroger.generated.Seq2ArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub, version 531 (226 bytes) 

                                                                       ; implicit exception: dispatches to 0x00007f0870bf2ffd
                         0x00007f0870bf2df5: test   %r11d,%r11d
                         0x00007f0870bf2df8: jne    0x00007f0870bf2ef9  ;*ifeq
                                                                       ; - com.github.arnaudroger.generated.Seq2ArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@33 (line 234)
                         0x00007f0870bf2dfe: mov    $0x1,%ebx
                  ╭      0x00007f0870bf2e03: jmp    0x00007f0870bf2e3b
                  │↗     0x00007f0870bf2e05: xor    %edx,%edx          ;*if_icmpge
                  ││                                                   ; - com.github.arnaudroger.Seq2ArrayAccess::testGet@18 (line 57)
                  ││                                                   ; - com.github.arnaudroger.generated.Seq2ArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@17 (line 232)
                  ││ ↗   0x00007f0870bf2e07: mov    %rbx,0x48(%rsp)
  0.11%           ││ │   0x00007f0870bf2e0c: mov    %r8,%rbp
                  ││ │   0x00007f0870bf2e0f: mov    (%rsp),%rsi
  0.14%    0.03%  ││ │   0x00007f0870bf2e13: callq  0x00007f0870a0d020  ; OopMap{rbp=Oop [64]=Oop [80]=Oop [0]=Oop off=312}
                  ││ │                                                 ;*invokevirtual consume
                  ││ │                                                 ; - com.github.arnaudroger.generated.Seq2ArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@20 (line 232)
                  ││ │                                                 ;   {optimized virtual_call}
  0.29%    0.09%  ││ │   0x00007f0870bf2e18: mov    %rbp,%r8
                  ││ │   0x00007f0870bf2e1b: movzbl 0x94(%r8),%r11d    ;*getfield isDone
                  ││ │                                                 ; - com.github.arnaudroger.generated.Seq2ArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@30 (line 234)
  0.02%           ││ │   0x00007f0870bf2e23: mov    0x48(%rsp),%rbx
  0.06%    0.09%  ││ │   0x00007f0870bf2e28: add    $0x1,%rbx          ; OopMap{r8=Oop [64]=Oop [80]=Oop [0]=Oop off=332}
                  ││ │                                                 ;*ifeq
                  ││ │                                                 ; - com.github.arnaudroger.generated.Seq2ArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@33 (line 234)
                  ││ │   0x00007f0870bf2e2c: test   %eax,0x15f731ce(%rip)        # 0x00007f0886b66000
                  ││ │                                                 ;   {poll}
  0.00%    0.00%  ││ │   0x00007f0870bf2e32: test   %r11d,%r11d
                  ││ │   0x00007f0870bf2e35: jne    0x00007f0870bf2efe  ;*aload
                  ││ │                                                 ; - com.github.arnaudroger.generated.Seq2ArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@13 (line 232)
                  ↘│ │   0x00007f0870bf2e3b: mov    0x50(%rsp),%r10
  0.07%    0.04%   │ │   0x00007f0870bf2e40: mov    0x10(%r10),%ecx    ;*getfield data
                   │ │                                                 ; - com.github.arnaudroger.Seq2ArrayAccess::testGet@3 (line 57)
                   │ │                                                 ; - com.github.arnaudroger.generated.Seq2ArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@17 (line 232)
  0.01%    0.01%   │ │   0x00007f0870bf2e44: mov    0xc(%r12,%rcx,8),%ebp  ;*arraylength
                   │ │                                                 ; - com.github.arnaudroger.Seq2ArrayAccess::testGet@8 (line 57)
                   │ │                                                 ; - com.github.arnaudroger.generated.Seq2ArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@17 (line 232)
                   │ │                                                 ; implicit exception: dispatches to 0x00007f0870bf2fb9
  0.18%    0.14%   │ │   0x00007f0870bf2e49: test   %ebp,%ebp
                   ╰ │   0x00007f0870bf2e4b: jle    0x00007f0870bf2e05  ;*if_icmpge
                     │                                                 ; - com.github.arnaudroger.Seq2ArrayAccess::testGet@18 (line 57)
                     │                                                 ; - com.github.arnaudroger.generated.Seq2ArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@17 (line 232)
  0.09%    0.05%     │   0x00007f0870bf2e4d: test   %ebp,%ebp
                     │   0x00007f0870bf2e4f: jbe    0x00007f0870bf2f2f
  0.00%    0.00%     │   0x00007f0870bf2e55: mov    %ebp,%r11d
                     │   0x00007f0870bf2e58: dec    %r11d
                     │   0x00007f0870bf2e5b: cmp    %ebp,%r11d
                     │   0x00007f0870bf2e5e: jae    0x00007f0870bf2f2f  ;*aload_3
                     │                                                 ; - com.github.arnaudroger.Seq2ArrayAccess::testGet@21 (line 57)
                     │                                                 ; - com.github.arnaudroger.generated.Seq2ArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@17 (line 232)
  0.08%    0.02%     │   0x00007f0870bf2e64: mov    0x10(%r12,%rcx,8),%r10d  ;*aaload
                     │                                                 ; - com.github.arnaudroger.Seq2ArrayAccess::testGet@24 (line 57)
                     │                                                 ; - com.github.arnaudroger.generated.Seq2ArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@17 (line 232)
  0.00%              │   0x00007f0870bf2e69: mov    0x10(%r12,%r10,8),%rdx  ;*getfield value
                     │                                                 ; - java.lang.Long::longValue@1 (line 1000)
                     │                                                 ; - com.github.arnaudroger.Seq2ArrayAccess::testGet@30 (line 58)
                     │                                                 ; - com.github.arnaudroger.generated.Seq2ArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@17 (line 232)
                     │                                                 ; implicit exception: dispatches to 0x00007f0870bf2f99
  0.15%    0.05%     │   0x00007f0870bf2e6e: mov    %ebp,%r9d
                     │   0x00007f0870bf2e71: add    $0xfffffffd,%r9d
                     │   0x00007f0870bf2e75: cmp    %r9d,%r11d
                     │   0x00007f0870bf2e78: mov    $0x80000000,%r11d
  0.08%    0.04%     │   0x00007f0870bf2e7e: cmovl  %r11d,%r9d
                     │   0x00007f0870bf2e82: lea    (%r12,%rcx,8),%rdi
                     │   0x00007f0870bf2e86: cmp    $0x1,%r9d
                     │   0x00007f0870bf2e8a: jle    0x00007f0870bf2f4d
  0.07%    0.01%     │   0x00007f0870bf2e90: mov    $0x1,%ecx
                     │   0x00007f0870bf2e95: data16 data16 nopw 0x0(%rax,%rax,1)
                     │                                                 ;*aload_3
                     │                                                 ; - com.github.arnaudroger.Seq2ArrayAccess::testGet@21 (line 57)
                     │                                                 ; - com.github.arnaudroger.generated.Seq2ArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@17 (line 232)
  0.01%    0.00%    ↗│   0x00007f0870bf2ea0: mov    0x10(%rdi,%rcx,4),%r11d
  0.02%    0.00%    ││   0x00007f0870bf2ea5: add    0x10(%r12,%r11,8),%rdx  ; implicit exception: dispatches to 0x00007f0870bf2f99
 21.65%   20.79%    ││   0x00007f0870bf2eaa: movslq %ecx,%r11
  0.01%    0.01%    ││   0x00007f0870bf2ead: mov    0x14(%rdi,%r11,4),%r10d  ;*aaload
                    ││                                                 ; - com.github.arnaudroger.Seq2ArrayAccess::testGet@24 (line 57)
                    ││                                                 ; - com.github.arnaudroger.generated.Seq2ArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@17 (line 232)
  0.01%             ││   0x00007f0870bf2eb2: mov    0x10(%r12,%r10,8),%rsi  ;*getfield value
                    ││                                                 ; - java.lang.Long::longValue@1 (line 1000)
                    ││                                                 ; - com.github.arnaudroger.Seq2ArrayAccess::testGet@30 (line 58)
                    ││                                                 ; - com.github.arnaudroger.generated.Seq2ArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@17 (line 232)
                    ││                                                 ; implicit exception: dispatches to 0x00007f0870bf2f99
  1.23%    1.26%    ││   0x00007f0870bf2eb7: mov    0x18(%rdi,%r11,4),%r10d  ;*aaload
                    ││                                                 ; - com.github.arnaudroger.Seq2ArrayAccess::testGet@24 (line 57)
                    ││                                                 ; - com.github.arnaudroger.generated.Seq2ArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@17 (line 232)
 19.36%   20.47%    ││   0x00007f0870bf2ebc: mov    0x10(%r12,%r10,8),%r10  ;*getfield value
                    ││                                                 ; - java.lang.Long::longValue@1 (line 1000)
                    ││                                                 ; - com.github.arnaudroger.Seq2ArrayAccess::testGet@30 (line 58)
                    ││                                                 ; - com.github.arnaudroger.generated.Seq2ArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@17 (line 232)
                    ││                                                 ; implicit exception: dispatches to 0x00007f0870bf2f99
  2.08%    2.04%    ││   0x00007f0870bf2ec1: mov    0x1c(%rdi,%r11,4),%r11d  ;*aaload
                    ││                                                 ; - com.github.arnaudroger.Seq2ArrayAccess::testGet@24 (line 57)
                    ││                                                 ; - com.github.arnaudroger.generated.Seq2ArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@17 (line 232)
                    ││   0x00007f0870bf2ec6: mov    0x10(%r12,%r11,8),%r11  ;*getfield value
                    ││                                                 ; - java.lang.Long::longValue@1 (line 1000)
                    ││                                                 ; - com.github.arnaudroger.Seq2ArrayAccess::testGet@30 (line 58)
                    ││                                                 ; - com.github.arnaudroger.generated.Seq2ArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@17 (line 232)
                    ││                                                 ; implicit exception: dispatches to 0x00007f0870bf2f99
  4.89%    4.70%    ││   0x00007f0870bf2ecb: add    %rsi,%rdx
 16.44%   15.93%    ││   0x00007f0870bf2ece: add    %r10,%rdx
  4.50%    4.98%    ││   0x00007f0870bf2ed1: add    %r11,%rdx          ;*ladd
                    ││                                                 ; - com.github.arnaudroger.Seq2ArrayAccess::testGet@33 (line 58)
                    ││                                                 ; - com.github.arnaudroger.generated.Seq2ArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@17 (line 232)
 22.57%   24.03%    ││   0x00007f0870bf2ed4: add    $0x4,%ecx          ;*iinc
                    ││                                                 ; - com.github.arnaudroger.Seq2ArrayAccess::testGet@35 (line 57)
                    ││                                                 ; - com.github.arnaudroger.generated.Seq2ArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@17 (line 232)
                    ││   0x00007f0870bf2ed7: cmp    %r9d,%ecx
                    ╰│   0x00007f0870bf2eda: jl     0x00007f0870bf2ea0  ;*if_icmpge
                     │                                                 ; - com.github.arnaudroger.Seq2ArrayAccess::testGet@18 (line 57)
                     │                                                 ; - com.github.arnaudroger.generated.Seq2ArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@17 (line 232)
  0.00%    0.01%     │   0x00007f0870bf2edc: cmp    %ebp,%ecx
                     ╰   0x00007f0870bf2ede: jge    0x00007f0870bf2e07  ;*aload_3
                                                                       ; - com.github.arnaudroger.Seq2ArrayAccess::testGet@21 (line 57)
                                                                       ; - com.github.arnaudroger.generated.Seq2ArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@17 (line 232)
  0.28%    0.26%      ↗  0x00007f0870bf2ee4: mov    0x10(%rdi,%rcx,4),%r11d  ;*aaload
                      │                                                ; - com.github.arnaudroger.Seq2ArrayAccess::testGet@24 (line 57)
                      │                                                ; - com.github.arnaudroger.generated.Seq2ArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@17 (line 232)
  0.30%    0.28%      │  0x00007f0870bf2ee9: add    0x10(%r12,%r11,8),%rdx  ;*ladd
                      │                                                ; - com.github.arnaudroger.Seq2ArrayAccess::testGet@33 (line 58)
                      │                                                ; - com.github.arnaudroger.generated.Seq2ArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@17 (line 232)
                      │                                                ; implicit exception: dispatches to 0x00007f0870bf2f99
  0.89%    0.86%      │  0x00007f0870bf2eee: inc    %ecx               ;*iinc
                      │                                                ; - com.github.arnaudroger.Seq2ArrayAccess::testGet@35 (line 57)
                      │                                                ; - com.github.arnaudroger.generated.Seq2ArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@17 (line 232)
                      │  0x00007f0870bf2ef0: cmp    %ebp,%ecx
                      ╰  0x00007f0870bf2ef2: jl     0x00007f0870bf2ee4  ;*if_icmpge
                                                                       ; - com.github.arnaudroger.Seq2ArrayAccess::testGet@18 (line 57)
                                                                       ; - com.github.arnaudroger.generated.Seq2ArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@17 (line 232)
                         0x00007f0870bf2ef4: jmpq   0x00007f0870bf2e07
....................................................................................................
 95.64%   96.22%  <total for region 1>

....[Hottest Regions]...............................................................................
 95.64%   96.22%         C2, level 4  com.github.arnaudroger.generated.Seq2ArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub, version 531 (226 bytes) 
  2.15%    2.14%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.57%    0.05%         C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 512 (44 bytes) 
  0.09%    0.02%   [kernel.kallsyms]  [unknown] (30 bytes) 
  0.05%    0.02%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.04%    0.01%   [kernel.kallsyms]  [unknown] (1 bytes) 
  0.04%    0.04%   [kernel.kallsyms]  [unknown] (24 bytes) 
  0.04%    0.00%   [kernel.kallsyms]  [unknown] (8 bytes) 
  0.03%    0.00%   [kernel.kallsyms]  [unknown] (24 bytes) 
  0.03%    0.01%           libjvm.so  _ZN10fileStream5writeEPKcm (36 bytes) 
  0.02%    0.05%   [kernel.kallsyms]  [unknown] (83 bytes) 
  0.02%    0.02%   [kernel.kallsyms]  [unknown] (9 bytes) 
  0.02%    0.01%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.02%            [kernel.kallsyms]  [unknown] (49 bytes) 
  0.02%    0.00%   [kernel.kallsyms]  [unknown] (72 bytes) 
  0.02%    0.05%           libjvm.so  _ZN12outputStream15update_positionEPKcm (17 bytes) 
  0.02%    0.04%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ (90 bytes) 
  0.02%    0.00%  libpthread-2.26.so  __pthread_disable_asynccancel (0 bytes) 
  0.01%    0.01%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.01%    0.00%   [kernel.kallsyms]  [unknown] (20 bytes) 
  1.13%    1.28%  <...other 329 warm regions...>
....................................................................................................
 99.99%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 95.64%   96.22%         C2, level 4  com.github.arnaudroger.generated.Seq2ArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub, version 531 
  3.11%    3.01%   [kernel.kallsyms]  [unknown] 
  0.57%    0.05%         C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 512 
  0.07%    0.04%      hsdis-amd64.so  [unknown] 
  0.04%    0.08%        libc-2.26.so  vfprintf 
  0.04%    0.02%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.02%    0.04%           libjvm.so  _ZN13xmlTextStream5writeEPKcm 
  0.02%    0.05%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.02%    0.01%        libc-2.26.so  __strlen_avx2 
  0.02%    0.00%           libjvm.so  _ZN13defaultStream5writeEPKcm 
  0.02%    0.00%  libpthread-2.26.so  __pthread_disable_asynccancel 
  0.02%    0.05%           libjvm.so  _ZN12outputStream15update_positionEPKcm 
  0.01%                    libjvm.so  jio_print 
  0.01%    0.00%        libc-2.26.so  _IO_fflush 
  0.01%    0.04%        libc-2.26.so  _IO_fwrite 
  0.01%    0.00%        libc-2.26.so  _IO_vsnprintf 
  0.01%    0.01%           libjvm.so  _ZN7Monitor5ILockEP6Thread 
  0.01%    0.00%        libc-2.26.so  __memmove_avx_unaligned_erms 
  0.01%    0.00%           libjvm.so  _ZN12stringStream5writeEPKcm 
  0.01%    0.00%           libjvm.so  _ZN10decode_env12handle_eventEPKcPh 
  0.30%    0.14%  <...other 57 warm methods...>
....................................................................................................
 99.99%   99.80%  <totals>

....[Distribution by Source]........................................................................
 96.20%   96.28%         C2, level 4
  3.11%    3.01%   [kernel.kallsyms]
  0.33%    0.33%           libjvm.so
  0.19%    0.25%        libc-2.26.so
  0.08%    0.04%      hsdis-amd64.so
  0.04%    0.06%  libpthread-2.26.so
  0.03%    0.02%         interpreter
  0.00%    0.00%       perf-2686.map
  0.00%                  C1, level 3
....................................................................................................
 99.99%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                     (size)  Mode  Cnt    Score   Error  Units
Seq2ArrayAccess.testGet         1000  avgt   20  320.625 ± 1.407  ns/op
Seq2ArrayAccess.testGet:·asm    1000  avgt           NaN            ---

Benchmark result is saved to jmh-result2.csv
