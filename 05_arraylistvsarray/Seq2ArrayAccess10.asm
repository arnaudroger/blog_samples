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
# Parameters: (size = 10)

# Run progress: 0.00% complete, ETA 00:00:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 8.084 ns/op
# Warmup Iteration   2: 7.676 ns/op
# Warmup Iteration   3: 7.620 ns/op
# Warmup Iteration   4: 7.785 ns/op
# Warmup Iteration   5: 7.789 ns/op
# Warmup Iteration   6: 7.846 ns/op
# Warmup Iteration   7: 7.807 ns/op
# Warmup Iteration   8: 7.759 ns/op
# Warmup Iteration   9: 7.816 ns/op
# Warmup Iteration  10: 7.778 ns/op
# Warmup Iteration  11: 7.910 ns/op
# Warmup Iteration  12: 7.819 ns/op
# Warmup Iteration  13: 7.811 ns/op
# Warmup Iteration  14: 7.818 ns/op
# Warmup Iteration  15: 7.754 ns/op
# Warmup Iteration  16: 7.815 ns/op
# Warmup Iteration  17: 7.856 ns/op
# Warmup Iteration  18: 7.765 ns/op
# Warmup Iteration  19: 7.754 ns/op
# Warmup Iteration  20: 7.790 ns/op
Iteration   1: 7.788 ns/op
Iteration   2: 7.848 ns/op
Iteration   3: 7.752 ns/op
Iteration   4: 7.849 ns/op
Iteration   5: 7.780 ns/op
Iteration   6: 7.765 ns/op
Iteration   7: 7.833 ns/op
Iteration   8: 7.792 ns/op
Iteration   9: 7.782 ns/op
Iteration  10: 7.805 ns/op
Iteration  11: 7.767 ns/op
Iteration  12: 7.818 ns/op
Iteration  13: 7.751 ns/op
Iteration  14: 7.760 ns/op
Iteration  15: 7.827 ns/op
Iteration  16: 7.818 ns/op
Iteration  17: 7.845 ns/op
Iteration  18: 7.757 ns/op
Iteration  19: 7.765 ns/op
Iteration  20: 7.752 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.Seq2ArrayAccess.testGet":
  7.793 ±(99.9%) 0.030 ns/op [Average]
  (min, avg, max) = (7.751, 7.793, 7.849), stdev = 0.035
  CI (99.9%): [7.762, 7.823] (assumes normal distribution)

Secondary result "com.github.arnaudroger.Seq2ArrayAccess.testGet:·asm":
PrintAssembly processed: 176020 total address lines.
Perf output processed (skipped 23.488 seconds):
 Column 1: cycles (20492 events)
 Column 2: instructions (20471 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.github.arnaudroger.generated.Seq2ArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub, version 540 (221 bytes) 

                                                                        ; - com.github.arnaudroger.generated.Seq2ArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@30 (line 234)
                                                                        ; implicit exception: dispatches to 0x00007f368439ff79
                          0x00007f368439fd75: test   %r11d,%r11d
                          0x00007f368439fd78: jne    0x00007f368439fe75  ;*ifeq
                                                                        ; - com.github.arnaudroger.generated.Seq2ArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@33 (line 234)
                          0x00007f368439fd7e: mov    $0x1,%ebp
                  ╭       0x00007f368439fd83: jmp    0x00007f368439fdb8
                  │↗      0x00007f368439fd85: xor    %edx,%edx          ;*if_icmpge
                  ││                                                    ; - com.github.arnaudroger.Seq2ArrayAccess::testGet@18 (line 57)
                  ││                                                    ; - com.github.arnaudroger.generated.Seq2ArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@17 (line 232)
  3.35%    2.90%  ││ ↗ ↗  0x00007f368439fd87: mov    %rbx,0x40(%rsp)
  0.07%    0.09%  ││ │ │  0x00007f368439fd8c: mov    (%rsp),%rsi
                  ││ │ │  0x00007f368439fd90: data16 xchg %ax,%ax
                  ││ │ │  0x00007f368439fd93: callq  0x00007f36841b0020  ; OopMap{[64]=Oop [72]=Oop [80]=Oop [0]=Oop off=312}
                  ││ │ │                                                ;*invokevirtual consume
                  ││ │ │                                                ; - com.github.arnaudroger.generated.Seq2ArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@20 (line 232)
                  ││ │ │                                                ;   {optimized virtual_call}
  8.49%    7.53%  ││ │ │  0x00007f368439fd98: mov    0x40(%rsp),%rbx
  0.06%    0.09%  ││ │ │  0x00007f368439fd9d: movzbl 0x94(%rbx),%r11d   ;*getfield isDone
                  ││ │ │                                                ; - com.github.arnaudroger.generated.Seq2ArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@30 (line 234)
                  ││ │ │  0x00007f368439fda5: add    $0x1,%rbp          ; OopMap{rbx=Oop [72]=Oop [80]=Oop [0]=Oop off=329}
                  ││ │ │                                                ;*ifeq
                  ││ │ │                                                ; - com.github.arnaudroger.generated.Seq2ArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@33 (line 234)
  3.09%    2.83%  ││ │ │  0x00007f368439fda9: test   %eax,0x15e94251(%rip)        # 0x00007f369a234000
                  ││ │ │                                                ;   {poll}
  0.03%    0.07%  ││ │ │  0x00007f368439fdaf: test   %r11d,%r11d
                  ││ │ │  0x00007f368439fdb2: jne    0x00007f368439fe7a  ;*aload
                  ││ │ │                                                ; - com.github.arnaudroger.generated.Seq2ArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@13 (line 232)
                  ↘│ │ │  0x00007f368439fdb8: mov    0x50(%rsp),%r10
                   │ │ │  0x00007f368439fdbd: mov    0x10(%r10),%r8d    ;*getfield data
                   │ │ │                                                ; - com.github.arnaudroger.Seq2ArrayAccess::testGet@3 (line 57)
                   │ │ │                                                ; - com.github.arnaudroger.generated.Seq2ArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@17 (line 232)
  3.58%    2.98%   │ │ │  0x00007f368439fdc1: mov    0xc(%r12,%r8,8),%r9d  ;*arraylength
                   │ │ │                                                ; - com.github.arnaudroger.Seq2ArrayAccess::testGet@8 (line 57)
                   │ │ │                                                ; - com.github.arnaudroger.generated.Seq2ArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@17 (line 232)
                   │ │ │                                                ; implicit exception: dispatches to 0x00007f368439ff25
  3.20%    2.59%   │ │ │  0x00007f368439fdc6: test   %r9d,%r9d
                   ╰ │ │  0x00007f368439fdc9: jle    0x00007f368439fd85  ;*if_icmpge
                     │ │                                                ; - com.github.arnaudroger.Seq2ArrayAccess::testGet@18 (line 57)
                     │ │                                                ; - com.github.arnaudroger.generated.Seq2ArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@17 (line 232)
  3.93%    3.72%     │ │  0x00007f368439fdcb: test   %r9d,%r9d
                     │ │  0x00007f368439fdce: jbe    0x00007f368439fea4
  2.43%    3.08%     │ │  0x00007f368439fdd4: mov    %r9d,%ecx
  0.11%    0.08%     │ │  0x00007f368439fdd7: dec    %ecx
  0.03%    0.02%     │ │  0x00007f368439fdd9: cmp    %r9d,%ecx
                     │ │  0x00007f368439fddc: jae    0x00007f368439fea4  ;*aload_3
                     │ │                                                ; - com.github.arnaudroger.Seq2ArrayAccess::testGet@21 (line 57)
                     │ │                                                ; - com.github.arnaudroger.generated.Seq2ArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@17 (line 232)
  3.09%    4.08%     │ │  0x00007f368439fde2: mov    0x10(%r12,%r8,8),%r10d  ;*aaload
                     │ │                                                ; - com.github.arnaudroger.Seq2ArrayAccess::testGet@24 (line 57)
                     │ │                                                ; - com.github.arnaudroger.generated.Seq2ArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@17 (line 232)
  0.01%    0.00%     │ │  0x00007f368439fde7: mov    0x10(%r12,%r10,8),%rdx  ;*getfield value
                     │ │                                                ; - java.lang.Long::longValue@1 (line 1000)
                     │ │                                                ; - com.github.arnaudroger.Seq2ArrayAccess::testGet@30 (line 58)
                     │ │                                                ; - com.github.arnaudroger.generated.Seq2ArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@17 (line 232)
                     │ │                                                ; implicit exception: dispatches to 0x00007f368439ff13
  6.68%    6.76%     │ │  0x00007f368439fdec: mov    %r9d,%r10d
  0.00%              │ │  0x00007f368439fdef: add    $0xfffffffd,%r10d
                     │ │  0x00007f368439fdf3: cmp    %r10d,%ecx
                     │ │  0x00007f368439fdf6: mov    $0x80000000,%r11d
  3.31%    4.74%     │ │  0x00007f368439fdfc: cmovl  %r11d,%r10d
  0.01%              │ │  0x00007f368439fe00: lea    (%r12,%r8,8),%rsi
                     │ │  0x00007f368439fe04: cmp    $0x1,%r10d
                     │ │  0x00007f368439fe08: jle    0x00007f368439fec5
  3.08%    5.27%     │ │  0x00007f368439fe0e: mov    $0x1,%edi          ;*aload_3
                     │ │                                                ; - com.github.arnaudroger.Seq2ArrayAccess::testGet@21 (line 57)
                     │ │                                                ; - com.github.arnaudroger.generated.Seq2ArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@17 (line 232)
  0.00%    0.00%    ↗│ │  0x00007f368439fe13: mov    0x10(%rsi,%rdi,4),%r11d
  0.03%    0.06%    ││ │  0x00007f368439fe18: add    0x10(%r12,%r11,8),%rdx  ; implicit exception: dispatches to 0x00007f368439ff13
  9.74%   10.98%    ││ │  0x00007f368439fe1d: movslq %edi,%rcx
  0.11%    0.07%    ││ │  0x00007f368439fe20: mov    0x14(%rsi,%rcx,4),%r11d  ;*aaload
                    ││ │                                                ; - com.github.arnaudroger.Seq2ArrayAccess::testGet@24 (line 57)
                    ││ │                                                ; - com.github.arnaudroger.generated.Seq2ArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@17 (line 232)
  0.00%    0.01%    ││ │  0x00007f368439fe25: mov    0x10(%r12,%r11,8),%rax  ;*getfield value
                    ││ │                                                ; - java.lang.Long::longValue@1 (line 1000)
                    ││ │                                                ; - com.github.arnaudroger.Seq2ArrayAccess::testGet@30 (line 58)
                    ││ │                                                ; - com.github.arnaudroger.generated.Seq2ArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@17 (line 232)
                    ││ │                                                ; implicit exception: dispatches to 0x00007f368439ff13
  2.11%    2.34%    ││ │  0x00007f368439fe2a: mov    0x18(%rsi,%rcx,4),%r8d  ;*aaload
                    ││ │                                                ; - com.github.arnaudroger.Seq2ArrayAccess::testGet@24 (line 57)
                    ││ │                                                ; - com.github.arnaudroger.generated.Seq2ArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@17 (line 232)
  5.45%    4.88%    ││ │  0x00007f368439fe2f: mov    0x10(%r12,%r8,8),%r8  ;*getfield value
                    ││ │                                                ; - java.lang.Long::longValue@1 (line 1000)
                    ││ │                                                ; - com.github.arnaudroger.Seq2ArrayAccess::testGet@30 (line 58)
                    ││ │                                                ; - com.github.arnaudroger.generated.Seq2ArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@17 (line 232)
                    ││ │                                                ; implicit exception: dispatches to 0x00007f368439ff13
  1.33%    1.37%    ││ │  0x00007f368439fe34: mov    0x1c(%rsi,%rcx,4),%r11d  ;*aaload
                    ││ │                                                ; - com.github.arnaudroger.Seq2ArrayAccess::testGet@24 (line 57)
                    ││ │                                                ; - com.github.arnaudroger.generated.Seq2ArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@17 (line 232)
                    ││ │  0x00007f368439fe39: mov    0x10(%r12,%r11,8),%r11  ;*getfield value
                    ││ │                                                ; - java.lang.Long::longValue@1 (line 1000)
                    ││ │                                                ; - com.github.arnaudroger.Seq2ArrayAccess::testGet@30 (line 58)
                    ││ │                                                ; - com.github.arnaudroger.generated.Seq2ArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@17 (line 232)
                    ││ │                                                ; implicit exception: dispatches to 0x00007f368439ff13
  2.03%    2.06%    ││ │  0x00007f368439fe3e: add    %rax,%rdx
  5.28%    4.58%    ││ │  0x00007f368439fe41: add    %r8,%rdx
  3.06%    2.91%    ││ │  0x00007f368439fe44: add    %r11,%rdx          ;*ladd
                    ││ │                                                ; - com.github.arnaudroger.Seq2ArrayAccess::testGet@33 (line 58)
                    ││ │                                                ; - com.github.arnaudroger.generated.Seq2ArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@17 (line 232)
  6.59%    5.22%    ││ │  0x00007f368439fe47: add    $0x4,%edi          ;*iinc
                    ││ │                                                ; - com.github.arnaudroger.Seq2ArrayAccess::testGet@35 (line 57)
                    ││ │                                                ; - com.github.arnaudroger.generated.Seq2ArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@17 (line 232)
  0.00%    0.00%    ││ │  0x00007f368439fe4a: cmp    %r10d,%edi
                    ╰│ │  0x00007f368439fe4d: jl     0x00007f368439fe13  ;*if_icmpge
                     │ │                                                ; - com.github.arnaudroger.Seq2ArrayAccess::testGet@18 (line 57)
                     │ │                                                ; - com.github.arnaudroger.generated.Seq2ArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@17 (line 232)
                     │ │  0x00007f368439fe4f: cmp    %r9d,%edi
                     ╰ │  0x00007f368439fe52: jge    0x00007f368439fd87  ;*aload_3
                       │                                                ; - com.github.arnaudroger.Seq2ArrayAccess::testGet@21 (line 57)
                       │                                                ; - com.github.arnaudroger.generated.Seq2ArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@17 (line 232)
                      ↗│  0x00007f368439fe58: mov    0x10(%rsi,%rdi,4),%r10d  ;*aaload
                      ││                                                ; - com.github.arnaudroger.Seq2ArrayAccess::testGet@24 (line 57)
                      ││                                                ; - com.github.arnaudroger.generated.Seq2ArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@17 (line 232)
  3.33%    2.72%      ││  0x00007f368439fe5d: add    0x10(%r12,%r10,8),%rdx  ;*ladd
                      ││                                                ; - com.github.arnaudroger.Seq2ArrayAccess::testGet@33 (line 58)
                      ││                                                ; - com.github.arnaudroger.generated.Seq2ArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@17 (line 232)
                      ││                                                ; implicit exception: dispatches to 0x00007f368439ff13
  0.17%    0.15%      ││  0x00007f368439fe62: inc    %edi               ;*iinc
                      ││                                                ; - com.github.arnaudroger.Seq2ArrayAccess::testGet@35 (line 57)
                      ││                                                ; - com.github.arnaudroger.generated.Seq2ArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@17 (line 232)
  0.00%               ││  0x00007f368439fe64: cmp    %r9d,%edi
                      ╰│  0x00007f368439fe67: jl     0x00007f368439fe58  ;*if_icmpge
                       │                                                ; - com.github.arnaudroger.Seq2ArrayAccess::testGet@18 (line 57)
                       │                                                ; - com.github.arnaudroger.generated.Seq2ArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@17 (line 232)
                       ╰  0x00007f368439fe69: jmpq   0x00007f368439fd87
                          0x00007f368439fe6e: xor    %edx,%edx
                          0x00007f368439fe70: jmpq   0x00007f368439fd50
                          0x00007f368439fe75: mov    $0x1,%ebp          ;*aload_1
                                                                        ; - com.github.arnaudroger.generated.Seq2ArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub@36 (line 235)
....................................................................................................
 83.80%   84.20%  <total for region 1>

....[Hottest Region 2]..............................................................................
C2, level 4, org.openjdk.jmh.infra.Blackhole::consume, version 512 (44 bytes) 

                     # parm0:    rdx:rdx   = long
                     #           [sp+0x30]  (sp of caller)
                     0x00007f368438dd20: mov    0x8(%rsi),%r10d
                     0x00007f368438dd24: shl    $0x3,%r10
                     0x00007f368438dd28: cmp    %r10,%rax
                     0x00007f368438dd2b: jne    0x00007f36841afe20  ;   {runtime_call}
                     0x00007f368438dd31: data16 xchg %ax,%ax
                     0x00007f368438dd34: nopl   0x0(%rax,%rax,1)
                     0x00007f368438dd3c: data16 data16 xchg %ax,%ax
                   [Verified Entry Point]
  3.08%    3.28%     0x00007f368438dd40: mov    %eax,-0x14000(%rsp)
           0.00%     0x00007f368438dd47: push   %rbp
  3.35%    3.35%     0x00007f368438dd48: sub    $0x20,%rsp         ;*synchronization entry
                                                                   ; - org.openjdk.jmh.infra.Blackhole::consume@-1 (line 392)
  0.09%    0.08%     0x00007f368438dd4c: mov    0x90(%rsi),%r10    ;*getfield l1
                                                                   ; - org.openjdk.jmh.infra.Blackhole::consume@1 (line 392)
                     0x00007f368438dd53: mov    %rdx,%r11
  3.37%    2.25%     0x00007f368438dd56: xor    0xa0(%rsi),%r11    ;*lxor
                                                                   ; - org.openjdk.jmh.infra.Blackhole::consume@17 (line 394)
  0.13%    0.07%     0x00007f368438dd5d: mov    %rdx,%r8
                     0x00007f368438dd60: xor    %r10,%r8           ;*lxor
                                                                   ; - org.openjdk.jmh.infra.Blackhole::consume@13 (line 394)
                     0x00007f368438dd63: cmp    %r11,%r8
                  ╭  0x00007f368438dd66: je     0x00007f368438dd74  ;*ifne
                  │                                                ; - org.openjdk.jmh.infra.Blackhole::consume@19 (line 394)
  3.25%    4.03%  │  0x00007f368438dd68: add    $0x20,%rsp
  0.11%    0.09%  │  0x00007f368438dd6c: pop    %rbp
                  │  0x00007f368438dd6d: test   %eax,0x15ea628d(%rip)        # 0x00007f369a234000
                  │                                                ;   {poll_return}
                  │  0x00007f368438dd73: retq   
                  ↘  0x00007f368438dd74: cmp    %r11,%r8
                     0x00007f368438dd77: mov    $0xffffffff,%ebp
                     0x00007f368438dd7c: jl     0x00007f368438dd86
                     0x00007f368438dd7e: setne  %bpl
                     0x00007f368438dd82: movzbl %bpl,%ebp          ;*lcmp
                                                                   ; - org.openjdk.jmh.infra.Blackhole::consume@18 (line 394)
                     0x00007f368438dd86: mov    %rsi,(%rsp)
....................................................................................................
 13.38%   13.16%  <total for region 2>

....[Hottest Regions]...............................................................................
 83.80%   84.20%         C2, level 4  com.github.arnaudroger.generated.Seq2ArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub, version 540 (221 bytes) 
 13.38%   13.16%         C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 512 (44 bytes) 
  0.93%    0.93%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.10%    0.01%   [kernel.kallsyms]  [unknown] (1 bytes) 
  0.09%            [kernel.kallsyms]  [unknown] (37 bytes) 
  0.05%    0.02%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.04%            [kernel.kallsyms]  [unknown] (24 bytes) 
  0.04%    0.02%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.03%    0.00%   [kernel.kallsyms]  [unknown] (9 bytes) 
  0.03%    0.01%   [kernel.kallsyms]  [unknown] (70 bytes) 
  0.03%    0.01%           libjvm.so  _ZN12outputStream15update_positionEPKcm (12 bytes) 
  0.02%    0.02%   [kernel.kallsyms]  [unknown] (48 bytes) 
  0.02%    0.01%   [kernel.kallsyms]  [unknown] (27 bytes) 
  0.02%    0.00%   [kernel.kallsyms]  [unknown] (7 bytes) 
  0.02%            [kernel.kallsyms]  [unknown] (12 bytes) 
  0.02%            [kernel.kallsyms]  [unknown] (13 bytes) 
  0.02%    0.01%   [kernel.kallsyms]  [unknown] (62 bytes) 
  0.02%    0.02%   [kernel.kallsyms]  [unknown] (43 bytes) 
  0.02%    0.01%   [kernel.kallsyms]  [unknown] (18 bytes) 
  0.02%    0.02%           libjvm.so  _ZN10fileStream5writeEPKcm (29 bytes) 
  1.28%    1.53%  <...other 340 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 83.80%   84.20%         C2, level 4  com.github.arnaudroger.generated.Seq2ArrayAccess_testGet_jmhTest::testGet_avgt_jmhStub, version 540 
 13.38%   13.16%         C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 512 
  2.15%    1.83%   [kernel.kallsyms]  [unknown] 
  0.07%    0.03%      hsdis-amd64.so  [unknown] 
  0.03%    0.10%        libc-2.26.so  vfprintf 
  0.03%    0.02%        libc-2.26.so  _IO_default_xsputn 
  0.03%    0.01%           libjvm.so  _ZN12outputStream15update_positionEPKcm 
  0.03%    0.07%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.02%    0.02%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.02%    0.04%           libjvm.so  _ZN13xmlTextStream5writeEPKcm 
  0.02%    0.01%           libjvm.so  _ZN10decode_env12handle_eventEPKcPh 
  0.02%    0.03%        libc-2.26.so  _IO_fwrite 
  0.02%    0.00%  libpthread-2.26.so  __pthread_disable_asynccancel 
  0.02%                    libjvm.so  _ZL13printf_to_envPvPKcz 
  0.01%    0.01%           libjvm.so  _ZN13defaultStream4holdEl 
  0.01%    0.01%  libpthread-2.26.so  __libc_write 
  0.01%    0.02%        libc-2.26.so  __strlen_avx2 
  0.01%    0.04%  libpthread-2.26.so  __pthread_enable_asynccancel 
  0.01%    0.02%        libc-2.26.so  _IO_str_init_static_internal 
  0.01%                    libjvm.so  _ZN2os13PlatformEvent4parkEl 
  0.28%    0.16%  <...other 52 warm methods...>
....................................................................................................
100.00%   99.79%  <totals>

....[Distribution by Source]........................................................................
 97.17%   97.35%         C2, level 4
  2.15%    1.83%   [kernel.kallsyms]
  0.38%    0.37%           libjvm.so
  0.13%    0.33%        libc-2.26.so
  0.08%    0.04%      hsdis-amd64.so
  0.05%    0.07%  libpthread-2.26.so
  0.02%    0.00%         interpreter
  0.01%    0.00%         C1, level 3
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                     (size)  Mode  Cnt  Score   Error  Units
Seq2ArrayAccess.testGet           10  avgt   20  7.793 ± 0.030  ns/op
Seq2ArrayAccess.testGet:·asm      10  avgt         NaN            ---

Benchmark result is saved to jmh-result2.csv
