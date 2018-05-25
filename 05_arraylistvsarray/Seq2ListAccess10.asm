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
# Parameters: (size = 10)

# Run progress: 0.00% complete, ETA 00:00:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 13.387 ns/op
# Warmup Iteration   2: 12.024 ns/op
# Warmup Iteration   3: 11.492 ns/op
# Warmup Iteration   4: 11.512 ns/op
# Warmup Iteration   5: 11.513 ns/op
# Warmup Iteration   6: 11.567 ns/op
# Warmup Iteration   7: 11.570 ns/op
# Warmup Iteration   8: 11.493 ns/op
# Warmup Iteration   9: 11.522 ns/op
# Warmup Iteration  10: 11.659 ns/op
# Warmup Iteration  11: 11.569 ns/op
# Warmup Iteration  12: 11.550 ns/op
# Warmup Iteration  13: 11.578 ns/op
# Warmup Iteration  14: 11.528 ns/op
# Warmup Iteration  15: 11.500 ns/op
# Warmup Iteration  16: 11.532 ns/op
# Warmup Iteration  17: 11.549 ns/op
# Warmup Iteration  18: 11.523 ns/op
# Warmup Iteration  19: 11.488 ns/op
# Warmup Iteration  20: 11.510 ns/op
Iteration   1: 11.578 ns/op
Iteration   2: 11.607 ns/op
Iteration   3: 11.513 ns/op
Iteration   4: 11.559 ns/op
Iteration   5: 11.504 ns/op
Iteration   6: 11.552 ns/op
Iteration   7: 11.542 ns/op
Iteration   8: 11.564 ns/op
Iteration   9: 11.483 ns/op
Iteration  10: 11.504 ns/op
Iteration  11: 11.499 ns/op
Iteration  12: 11.539 ns/op
Iteration  13: 11.489 ns/op
Iteration  14: 11.506 ns/op
Iteration  15: 11.536 ns/op
Iteration  16: 11.499 ns/op
Iteration  17: 11.534 ns/op
Iteration  18: 11.481 ns/op
Iteration  19: 11.471 ns/op
Iteration  20: 11.489 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.github.arnaudroger.Seq2ListAccess.testIndexed":
  11.522 ±(99.9%) 0.032 ns/op [Average]
  (min, avg, max) = (11.471, 11.522, 11.607), stdev = 0.037
  CI (99.9%): [11.491, 11.554] (assumes normal distribution)

Secondary result "com.github.arnaudroger.Seq2ListAccess.testIndexed:·asm":
PrintAssembly processed: 167968 total address lines.
Perf output processed (skipped 23.270 seconds):
 Column 1: cycles (20519 events)
 Column 2: instructions (20511 events)

Hottest code regions (>10.00% "cycles" events):

....[Hottest Region 1]..............................................................................
C2, level 4, com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub, version 513 (429 bytes) 

                                                                             ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@30 (line 234)
                                                                             ; implicit exception: dispatches to 0x00007f8e687c5cbd
                               0x00007f8e687c5879: test   %r11d,%r11d
                               0x00007f8e687c587c: jne    0x00007f8e687c5a80  ;*ifeq
                                                                             ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@33 (line 234)
                               0x00007f8e687c5882: mov    $0x1,%ebp
                  ╭            0x00007f8e687c5887: jmp    0x00007f8e687c58c0
                  │↗           0x00007f8e687c5889: xor    %edx,%edx          ;*if_icmpge
                  ││                                                         ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@18 (line 62)
                  ││                                                         ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
  0.37%    0.48%  ││      ↗ ↗  0x00007f8e687c588b: mov    %r14,0x68(%rsp)
  0.04%    0.02%  ││      │ │  0x00007f8e687c5890: mov    %r13,0x60(%rsp)
  1.44%    2.15%  ││      │ │  0x00007f8e687c5895: mov    0x10(%rsp),%rsi
  0.40%    0.49%  ││      │ │  0x00007f8e687c589a: nop
  0.34%    0.57%  ││      │ │  0x00007f8e687c589b: callq  0x00007f8e685ea020  ; OopMap{[96]=Oop [104]=Oop [112]=Oop [16]=Oop off=512}
                  ││      │ │                                                ;*invokevirtual consume
                  ││      │ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@20 (line 232)
                  ││      │ │                                                ;   {optimized virtual_call}
  3.92%    6.01%  ││      │ │  0x00007f8e687c58a0: mov    0x68(%rsp),%r14
  0.38%    0.51%  ││      │ │  0x00007f8e687c58a5: movzbl 0x94(%r14),%r11d   ;*getfield isDone
                  ││      │ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@30 (line 234)
  0.13%    0.16%  ││      │ │  0x00007f8e687c58ad: add    $0x1,%rbp          ; OopMap{r14=Oop [96]=Oop [112]=Oop [16]=Oop off=529}
                  ││      │ │                                                ;*ifeq
                  ││      │ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@33 (line 234)
  1.97%    2.57%  ││      │ │  0x00007f8e687c58b1: test   %eax,0x15e04749(%rip)        # 0x00007f8e7e5ca000
                  ││      │ │                                                ;   {poll}
  0.31%    0.43%  ││      │ │  0x00007f8e687c58b7: test   %r11d,%r11d
                  ││      │ │  0x00007f8e687c58ba: jne    0x00007f8e687c5a85  ;*aload
                  ││      │ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@13 (line 232)
  0.05%    0.07%  ↘│      │ │  0x00007f8e687c58c0: mov    0x60(%rsp),%r13
  0.19%    0.18%   │      │ │  0x00007f8e687c58c5: mov    0x10(%r13),%r11d   ;*getfield data
                   │      │ │                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@1 (line 59)
                   │      │ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
  1.83%    2.47%   │      │ │  0x00007f8e687c58c9: mov    0x10(%r12,%r11,8),%r9d  ;*getfield size
                   │      │ │                                                ; - java.util.ArrayList::size@1 (line 278)
                   │      │ │                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@6 (line 60)
                   │      │ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
                   │      │ │                                                ; implicit exception: dispatches to 0x00007f8e687c5c71
  2.57%    3.07%   │      │ │  0x00007f8e687c58ce: test   %r9d,%r9d
                   ╰      │ │  0x00007f8e687c58d1: jle    0x00007f8e687c5889  ;*if_icmpge
                          │ │                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@18 (line 62)
                          │ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
  2.11%    2.49%          │ │  0x00007f8e687c58d3: mov    0x14(%r12,%r11,8),%ecx  ;*getfield elementData
                          │ │                                                ; - java.util.ArrayList::elementData@1 (line 418)
                          │ │                                                ; - java.util.ArrayList::get@7 (line 431)
                          │ │                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@25 (line 63)
                          │ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
           0.01%          │ │  0x00007f8e687c58d8: mov    0xc(%r12,%rcx,8),%r8d  ;*aaload
                          │ │                                                ; - java.util.ArrayList::elementData@5 (line 418)
                          │ │                                                ; - java.util.ArrayList::get@7 (line 431)
                          │ │                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@25 (line 63)
                          │ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
                          │ │                                                ; implicit exception: dispatches to 0x00007f8e687c5aaf
  9.05%   11.97%          │ │  0x00007f8e687c58dd: test   %r8d,%r8d
                          │ │  0x00007f8e687c58e0: jbe    0x00007f8e687c5aaf
  2.13%    3.66%          │ │  0x00007f8e687c58e6: mov    %r9d,%r10d
                          │ │  0x00007f8e687c58e9: dec    %r10d
                          │ │  0x00007f8e687c58ec: cmp    %r8d,%r10d
                          │ │  0x00007f8e687c58ef: jae    0x00007f8e687c5aaf
  2.12%    3.24%          │ │  0x00007f8e687c58f5: mov    $0x1,%r8d
  0.00%                   │ │  0x00007f8e687c58fb: cmp    %r9d,%r8d
                          │ │  0x00007f8e687c58fe: mov    $0x1,%r10d
                          │ │  0x00007f8e687c5904: cmovg  %r9d,%r10d
  2.31%    2.88%          │ │  0x00007f8e687c5908: shl    $0x3,%rcx
                          │ │  0x00007f8e687c590c: xor    %r8d,%r8d
                          │ │  0x00007f8e687c590f: xor    %edx,%edx          ;*lload_3
                          │ │                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@21 (line 63)
                          │ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
  2.18%    2.62%    ↗     │ │  0x00007f8e687c5911: cmp    %r9d,%r8d
                    │     │ │  0x00007f8e687c5914: jge    0x00007f8e687c5ae5  ;*if_icmplt
                    │     │ │                                                ; - java.util.ArrayList::rangeCheck@5 (line 652)
                    │     │ │                                                ; - java.util.ArrayList::get@2 (line 429)
                    │     │ │                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@25 (line 63)
                    │     │ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
  0.01%    0.00%    │     │ │  0x00007f8e687c591a: mov    0x10(%rcx,%r8,4),%edi
  0.00%             │     │ │  0x00007f8e687c591f: mov    0x8(%r12,%rdi,8),%ebx  ; implicit exception: dispatches to 0x00007f8e687c5a4c
  7.88%    7.01%    │     │ │  0x00007f8e687c5924: lea    (%r12,%rdi,8),%rax  ;*aaload
                    │     │ │                                                ; - java.util.ArrayList::elementData@5 (line 418)
                    │     │ │                                                ; - java.util.ArrayList::get@7 (line 431)
                    │     │ │                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@25 (line 63)
                    │     │ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
  0.00%    0.00%    │     │ │  0x00007f8e687c5928: cmp    $0xf80022ae,%ebx   ;   {metadata(&apos;java/lang/Long&apos;)}
                    │     │ │  0x00007f8e687c592e: jne    0x00007f8e687c5c3f  ;*checkcast
                    │     │ │                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@28 (line 63)
                    │     │ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
  2.19%    1.86%    │     │ │  0x00007f8e687c5934: add    0x10(%rax),%rdx    ;*ladd
                    │     │ │                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@34 (line 63)
                    │     │ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
  1.65%    1.14%    │     │ │  0x00007f8e687c5938: inc    %r8d               ;*iinc
                    │     │ │                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@36 (line 62)
                    │     │ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
                    │     │ │  0x00007f8e687c593b: cmp    %r10d,%r8d
                    ╰     │ │  0x00007f8e687c593e: jl     0x00007f8e687c5911  ;*if_icmpge
                          │ │                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@18 (line 62)
                          │ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
                          │ │  0x00007f8e687c5940: mov    %r9d,%edi
  0.61%    0.43%          │ │  0x00007f8e687c5943: add    $0xfffffffd,%edi
  1.68%    1.38%          │ │  0x00007f8e687c5946: cmp    %edi,%r9d
                          │ │  0x00007f8e687c5949: mov    $0x80000000,%r10d
  0.00%                   │ │  0x00007f8e687c594f: cmovl  %r10d,%edi
  2.29%    2.19%          │ │  0x00007f8e687c5953: cmp    %edi,%r8d
                     ╭    │ │  0x00007f8e687c5956: jge    0x00007f8e687c59fe
  0.00%              │    │ │  0x00007f8e687c595c: nopl   0x0(%rax)          ;*lload_3
                     │    │ │                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@21 (line 63)
                     │    │ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
  1.64%    0.66%     │   ↗│ │  0x00007f8e687c5960: mov    0x10(%rcx,%r8,4),%ebx
  0.57%    0.22%     │   ││ │  0x00007f8e687c5965: mov    0x8(%r12,%rbx,8),%r10d  ; implicit exception: dispatches to 0x00007f8e687c5a4c
  2.05%    1.25%     │   ││ │  0x00007f8e687c596a: lea    (%r12,%rbx,8),%rax  ;*aaload
                     │   ││ │                                                ; - java.util.ArrayList::elementData@5 (line 418)
                     │   ││ │                                                ; - java.util.ArrayList::get@7 (line 431)
                     │   ││ │                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@25 (line 63)
                     │   ││ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
  0.58%    0.63%     │   ││ │  0x00007f8e687c596e: cmp    $0xf80022ae,%r10d  ;   {metadata(&apos;java/lang/Long&apos;)}
                     │   ││ │  0x00007f8e687c5975: jne    0x00007f8e687c5c3f  ;*checkcast
                     │   ││ │                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@28 (line 63)
                     │   ││ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
  1.65%    1.61%     │   ││ │  0x00007f8e687c597b: add    0x10(%rax),%rdx    ;*ladd
                     │   ││ │                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@34 (line 63)
                     │   ││ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
  0.58%    0.19%     │   ││ │  0x00007f8e687c597f: movslq %r8d,%rbx
  1.46%    0.63%     │   ││ │  0x00007f8e687c5982: mov    0x14(%rcx,%rbx,4),%r10d  ;*aaload
                     │   ││ │                                                ; - java.util.ArrayList::elementData@5 (line 418)
                     │   ││ │                                                ; - java.util.ArrayList::get@7 (line 431)
                     │   ││ │                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@25 (line 63)
                     │   ││ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
  0.58%    0.61%     │   ││ │  0x00007f8e687c5987: test   %r10d,%r10d
                     │╭  ││ │  0x00007f8e687c598a: je     0x00007f8e687c5a3d  ;*checkcast
                     ││  ││ │                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@28 (line 63)
                     ││  ││ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
  1.64%    2.09%     ││  ││ │  0x00007f8e687c5990: mov    0x8(%r12,%r10,8),%esi
  1.49%    1.05%     ││  ││ │  0x00007f8e687c5995: lea    (%r12,%r10,8),%rax  ;*aaload
                     ││  ││ │                                                ; - java.util.ArrayList::elementData@5 (line 418)
                     ││  ││ │                                                ; - java.util.ArrayList::get@7 (line 431)
                     ││  ││ │                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@25 (line 63)
                     ││  ││ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
  1.64%    0.94%     ││  ││ │  0x00007f8e687c5999: cmp    $0xf80022ae,%esi   ;   {metadata(&apos;java/lang/Long&apos;)}
                     ││  ││ │  0x00007f8e687c599f: jne    0x00007f8e687c5c3c  ;*checkcast
                     ││  ││ │                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@28 (line 63)
                     ││  ││ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
  1.46%    1.06%     ││  ││ │  0x00007f8e687c59a5: mov    0x18(%rcx,%rbx,4),%esi  ;*aaload
                     ││  ││ │                                                ; - java.util.ArrayList::elementData@5 (line 418)
                     ││  ││ │                                                ; - java.util.ArrayList::get@7 (line 431)
                     ││  ││ │                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@25 (line 63)
                     ││  ││ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
  0.78%    0.74%     ││  ││ │  0x00007f8e687c59a9: add    0x10(%rax),%rdx    ;*ladd
                     ││  ││ │                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@34 (line 63)
                     ││  ││ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
  1.81%    1.12%     ││  ││ │  0x00007f8e687c59ad: test   %esi,%esi
                     ││╭ ││ │  0x00007f8e687c59af: je     0x00007f8e687c5a42  ;*checkcast
                     │││ ││ │                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@28 (line 63)
                     │││ ││ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
  1.56%    0.41%     │││ ││ │  0x00007f8e687c59b5: mov    0x8(%r12,%rsi,8),%r10d
  0.97%    0.38%     │││ ││ │  0x00007f8e687c59ba: lea    (%r12,%rsi,8),%rax  ;*aaload
                     │││ ││ │                                                ; - java.util.ArrayList::elementData@5 (line 418)
                     │││ ││ │                                                ; - java.util.ArrayList::get@7 (line 431)
                     │││ ││ │                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@25 (line 63)
                     │││ ││ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
  0.45%    0.29%     │││ ││ │  0x00007f8e687c59be: cmp    $0xf80022ae,%r10d  ;   {metadata(&apos;java/lang/Long&apos;)}
                     │││ ││ │  0x00007f8e687c59c5: jne    0x00007f8e687c5c36  ;*checkcast
                     │││ ││ │                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@28 (line 63)
                     │││ ││ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
  1.64%    0.31%     │││ ││ │  0x00007f8e687c59cb: mov    0x1c(%rcx,%rbx,4),%ebx  ;*aaload
                     │││ ││ │                                                ; - java.util.ArrayList::elementData@5 (line 418)
                     │││ ││ │                                                ; - java.util.ArrayList::get@7 (line 431)
                     │││ ││ │                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@25 (line 63)
                     │││ ││ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
  1.56%    0.09%     │││ ││ │  0x00007f8e687c59cf: add    0x10(%rax),%rdx    ;*ladd
                     │││ ││ │                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@34 (line 63)
                     │││ ││ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
  1.74%    0.43%     │││ ││ │  0x00007f8e687c59d3: test   %ebx,%ebx
                     │││╭││ │  0x00007f8e687c59d5: je     0x00007f8e687c5a48  ;*checkcast
                     ││││││ │                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@28 (line 63)
                     ││││││ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
  0.30%    0.04%     ││││││ │  0x00007f8e687c59d7: mov    0x8(%r12,%rbx,8),%r10d
  0.98%    0.50%     ││││││ │  0x00007f8e687c59dc: lea    (%r12,%rbx,8),%rax  ;*aaload
                     ││││││ │                                                ; - java.util.ArrayList::elementData@5 (line 418)
                     ││││││ │                                                ; - java.util.ArrayList::get@7 (line 431)
                     ││││││ │                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@25 (line 63)
                     ││││││ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
  1.61%    0.20%     ││││││ │  0x00007f8e687c59e0: cmp    $0xf80022ae,%r10d  ;   {metadata(&apos;java/lang/Long&apos;)}
                     ││││││ │  0x00007f8e687c59e7: jne    0x00007f8e687c5c30  ;*checkcast
                     ││││││ │                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@28 (line 63)
                     ││││││ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
  1.38%    0.59%     ││││││ │  0x00007f8e687c59ed: add    0x10(%rax),%rdx    ;*ladd
                     ││││││ │                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@34 (line 63)
                     ││││││ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
  0.58%    0.16%     ││││││ │  0x00007f8e687c59f1: add    $0x4,%r8d          ;*iinc
                     ││││││ │                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@36 (line 62)
                     ││││││ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
  0.91%    0.70%     ││││││ │  0x00007f8e687c59f5: cmp    %edi,%r8d
                     ││││╰│ │  0x00007f8e687c59f8: jl     0x00007f8e687c5960  ;*if_icmpge
                     ││││ │ │                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@18 (line 62)
                     ││││ │ │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
  0.01%    0.02%     ↘│││ │ │  0x00007f8e687c59fe: cmp    %r9d,%r8d
                      │││ ╰ │  0x00007f8e687c5a01: jge    0x00007f8e687c588b
  1.41%    1.09%      │││   │  0x00007f8e687c5a07: nop                       ;*lload_3
                      │││   │                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@21 (line 63)
                      │││   │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
  0.35%    0.23%      │││  ↗│  0x00007f8e687c5a08: cmp    %r9d,%r8d
                      │││  ││  0x00007f8e687c5a0b: jge    0x00007f8e687c5aec  ;*if_icmplt
                      │││  ││                                                ; - java.util.ArrayList::rangeCheck@5 (line 652)
                      │││  ││                                                ; - java.util.ArrayList::get@2 (line 429)
                      │││  ││                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@25 (line 63)
                      │││  ││                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
  0.36%    0.36%      │││  ││  0x00007f8e687c5a11: mov    0x10(%rcx,%r8,4),%edi
  0.00%    0.01%      │││  ││  0x00007f8e687c5a16: mov    0x8(%r12,%rdi,8),%r10d  ; implicit exception: dispatches to 0x00007f8e687c5c81
  1.55%    1.69%      │││  ││  0x00007f8e687c5a1b: lea    (%r12,%rdi,8),%rax  ;*aaload
                      │││  ││                                                ; - java.util.ArrayList::elementData@5 (line 418)
                      │││  ││                                                ; - java.util.ArrayList::get@7 (line 431)
                      │││  ││                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@25 (line 63)
                      │││  ││                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
  0.39%    0.37%      │││  ││  0x00007f8e687c5a1f: cmp    $0xf80022ae,%r10d  ;   {metadata(&apos;java/lang/Long&apos;)}
                      │││  ││  0x00007f8e687c5a26: jne    0x00007f8e687c5c29  ;*checkcast
                      │││  ││                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@28 (line 63)
                      │││  ││                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
  0.37%    0.51%      │││  ││  0x00007f8e687c5a2c: add    0x10(%rax),%rdx    ;*ladd
                      │││  ││                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@34 (line 63)
                      │││  ││                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
  0.03%    0.03%      │││  ││  0x00007f8e687c5a30: inc    %r8d               ;*iinc
                      │││  ││                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@36 (line 62)
                      │││  ││                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
  1.37%    1.81%      │││  ││  0x00007f8e687c5a33: cmp    %r9d,%r8d
                      │││  ╰│  0x00007f8e687c5a36: jl     0x00007f8e687c5a08  ;*if_icmpge
                      │││   │                                                ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@18 (line 62)
                      │││   │                                                ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
  0.42%    0.45%      │││   ╰  0x00007f8e687c5a38: jmpq   0x00007f8e687c588b
                      ↘││      0x00007f8e687c5a3d: inc    %r8d
                       ││      0x00007f8e687c5a40: jmp    0x00007f8e687c5a4c
                       ↘│      0x00007f8e687c5a42: add    $0x2,%r8d
                        │      0x00007f8e687c5a46: jmp    0x00007f8e687c5a4c
                        ↘      0x00007f8e687c5a48: add    $0x3,%r8d          ;*iinc
                                                                             ; - com.github.arnaudroger.Seq2ListAccess::testIndexed@36 (line 62)
                                                                             ; - com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub@17 (line 232)
                               0x00007f8e687c5a4c: mov    %rdx,0x60(%rsp)
....................................................................................................
 88.06%   83.56%  <total for region 1>

....[Hottest Regions]...............................................................................
 88.06%   83.56%         C2, level 4  com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub, version 513 (429 bytes) 
  9.02%   13.64%         C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 491 (51 bytes) 
  1.17%    1.17%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.11%    0.00%   [kernel.kallsyms]  [unknown] (86 bytes) 
  0.09%    0.00%   [kernel.kallsyms]  [unknown] (37 bytes) 
  0.05%    0.03%   [kernel.kallsyms]  [unknown] (28 bytes) 
  0.04%           libpthread-2.26.so  __libc_write (16 bytes) 
  0.04%    0.10%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ (98 bytes) 
  0.03%            [kernel.kallsyms]  [unknown] (0 bytes) 
  0.02%    0.02%   [kernel.kallsyms]  [unknown] (27 bytes) 
  0.02%    0.05%           libjvm.so  _ZN10fileStream5writeEPKcm (14 bytes) 
  0.02%    0.02%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.02%    0.00%   [kernel.kallsyms]  [unknown] (4 bytes) 
  0.02%    0.01%   [kernel.kallsyms]  [unknown] (7 bytes) 
  0.01%            [kernel.kallsyms]  [unknown] (35 bytes) 
  0.01%    0.01%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.01%    0.01%   [kernel.kallsyms]  [unknown] (0 bytes) 
  0.01%    0.01%   [kernel.kallsyms]  [unknown] (11 bytes) 
  0.01%    0.01%   [kernel.kallsyms]  [unknown] (15 bytes) 
  0.01%    0.00%   [kernel.kallsyms]  [unknown] (21 bytes) 
  1.18%    1.32%  <...other 329 warm regions...>
....................................................................................................
100.00%  100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 88.06%   83.56%         C2, level 4  com.github.arnaudroger.generated.Seq2ListAccess_testIndexed_jmhTest::testIndexed_avgt_jmhStub, version 513 
  9.02%   13.64%         C2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 491 
  2.24%    2.00%   [kernel.kallsyms]  [unknown] 
  0.06%    0.04%      hsdis-amd64.so  [unknown] 
  0.05%           libpthread-2.26.so  __libc_write 
  0.04%    0.10%           libjvm.so  _ZN13RelocIterator10initializeEP7nmethodPhS2_ 
  0.03%    0.07%           libjvm.so  _ZN10fileStream5writeEPKcm 
  0.03%    0.07%        libc-2.26.so  vfprintf 
  0.02%    0.01%           libjvm.so  _ZN13defaultStream4holdEl 
  0.02%    0.04%        libc-2.26.so  _IO_fwrite 
  0.01%    0.00%  libpthread-2.26.so  __pthread_enable_asynccancel 
  0.01%    0.03%        libc-2.26.so  _IO_default_xsputn 
  0.01%                    libjvm.so  _ZN13defaultStream5writeEPKcm 
  0.01%    0.01%           libjvm.so  _ZN13xmlTextStream5writeEPKcm 
  0.01%    0.04%           libjvm.so  _ZN12outputStream15update_positionEPKcm 
  0.01%    0.01%        libc-2.26.so  _IO_fflush 
  0.01%    0.01%        libc-2.26.so  _IO_str_init_static_internal 
  0.01%                 libc-2.26.so  _IO_file_sync@@GLIBC_2.2.5 
  0.01%    0.02%  libpthread-2.26.so  __pthread_getspecific 
  0.01%    0.00%           libjvm.so  _ZN12outputStream5printEPKcz 
  0.30%    0.08%  <...other 58 warm methods...>
....................................................................................................
100.00%   99.76%  <totals>

....[Distribution by Source]........................................................................
 97.09%   97.20%         C2, level 4
  2.24%    2.00%   [kernel.kallsyms]
  0.33%    0.44%           libjvm.so
  0.14%    0.25%        libc-2.26.so
  0.08%    0.02%  libpthread-2.26.so
  0.06%    0.04%      hsdis-amd64.so
  0.05%    0.03%         interpreter
  0.00%                    libzip.so
  0.00%    0.01%         C1, level 3
....................................................................................................
100.00%  100.00%  <totals>



# Run complete. Total time: 00:00:44

Benchmark                        (size)  Mode  Cnt   Score   Error  Units
Seq2ListAccess.testIndexed           10  avgt   20  11.522 ± 0.032  ns/op
Seq2ListAccess.testIndexed:·asm      10  avgt          NaN            ---

Benchmark result is saved to jmh-result2.csv
