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
# Parameters: (size = 1000)

# Run progress: 0.00% complete, ETA 00:00:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 620.200 ns/op
# Warmup Iteration   2: 572.946 ns/op
# Warmup Iteration   3: 591.995 ns/op
# Warmup Iteration   4: 588.487 ns/op
# Warmup Iteration   5: 588.582 ns/op
# Warmup Iteration   6: 597.984 ns/op
# Warmup Iteration   7: 585.770 ns/op
# Warmup Iteration   8: 585.683 ns/op
# Warmup Iteration   9: 587.221 ns/op
# Warmup Iteration  10: 586.070 ns/op
# Warmup Iteration  11: 591.396 ns/op
# Warmup Iteration  12: 588.212 ns/op
# Warmup Iteration  13: 586.689 ns/op
# Warmup Iteration  14: 585.743 ns/op
# Warmup Iteration  15: 585.454 ns/op
# Warmup Iteration  16: 592.898 ns/op
# Warmup Iteration  17: 590.476 ns/op
# Warmup Iteration  18: 590.021 ns/op
# Warmup Iteration  19: 587.877 ns/op
# Warmup Iteration  20: 592.600 ns/op
Iteration   1: 592.030 ns/op
Iteration   2: 590.549 ns/op
Iteration   3: 587.782 ns/op
Iteration   4: 591.367 ns/op
Iteration   5: 589.181 ns/op
Iteration   6: 590.558 ns/op
Iteration   7: 590.167 ns/op
Iteration   8: 592.218 ns/op
Iteration   9: 587.237 ns/op
Iteration  10: 588.109 ns/op
Iteration  11: 591.575 ns/op
Iteration  12: 587.019 ns/op
Iteration  13: 587.964 ns/op
Iteration  14: 588.089 ns/op
Iteration  15: 591.043 ns/op
Iteration  16: 593.752 ns/op
Iteration  17: 589.666 ns/op
Iteration  18: 589.986 ns/op
Iteration  19: 589.216 ns/op
Iteration  20: 588.004 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.Seq2ListAccess.testIndexed":
  589.776 ±(99.9%) 1.623 ns/op [Average]
  (min, avg, max) = (587.019, 589.776, 593.752), stdev = 1.869
  CI (99.9%): [588.152, 591.399] (assumes normal distribution)

Secondary result "com.github.arnaudroger.Seq2ListAccess.testIndexed:·asm":
PrintAssembly processed: 176672 total address lines.
Perf output processed (skipped 23.523 seconds):
 Column 1: cycles (20338 events)
 Column 2: instructions (20332 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub, version 534 (415 bytes) 

                                                                          ; implicit exception: dispatches to 0x00007fb1f12362e1
                            0x00007fb1f1235e79: test   %r10d,%r10d
                            0x00007fb1f1235e7c: jne    0x00007fb1f1236079  ;*ifeq
                                                                          ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@33 (line 234)
                            0x00007fb1f1235e82: mov    $0x1,%ebp
                  ╭         0x00007fb1f1235e87: jmp    0x00007fb1f1235ec0
                  │↗        0x00007fb1f1235e89: xor    %edx,%edx          ;*if_icmpge
                  ││                                                      ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@18 (line 62)
                  ││                                                      ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
                  ││   ↗ ↗  0x00007fb1f1235e8b: mov    %rax,0x68(%rsp)
  0.03%           ││   │ │  0x00007fb1f1235e90: mov    %r14,0x60(%rsp)
                  ││   │ │  0x00007fb1f1235e95: mov    0x10(%rsp),%rsi
                  ││   │ │  0x00007fb1f1235e9a: nop
                  ││   │ │  0x00007fb1f1235e9b: callq  0x00007fb1f1046020  ; OopMap{[96]=Oop [104]=Oop [112]=Oop [16]=Oop off=512}
                  ││   │ │                                                ;*invokevirtual consume
                  ││   │ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@20 (line 232)
                  ││   │ │                                                ;   {optimized virtual_call}
  0.42%    0.22%  ││   │ │  0x00007fb1f1235ea0: mov    0x68(%rsp),%rax
                  ││   │ │  0x00007fb1f1235ea5: movzbl 0x94(%rax),%r11d   ;*getfield isDone
                  ││   │ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@30 (line 234)
  0.01%    0.00%  ││   │ │  0x00007fb1f1235ead: add    $0x1,%rbp          ; OopMap{rax=Oop [96]=Oop [112]=Oop [16]=Oop off=529}
                  ││   │ │                                                ;*ifeq
                  ││   │ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@33 (line 234)
  0.05%    0.00%  ││   │ │  0x00007fb1f1235eb1: test   %eax,0x17e13149(%rip)        # 0x00007fb209049000
                  ││   │ │                                                ;   {poll}
                  ││   │ │  0x00007fb1f1235eb7: test   %r11d,%r11d
                  ││   │ │  0x00007fb1f1235eba: jne    0x00007fb1f123607e  ;*aload
                  ││   │ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@13 (line 232)
  0.01%           ↘│   │ │  0x00007fb1f1235ec0: mov    0x60(%rsp),%r14
                   │   │ │  0x00007fb1f1235ec5: mov    0x10(%r14),%r13d   ;*getfield data
                   │   │ │                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@1 (line 59)
                   │   │ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
  0.07%    0.05%   │   │ │  0x00007fb1f1235ec9: mov    0x10(%r12,%r13,8),%r8d  ;*getfield size
                   │   │ │                                                ; - java.util.ArrayList::size@1 (line 278)
                   │   │ │                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@6 (line 60)
                   │   │ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
                   │   │ │                                                ; implicit exception: dispatches to 0x00007fb1f1236289
  0.01%    0.04%   │   │ │  0x00007fb1f1235ece: test   %r8d,%r8d
                   ╰   │ │  0x00007fb1f1235ed1: jle    0x00007fb1f1235e89  ;*if_icmpge
                       │ │                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@18 (line 62)
                       │ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
  0.03%    0.02%       │ │  0x00007fb1f1235ed3: mov    0x14(%r12,%r13,8),%r10d  ;*getfield elementData
                       │ │                                                ; - java.util.ArrayList::elementData@1 (line 418)
                       │ │                                                ; - java.util.ArrayList::get@7 (line 431)
                       │ │                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@25 (line 63)
                       │ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
                       │ │  0x00007fb1f1235ed8: mov    0xc(%r12,%r10,8),%r9d  ;*aaload
                       │ │                                                ; - java.util.ArrayList::elementData@5 (line 418)
                       │ │                                                ; - java.util.ArrayList::get@7 (line 431)
                       │ │                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@25 (line 63)
                       │ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
                       │ │                                                ; implicit exception: dispatches to 0x00007fb1f12360f8
  0.16%    0.08%       │ │  0x00007fb1f1235edd: test   %r9d,%r9d
                       │ │  0x00007fb1f1235ee0: jbe    0x00007fb1f12360f8
  0.03%    0.00%       │ │  0x00007fb1f1235ee6: mov    %r8d,%r11d
                       │ │  0x00007fb1f1235ee9: dec    %r11d
                       │ │  0x00007fb1f1235eec: cmp    %r9d,%r11d
                       │ │  0x00007fb1f1235eef: jae    0x00007fb1f12360f8
  0.01%    0.02%       │ │  0x00007fb1f1235ef5: mov    $0x1,%r11d
                       │ │  0x00007fb1f1235efb: cmp    %r8d,%r11d
                       │ │  0x00007fb1f1235efe: mov    $0x1,%esi
                       │ │  0x00007fb1f1235f03: cmovg  %r8d,%esi
  0.04%    0.06%       │ │  0x00007fb1f1235f07: lea    (%r12,%r10,8),%r9
           0.00%       │ │  0x00007fb1f1235f0b: xor    %r11d,%r11d
                       │ │  0x00007fb1f1235f0e: xor    %edx,%edx          ;*lload_3
                       │ │                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@21 (line 63)
                       │ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
  0.06%    0.05%    ↗  │ │  0x00007fb1f1235f10: cmp    %r8d,%r11d
                    │  │ │  0x00007fb1f1235f13: jge    0x00007fb1f1236131  ;*if_icmplt
                    │  │ │                                                ; - java.util.ArrayList::rangeCheck@5 (line 652)
                    │  │ │                                                ; - java.util.ArrayList::get@2 (line 429)
                    │  │ │                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@25 (line 63)
                    │  │ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
                    │  │ │  0x00007fb1f1235f19: mov    0x10(%r9,%r11,4),%edi
  0.00%             │  │ │  0x00007fb1f1235f1e: mov    0x8(%r12,%rdi,8),%r10d  ; implicit exception: dispatches to 0x00007fb1f123604b
  0.19%    0.02%    │  │ │  0x00007fb1f1235f23: lea    (%r12,%rdi,8),%rcx  ;*aaload
                    │  │ │                                                ; - java.util.ArrayList::elementData@5 (line 418)
                    │  │ │                                                ; - java.util.ArrayList::get@7 (line 431)
                    │  │ │                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@25 (line 63)
                    │  │ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
                    │  │ │  0x00007fb1f1235f27: cmp    $0xf80022ae,%r10d  ;   {metadata(&apos;java/lang/Long&apos;)}
                    │  │ │  0x00007fb1f1235f2e: jne    0x00007fb1f1236257  ;*checkcast
                    │  │ │                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@28 (line 63)
                    │  │ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
  0.06%    0.01%    │  │ │  0x00007fb1f1235f34: add    0x10(%rcx),%rdx    ;*ladd
                    │  │ │                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@34 (line 63)
                    │  │ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
  0.02%    0.00%    │  │ │  0x00007fb1f1235f38: inc    %r11d              ;*iinc
                    │  │ │                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@36 (line 62)
                    │  │ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
                    │  │ │  0x00007fb1f1235f3b: cmp    %esi,%r11d
                    ╰  │ │  0x00007fb1f1235f3e: jl     0x00007fb1f1235f10  ;*if_icmpge
                       │ │                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@18 (line 62)
                       │ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
                       │ │  0x00007fb1f1235f40: mov    %r8d,%r10d
  0.02%                │ │  0x00007fb1f1235f43: add    $0xfffffffd,%r10d
  0.00%    0.01%       │ │  0x00007fb1f1235f47: cmp    %r10d,%r8d
                       │ │  0x00007fb1f1235f4a: mov    $0x80000000,%esi
                       │ │  0x00007fb1f1235f4f: cmovl  %esi,%r10d
  0.05%    0.00%       │ │  0x00007fb1f1235f53: cmp    %r10d,%r11d
                     ╭ │ │  0x00007fb1f1235f56: jge    0x00007fb1f1235ffc
                     │ │ │  0x00007fb1f1235f5c: nopl   0x0(%rax)          ;*lload_3
                     │ │ │                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@21 (line 63)
                     │ │ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
  0.62%    0.63%     │↗│ │  0x00007fb1f1235f60: mov    0x10(%r9,%r11,4),%edi
  4.09%    3.42%     │││ │  0x00007fb1f1235f65: mov    0x8(%r12,%rdi,8),%esi  ; implicit exception: dispatches to 0x00007fb1f123604b
  5.80%    6.07%     │││ │  0x00007fb1f1235f6a: lea    (%r12,%rdi,8),%rcx  ;*aaload
                     │││ │                                                ; - java.util.ArrayList::elementData@5 (line 418)
                     │││ │                                                ; - java.util.ArrayList::get@7 (line 431)
                     │││ │                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@25 (line 63)
                     │││ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
  3.10%    2.96%     │││ │  0x00007fb1f1235f6e: cmp    $0xf80022ae,%esi   ;   {metadata(&apos;java/lang/Long&apos;)}
                     │││ │  0x00007fb1f1235f74: jne    0x00007fb1f1236257  ;*checkcast
                     │││ │                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@28 (line 63)
                     │││ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
  2.84%    3.10%     │││ │  0x00007fb1f1235f7a: add    0x10(%rcx),%rdx    ;*ladd
                     │││ │                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@34 (line 63)
                     │││ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
  9.16%    8.84%     │││ │  0x00007fb1f1235f7e: movslq %r11d,%rbx
  1.18%    1.04%     │││ │  0x00007fb1f1235f81: mov    0x14(%r9,%rbx,4),%edi  ;*aaload
                     │││ │                                                ; - java.util.ArrayList::elementData@5 (line 418)
                     │││ │                                                ; - java.util.ArrayList::get@7 (line 431)
                     │││ │                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@25 (line 63)
                     │││ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
  2.70%    2.38%     │││ │  0x00007fb1f1235f86: test   %edi,%edi
                     │││ │  0x00007fb1f1235f88: je     0x00007fb1f123603c  ;*checkcast
                     │││ │                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@28 (line 63)
                     │││ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
  0.93%    1.02%     │││ │  0x00007fb1f1235f8e: mov    0x8(%r12,%rdi,8),%esi
 10.85%   10.69%     │││ │  0x00007fb1f1235f93: lea    (%r12,%rdi,8),%rcx  ;*aaload
                     │││ │                                                ; - java.util.ArrayList::elementData@5 (line 418)
                     │││ │                                                ; - java.util.ArrayList::get@7 (line 431)
                     │││ │                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@25 (line 63)
                     │││ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
  0.84%    0.62%     │││ │  0x00007fb1f1235f97: cmp    $0xf80022ae,%esi   ;   {metadata(&apos;java/lang/Long&apos;)}
                     │││ │  0x00007fb1f1235f9d: jne    0x00007fb1f1236254  ;*checkcast
                     │││ │                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@28 (line 63)
                     │││ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
  4.52%    4.76%     │││ │  0x00007fb1f1235fa3: mov    0x18(%r9,%rbx,4),%esi  ;*aaload
                     │││ │                                                ; - java.util.ArrayList::elementData@5 (line 418)
                     │││ │                                                ; - java.util.ArrayList::get@7 (line 431)
                     │││ │                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@25 (line 63)
                     │││ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
  0.89%    0.77%     │││ │  0x00007fb1f1235fa8: add    0x10(%rcx),%rdx    ;*ladd
                     │││ │                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@34 (line 63)
                     │││ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
  9.09%    9.74%     │││ │  0x00007fb1f1235fac: test   %esi,%esi
                     │││ │  0x00007fb1f1235fae: je     0x00007fb1f1236041  ;*checkcast
                     │││ │                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@28 (line 63)
                     │││ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
  0.70%    0.60%     │││ │  0x00007fb1f1235fb4: mov    0x8(%r12,%rsi,8),%edi
  3.70%    4.18%     │││ │  0x00007fb1f1235fb9: lea    (%r12,%rsi,8),%rcx  ;*aaload
                     │││ │                                                ; - java.util.ArrayList::elementData@5 (line 418)
                     │││ │                                                ; - java.util.ArrayList::get@7 (line 431)
                     │││ │                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@25 (line 63)
                     │││ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
  0.86%    0.57%     │││ │  0x00007fb1f1235fbd: cmp    $0xf80022ae,%edi   ;   {metadata(&apos;java/lang/Long&apos;)}
                     │││ │  0x00007fb1f1235fc3: jne    0x00007fb1f123624e  ;*checkcast
                     │││ │                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@28 (line 63)
                     │││ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
  7.20%    7.29%     │││ │  0x00007fb1f1235fc9: mov    0x1c(%r9,%rbx,4),%esi  ;*aaload
                     │││ │                                                ; - java.util.ArrayList::elementData@5 (line 418)
                     │││ │                                                ; - java.util.ArrayList::get@7 (line 431)
                     │││ │                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@25 (line 63)
                     │││ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
  0.77%    0.63%     │││ │  0x00007fb1f1235fce: add    0x10(%rcx),%rdx    ;*ladd
                     │││ │                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@34 (line 63)
                     │││ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
  6.51%    7.35%     │││ │  0x00007fb1f1235fd2: test   %esi,%esi
                     │││ │  0x00007fb1f1235fd4: je     0x00007fb1f1236047  ;*checkcast
                     │││ │                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@28 (line 63)
                     │││ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
  0.81%    0.64%     │││ │  0x00007fb1f1235fd6: mov    0x8(%r12,%rsi,8),%edi
  6.08%    6.45%     │││ │  0x00007fb1f1235fdb: lea    (%r12,%rsi,8),%rcx  ;*aaload
                     │││ │                                                ; - java.util.ArrayList::elementData@5 (line 418)
                     │││ │                                                ; - java.util.ArrayList::get@7 (line 431)
                     │││ │                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@25 (line 63)
                     │││ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
  0.51%    0.65%     │││ │  0x00007fb1f1235fdf: cmp    $0xf80022ae,%edi   ;   {metadata(&apos;java/lang/Long&apos;)}
                     │││ │  0x00007fb1f1235fe5: jne    0x00007fb1f1236248  ;*checkcast
                     │││ │                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@28 (line 63)
                     │││ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
  4.67%    4.95%     │││ │  0x00007fb1f1235feb: add    0x10(%rcx),%rdx    ;*ladd
                     │││ │                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@34 (line 63)
                     │││ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
  2.49%    3.00%     │││ │  0x00007fb1f1235fef: add    $0x4,%r11d         ;*iinc
                     │││ │                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@36 (line 62)
                     │││ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
  4.45%    4.08%     │││ │  0x00007fb1f1235ff3: cmp    %r10d,%r11d
                     │╰│ │  0x00007fb1f1235ff6: jl     0x00007fb1f1235f60  ;*if_icmpge
                     │ │ │                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@18 (line 62)
                     │ │ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
  0.01%    0.00%     ↘ │ │  0x00007fb1f1235ffc: cmp    %r8d,%r11d
                       ╰ │  0x00007fb1f1235fff: jge    0x00007fb1f1235e8b
  0.16%    0.11%         │  0x00007fb1f1236005: data16 xchg %ax,%ax       ;*lload_3
                         │                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@21 (line 63)
                         │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
  0.00%    0.01%        ↗│  0x00007fb1f1236008: cmp    %r8d,%r11d
                        ││  0x00007fb1f123600b: jge    0x00007fb1f1236138  ;*if_icmplt
                        ││                                                ; - java.util.ArrayList::rangeCheck@5 (line 652)
                        ││                                                ; - java.util.ArrayList::get@2 (line 429)
                        ││                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@25 (line 63)
                        ││                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
  0.03%    0.03%        ││  0x00007fb1f1236011: mov    0x10(%r9,%r11,4),%edi
  0.22%    0.14%        ││  0x00007fb1f1236016: mov    0x8(%r12,%rdi,8),%esi  ; implicit exception: dispatches to 0x00007fb1f1236299
  0.30%    0.35%        ││  0x00007fb1f123601b: lea    (%r12,%rdi,8),%rcx  ;*aaload
                        ││                                                ; - java.util.ArrayList::elementData@5 (line 418)
                        ││                                                ; - java.util.ArrayList::get@7 (line 431)
                        ││                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@25 (line 63)
                        ││                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
                        ││  0x00007fb1f123601f: cmp    $0xf80022ae,%esi   ;   {metadata(&apos;java/lang/Long&apos;)}
                        ││  0x00007fb1f1236025: jne    0x00007fb1f1236241  ;*checkcast
                        ││                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@28 (line 63)
                        ││                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
  0.10%    0.13%        ││  0x00007fb1f123602b: add    0x10(%rcx),%rdx    ;*ladd
                        ││                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@34 (line 63)
                        ││                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
  0.25%    0.11%        ││  0x00007fb1f123602f: inc    %r11d              ;*iinc
                        ││                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@36 (line 62)
                        ││                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
                        ││  0x00007fb1f1236032: cmp    %r8d,%r11d
                        ╰│  0x00007fb1f1236035: jl     0x00007fb1f1236008  ;*if_icmpge
                         │                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@18 (line 62)
                         │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
                         ╰  0x00007fb1f1236037: jmpq   0x00007fb1f1235e8b
                            0x00007fb1f123603c: inc    %r11d
....................................................................................................
 97.73%   97.98%  <total for region 1>

....[Hottest Regions]...............................................................................
 97.73%   97.98%         C2, level 4  com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub, version 534 (415 bytes) 
  0.24%    0.05%         C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 512 (40 bytes) 
  0.21%    0.21%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.14%    0.01%   [kernel.kallsyms]  [unknown] (49 bytes) 
  0.11%    0.04%   [kernel.kallsyms]  [unknown] (109 bytes) 
  0.04%    0.00%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.04%            [kernel.kallsyms]  [unknown] (28 bytes) 
  0.03%    0.01%   [kernel.kallsyms]  [unknown] (11 bytes) 
  0.03%    0.01%           libjvm.so  _ZN10fileStream5writeEPKcm (69 bytes) 
  0.03%    0.03%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ (72 bytes) 
  0.02%    0.01%   [kernel.kallsyms]  [unknown] (39 bytes) 
  0.02%    0.02%        libc-2.26.so  __strchrnul_avx2 (42 bytes) 
  0.02%    0.00%  libpthread-2.26.so  __libc_write (16 bytes) 
  0.02%    0.02%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.02%    0.02%   [kernel.kallsyms]  [unknown] (9 bytes) 
  0.02%    0.03%   [kernel.kallsyms]  [unknown] (26 bytes) 
  0.02%    0.01%   [kernel.kallsyms]  [unknown] (7 bytes) 
  0.02%                    libjvm.so  _ZN10decode_env12handle_eventEPKcPh (19 bytes) 
  0.02%    0.00%           libjvm.so  _ZN13xmlTextStream5writeEPKcm (37 bytes) 
  0.01%    0.03%   [kernel.kallsyms]  [unknown] (75 bytes) 
  1.18%    1.48%  <...other 320 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 97.73%   97.98%         C2, level 4  com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub, version 534 
  1.33%    1.20%   [kernel.kallsyms]  [unknown] 
  0.24%    0.05%         C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 512 
  0.07%    0.06%      hsdis-amd64.so  decode_instructions 
  0.04%    0.02%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.03%    0.01%  libpthread-2.26.so  __libc_write 
  0.03%    0.05%        libc-2.26.so  vfprintf 
  0.03%    0.04%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.02%    0.00%           libjvm.so  _ZN10decode_env12handle_eventEPKcPh 
  0.02%    0.02%        libc-2.26.so  __strchrnul_avx2 
  0.02%    0.02%           libjvm.so  _ZN13xmlTextStream5writeEPKcm 
  0.02%                    libjvm.so  jio_print 
  0.02%    0.03%           libjvm.so  _ZN13defaultStream4holdEl 
  0.01%    0.02%        libc-2.26.so  __strlen_avx2 
  0.01%    0.01%           libjvm.so  _ZN13defaultStream5writeEPKcm 
  0.01%    0.07%        libc-2.26.so  _IO_fwrite 
  0.01%    0.00%  libpthread-2.26.so  __pthread_disable_asynccancel 
  0.01%    0.02%        libc-2.26.so  _IO_fflush 
  0.01%                    libjvm.so  _ZNK6Symbol14print_value_onEP12outputStream 
  0.01%    0.00%  libpthread-2.26.so  __pthread_enable_asynccancel 
  0.30%    0.18%  <...other 56 warm methods...>
....................................................................................................
100.00%   99.82%  <totals>

....[Distribution by Source]........................................................................
 97.97%   98.03%         C2, level 4
  1.33%    1.20%   [kernel.kallsyms]
  0.37%    0.33%           libjvm.so
  0.16%    0.31%        libc-2.26.so
  0.07%    0.07%      hsdis-amd64.so
  0.07%    0.04%  libpthread-2.26.so
  0.02%    0.01%         interpreter
  0.00%             Unknown, level 0
  0.00%    0.00%         C1, level 3
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:45

Benchmark                        (size)  Mode  Cnt    Score   Error  Units
Seq2ListAccess.testIndexed         1000  avgt   20  589.776 ± 1.623  ns/op
Seq2ListAccess.testIndexed:·asm    1000  avgt           NaN            ---

Benchmark result is saved to jmh-result2.csv
