
Module†Ÿ
Expr
internalRolebody˜ÿ
Dict
internalRolevalue±
StringLiteral
internalRolekeysÙ
PreviousNoops

end_lineno29
internalRolenoops_previousk
NoopLine
internalRolelines"># Copyright 2013 the V8 project authors. All rights reserved.
*:är
NoopLine
internalRolelines"E# Redistribution and use in source and binary forms, with or without
*:äv
NoopLine
internalRolelines"I# modification, are permitted provided that the following conditions are
*:ä4
NoopLine
internalRolelines"# met:
*:ä/
NoopLine
internalRolelines"#
*:ät
NoopLine
internalRolelines"G#     * Redistributions of source code must retain the above copyright
*:äs
NoopLine
internalRolelines"F#       notice, this list of conditions and the following disclaimer.
*:äm
NoopLine
internalRolelines"@#     * Redistributions in binary form must reproduce the above
*:äq
NoopLine
internalRolelines"D#       copyright notice, this list of conditions and the following
*	:äu
NoopLine
internalRolelines"H#       disclaimer in the documentation and/or other materials provided
*
:äL
NoopLine
internalRolelines"#       with the distribution.
*:äj
NoopLine
internalRolelines"=#     * Neither the name of Google Inc. nor the names of its
*:äu
NoopLine
internalRolelines"H#       contributors may be used to endorse or promote products derived
*:äs
NoopLine
internalRolelines"F#       from this software without specific prior written permission.
*:ä/
NoopLine
internalRolelines"#
*:äs
NoopLine
internalRolelines"F# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
*:äq
NoopLine
internalRolelines"D# "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
*:äu
NoopLine
internalRolelines"H# LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
*:ät
NoopLine
internalRolelines"G# A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
*:äu
NoopLine
internalRolelines"H# OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
*:äp
NoopLine
internalRolelines"C# SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
*:äu
NoopLine
internalRolelines"H# LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
*:äu
NoopLine
internalRolelines"H# DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
*:äs
NoopLine
internalRolelines"F# THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
*:äu
NoopLine
internalRolelines"H# (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
*:ät
NoopLine
internalRolelines"G# OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*:ä.
NoopLine
internalRolelines"
*:ä^
NoopLine
internalRolelines"1# Shared definitions for all V8-related targets.
*:ä.
NoopLine
internalRolelines"
*:ä*:å"	variables*:y~≤#
StringLiteral
internalRolekeysÛ"
PreviousNoops

end_lineno135
internalRolenoops_previous.
NoopLine
internalRolelines"
*-:äz
NoopLine
internalRolelines"M    # Setting 'v8_can_use_vfp32dregs' to 'true' will cause V8 to use the VFP
*.:ä}
NoopLine
internalRolelines"P    # registers d16-d31 in the generated code, both in the snapshot and for the
*/:äz
NoopLine
internalRolelines"M    # ARM target. Leaving the default value of 'false' will avoid the use of
*0:ä|
NoopLine
internalRolelines"O    # these registers in the snapshot and use CPU feature probing when running
*1:äB
NoopLine
internalRolelines"    # on the target.
*2:ä.
NoopLine
internalRolelines"
*3:äO
NoopLine
internalRolelines""    # Similar to vfp but on MIPS.
*4:ä.
NoopLine
internalRolelines"
*5:äb
NoopLine
internalRolelines"5    # Similar to the ARM hard float ABI but on MIPS.
*6:ä.
NoopLine
internalRolelines"
*7:äO
NoopLine
internalRolelines""    # Print to stdout on Android.
*8:ä.
NoopLine
internalRolelines"
*9:äW
NoopLine
internalRolelines"*    # Force disable libstdc++ debug mode.
*::ä.
NoopLine
internalRolelines"
*;:ä.
NoopLine
internalRolelines"
*<:äg
NoopLine
internalRolelines":    # Enable profiling support. Only required on Windows.
*=:ä.
NoopLine
internalRolelines"
*>:äo
NoopLine
internalRolelines"B    # Some versions of GCC 4.5 seem to need -fno-strict-aliasing.
*?:ä.
NoopLine
internalRolelines"
*@:ä{
NoopLine
internalRolelines"N    # Chrome needs this definition unconditionally. For standalone V8 builds,
*A:ä]
NoopLine
internalRolelines"0    # it's handled in gypfiles/standalone.gypi.
*B:ä.
NoopLine
internalRolelines"
*C:äx
NoopLine
internalRolelines"K    # Toolset the shell binary should be compiled for. Possible values are
*D:äH
NoopLine
internalRolelines"    # 'host' and 'target'.
*E:än
NoopLine
internalRolelines"A    # The setting is ignored if want_separate_host_toolset is 0.
*F:ä.
NoopLine
internalRolelines"
*G:äx
NoopLine
internalRolelines"K    # For a shared library build, results in "libv8-<(soname_version).so".
*H:ä.
NoopLine
internalRolelines"
*I:ä{
NoopLine
internalRolelines"N    # Allow to suppress the array bounds warning (default is no suppression).
*J:ä.
NoopLine
internalRolelines"
*K:äS
NoopLine
internalRolelines"&    # Override where to find binutils
*L:ä.
NoopLine
internalRolelines"
*M:ä.
NoopLine
internalRolelines"
*N:ä{
NoopLine
internalRolelines"N      # linux_use_bundled_gold: whether to use the gold linker binary checked
*O:äy
NoopLine
internalRolelines"L      # into third_party/binutils.  Force this off via GYP_DEFINES when you
*P:äu
NoopLine
internalRolelines"H      # are using a custom toolchain and need to control -B in ldflags.
*Q:äy
NoopLine
internalRolelines"L      # Do not use 32-bit gold on 32-bit hosts as it runs out address space
*R:äZ
NoopLine
internalRolelines"-      # for component=static_library builds.
*S:ät
NoopLine
internalRolelines"G      # linux_use_bundled_binutils: whether to use the binary binutils
*T:ä|
NoopLine
internalRolelines"O      # checked into third_party/binutils.  These are not multi-arch so cannot
*U:äx
NoopLine
internalRolelines"K      # be used except on x86 and x86-64 (the only two architectures which
*V:äx
NoopLine
internalRolelines"K      # are currently checke in).  Force this off via GYP_DEFINES when you
*W:ät
NoopLine
internalRolelines"G      # are using a custom toolchain and need to control -B in cflags.
*X:äy
NoopLine
internalRolelines"L      # linux_use_gold_flags: whether to use build flags that rely on gold.
*Y:äR
NoopLine
internalRolelines"%      # On by default for x64 Linux.
*Z:ä.
NoopLine
internalRolelines"
*[:äK
NoopLine
internalRolelines"    # Link-Time Optimizations
*\:ä.
NoopLine
internalRolelines"
*]:äg
NoopLine
internalRolelines":    # Indicates if gcmole tools are downloaded by a hook.
*^:ä*-:å"
conditions*ä:y~A
StringLiteral
internalRolekeys"target_defaults*£:y~ü4
Dict
internalRolevaluesH
StringLiteral
internalRolekeys"msvs_use_common_release* :y~7
StringLiteral
internalRolekeys"clang%*!:y~6
StringLiteral
internalRolekeys"asan%*":y~6
StringLiteral
internalRolekeys"lsan%*#:y~6
StringLiteral
internalRolekeys"msan%*$:y~6
StringLiteral
internalRolekeys"tsan%*%:y~7
StringLiteral
internalRolekeys"ubsan%*&:y~<
StringLiteral
internalRolekeys"ubsan_vptr%*':y~>
StringLiteral
internalRolekeys"has_valgrind%*(:y~:
StringLiteral
internalRolekeys"	coverage%*):y~@
StringLiteral
internalRolekeys"v8_target_arch%**:y~C
StringLiteral
internalRolekeys"v8_host_byteorder%*+:y~C
StringLiteral
internalRolekeys"force_dynamic_crt%*,:y~G
StringLiteral
internalRolekeys"v8_can_use_vfp32dregs%*3:y~B
StringLiteral
internalRolekeys"arm_test_noprobe%*4:y~M
StringLiteral
internalRolekeys"v8_can_use_fpu_instructions%*7:y~K
StringLiteral
internalRolekeys"v8_use_mips_abi_hardfloat%*::y~G
StringLiteral
internalRolekeys"v8_android_log_stdout%*=:y~G
StringLiteral
internalRolekeys"disable_glibcxx_debug%*@:y~E
StringLiteral
internalRolekeys"v8_enable_backtrace%*B:y~@
StringLiteral
internalRolekeys"v8_enable_prof%*E:y~G
StringLiteral
internalRolekeys"v8_no_strict_aliasing%*H:y~L
StringLiteral
internalRolekeys"want_separate_host_toolset%*L:y~W
StringLiteral
internalRolekeys"&want_separate_host_toolset_mkpeephole%*M:y~F
StringLiteral
internalRolekeys"v8_toolset_for_shell%*R:y~9
StringLiteral
internalRolekeys"host_os%*T:y~8
StringLiteral
internalRolekeys"werror%*U:y~@
StringLiteral
internalRolekeys"soname_version%*W:y~B
StringLiteral
internalRolekeys"wno_array_bounds%*Z:y~>
StringLiteral
internalRolekeys"binutils_dir%*]:y~;
StringLiteral
internalRolekeys"
conditions*_:y~:
StringLiteral
internalRolekeys"use_lto%*Ö:y~9
StringLiteral
internalRolekeys"gcmole%*à:y~A

NumLiteral
NumTypeint
internalRolevalues"0*  :vA

NumLiteral
NumTypeint
internalRolevalues"0*!:vA

NumLiteral
NumTypeint
internalRolevalues"0*":vA

NumLiteral
NumTypeint
internalRolevalues"0*#:vA

NumLiteral
NumTypeint
internalRolevalues"0*$:vA

NumLiteral
internalRolevalues
NumTypeint"0*%:vA

NumLiteral
NumTypeint
internalRolevalues"0*&:vA

NumLiteral
internalRolevalues
NumTypeint"0*':vA

NumLiteral
NumTypeint
internalRolevalues"0*(:vA

NumLiteral
NumTypeint
internalRolevalues"0*):vA
StringLiteral
internalRolevalues"<(target_arch)**:yb
StringLiteral
internalRolevalues"/<!(python -c "import sys; print sys.byteorder")*+:yA

NumLiteral
internalRolevalues
NumTypeint"0*,:v8
StringLiteral
internalRolevalues"false*3:y6
StringLiteral
internalRolevalues"off*4:y7
StringLiteral
internalRolevalues"true*7%:y7
StringLiteral
internalRolevalues"true*:#:yA

NumLiteral
NumTypeint
internalRolevalues"0*=:vA

NumLiteral
internalRolevalues
NumTypeint"0*@:vA

NumLiteral
NumTypeint
internalRolevalues"0*B:vA

NumLiteral
NumTypeint
internalRolevalues"0*E:vA

NumLiteral
NumTypeint
internalRolevalues"0*H:vA

NumLiteral
NumTypeint
internalRolevalues"1*L$:vA

NumLiteral
NumTypeint
internalRolevalues"1*M/:v9
StringLiteral
internalRolevalues"target*R:y8
StringLiteral
internalRolevalues"<(OS)*T:y:
StringLiteral
internalRolevalues"-Werror*U:y1
StringLiteral
internalRolevalues*W:y1
StringLiteral
internalRolevalues*Z:y1
StringLiteral
internalRolevalues*]:y‘
List
ctxLoad
internalRolevaluesÀ
List
internalRoleelts
ctxLoadP
StringLiteral
internalRoleelts" OS=="linux" and host_arch=="x64"*`:yƒ
Dict
internalRoleelts>
StringLiteral
internalRolekeys"binutils_dir%*a	:y~]
StringLiteral
internalRolevalues"*third_party/binutils/Linux_x64/Release/bin*a:y*`,:t*`:sÕ
List
ctxLoad
internalRoleeltsQ
StringLiteral
internalRoleelts"!OS=="linux" and host_arch=="ia32"*c:y≈
Dict
internalRoleelts>
StringLiteral
internalRolekeys"binutils_dir%*d	:y~^
StringLiteral
internalRolevalues"+third_party/binutils/Linux_ia32/Release/bin*d:y*c-:t*c:s˘
List
ctxLoad
internalRoleeltsŸ
StringLiteral
internalRoleelts"®((OS=="linux" or OS=="android") and (target_arch=="x64" or target_arch=="arm" or (target_arch=="ia32" and host_arch=="x64"))) or (OS=="linux" and target_arch=="mipsel")*l:y≥
Dict
internalRoleeltsH
StringLiteral
internalRolekeys"linux_use_bundled_gold%*m	:y~A

NumLiteral
NumTypeint
internalRolevalues"1*m$:v*l¥:t≤
Dict
internalRoleeltsH
StringLiteral
internalRolekeys"linux_use_bundled_gold%*o	:y~A

NumLiteral
NumTypeint
internalRolevalues"0*o$:v*n
:t*l:së
List
ctxLoad
internalRoleeltsk
StringLiteral
internalRoleelts";OS=="linux" and (target_arch=="ia32" or target_arch=="x64")*v:y∂
Dict
internalRoleeltsL
StringLiteral
internalRolekeys"linux_use_bundled_binutils%*w	:y~A

NumLiteral
NumTypeint
internalRolevalues"1*w(:v*vG:t∂
Dict
internalRoleeltsL
StringLiteral
internalRolekeys"linux_use_bundled_binutils%*y	:y~A

NumLiteral
NumTypeint
internalRolevalues"0*y(:v*x
:t*v:sÓ
List
internalRoleelts
ctxLoadR
StringLiteral
internalRoleelts""OS=="linux" and target_arch=="x64"*}:y∞
Dict
internalRoleeltsF
StringLiteral
internalRolekeys"linux_use_gold_flags%*~	:y~A

NumLiteral
NumTypeint
internalRolevalues"1*~":v*}.:t≤
Dict
internalRoleeltsG
StringLiteral
internalRolekeys"linux_use_gold_flags%*Ä	:y~B

NumLiteral
NumTypeint
internalRolevalues"0*Ä":v*
:t*}:s*_:sB

NumLiteral
NumTypeint
internalRolevalues"0*Ö:vB

NumLiteral
internalRolevalues
NumTypeint"0*à:v*:tÃ
List
internalRolevalues
ctxLoad∏
List
ctxLoad
internalRoleelts»
StringLiteral
internalRoleelts"òhost_arch=="ia32" or host_arch=="x64" or       host_arch=="ppc" or host_arch=="ppc64" or       host_arch=="s390" or host_arch=="s390x" or       clang==1*é:yö
Dict
internalRoleelts;
StringLiteral
internalRolekeys"	variables*è:y~¥
Dict
internalRolevaluesE
StringLiteral
internalRolekeys"host_cxx_is_biarch%*ê	:y~B

NumLiteral
NumTypeint
internalRolevalues"1*ê :v*è:t*é:tö
Dict
internalRoleelts;
StringLiteral
internalRolekeys"	variables*ì:y~¥
Dict
internalRolevaluesE
StringLiteral
internalRolekeys"host_cxx_is_biarch%*î	:y~B

NumLiteral
NumTypeint
internalRolevalues"0*î :v*ì:t*í	:t*ã:sÿ
List
ctxLoad
internalRoleelts‰
StringLiteral
internalRoleelts"¥target_arch=="ia32" or target_arch=="x64" or target_arch=="x87" or       target_arch=="ppc" or target_arch=="ppc64" or target_arch=="s390" or       target_arch=="s390x" or clang==1*ô:yú
Dict
internalRoleelts;
StringLiteral
internalRolekeys"	variables*ö:y~∂
Dict
internalRolevaluesG
StringLiteral
internalRolekeys"target_cxx_is_biarch%*õ	:y~B

NumLiteral
NumTypeint
internalRolevalues"1*õ":v*ö:t*ô*:tú
Dict
internalRoleelts;
StringLiteral
internalRolekeys"	variables*û:y~∂
Dict
internalRolevaluesG
StringLiteral
internalRolekeys"target_cxx_is_biarch%*ü	:y~B

NumLiteral
NumTypeint
internalRolevalues"0*ü":v*û:t*ù	:t*ó:s*ä:s∞⁄
Dict
internalRolevalues<
StringLiteral
internalRolekeys"
conditions*§:y~•
StringLiteral
internalRolekeys‚
PreviousNoops

end_lineno1112
internalRolenoops_previouse
NoopLine
internalRolelines"7                # Host built with an Arm CXX compiler.
*À:ä\
NoopLine
internalRolelines".                # 'v8_target_arch!=host_arch'
*Ã:ä{
NoopLine
internalRolelines"M                # Host not built with an Arm CXX compiler (simulator build).
*Õ:äg
NoopLine
internalRolelines"9                # Target built with an Arm CXX compiler.
*Œ:ä^
NoopLine
internalRolelines"0                # 'v8_target_arch!=target_arch'
*œ:ä}
NoopLine
internalRolelines"O                # Target not built with an Arm CXX compiler (simulator build).
*–:äU
NoopLine
internalRolelines"'              # Disable GCC LTO for v8
*—:ä~
NoopLine
internalRolelines"P              # v8 is optimized for speed. Because GCC LTO merges flags at link
*“:äx
NoopLine
internalRolelines"J              # time, we disable LTO to prevent any -O2 flags from taking
*”:ä}
NoopLine
internalRolelines"O              # precedence over v8's -Os flag. However, LLVM LTO does not work
*‘:äj
NoopLine
internalRolelines"<              # this way so we keep LTO enabled under LLVM.
*’:äp
NoopLine
internalRolelines"B                # Work around AIX ceil, trunc and round oddities.
*÷:äg
NoopLine
internalRolelines"9                # Work around AIX assembler popcntb bug.
*◊:äg
NoopLine
internalRolelines"9                # Target built with a Mips CXX compiler.
*ÿ:äg
NoopLine
internalRolelines"9                # Target built with a Mips CXX compiler.
*Ÿ:ä^
NoopLine
internalRolelines"0                # 'v8_target_arch!=target_arch'
*⁄:ä~
NoopLine
internalRolelines"P                # Target not built with an MIPS CXX compiler (simulator build).
*€:äg
NoopLine
internalRolelines"9                # Target built with a Mips CXX compiler.
*‹:ä^
NoopLine
internalRolelines"0                # 'v8_target_arch!=target_arch'
*›:ä~
NoopLine
internalRolelines"P                # Target not built with an MIPS CXX compiler (simulator build).
*ﬁ:ä^
NoopLine
internalRolelines"0                # 'v8_target_arch!=target_arch'
*ﬂ:ä~
NoopLine
internalRolelines"P                # Target not built with an MIPS CXX compiler (simulator build).
*‡:äi
NoopLine
internalRolelines";          # x32 port shares the source code with x64 port.
*·:äe
NoopLine
internalRolelines"7          # Inhibit warning if long long type is used.
*‚:ä{
NoopLine
internalRolelines"M        # Newer gccs and clangs support -fuse-ld, use the flag to force gold
*„:äC
NoopLine
internalRolelines"        # selection.
*‰:äÅ
NoopLine
internalRolelines"S        # gcc -- http://gcc.gnu.org/onlinedocs/gcc-4.8.0/gcc/Optimize-Options.html
*Â:äz
NoopLine
internalRolelines"L        # Put our binutils, which contains gold in the search path. We pass
*Ê:äz
NoopLine
internalRolelines"L        # the path to gold to the compiler. gyp leaves unspecified what the
*Á:äy
NoopLine
internalRolelines"K        # cwd is when running the compiler, so the normal gyp path-munging
*Ë:äa
NoopLine
internalRolelines"3        # fails us. This hack gets the right path.
*È:äx
NoopLine
internalRolelines"J        # 4351: VS 2005 and later are warning us that they've fixed a bug
*Í:ä^
NoopLine
internalRolelines"0        #       present in VS 2003 and earlier.
*Î:ä|
NoopLine
internalRolelines"N            # Ensure no surprising artifacts from 80bit double math with x86.
*Ï:äP
NoopLine
internalRolelines""          # Support for malloc(0)
*Ì:ä*À:å"configurations*Á:y~â
List
ctxLoad
internalRolevaluesÖN
List
ctxLoad
internalRoleeltsF
StringLiteral
internalRoleelts"v8_target_arch=="arm"*•:yáM
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*¶	:y~<
StringLiteral
internalRolekeys"
conditions*©	:y~C
StringLiteral
internalRolekeys"target_conditions*«	:y~{
List
ctxLoad
internalRolevaluesC
StringLiteral
internalRoleelts"V8_TARGET_ARCH_ARM*ß:y*¶:s°
List
ctxLoad
internalRolevalues¯
List
internalRoleelts
ctxLoadY
StringLiteral
internalRoleelts"(arm_version==7 or arm_version=="default"*™:yÁ
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*´:y~É
List
ctxLoad
internalRolevaluesK
StringLiteral
internalRoleelts"CAN_USE_ARMV7_INSTRUCTIONS*¨:y*´:s*™9:t*™:s˘
List
ctxLoad
internalRoleelts[
StringLiteral
internalRoleelts"*arm_fpu=="vfpv3-d16" or arm_fpu=="default"*Ø:yÊ
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*∞:y~Ç
List
ctxLoad
internalRolevaluesJ
StringLiteral
internalRoleelts"CAN_USE_VFP3_INSTRUCTIONS*±:y*∞:s*Ø;:t*Ø:s§
List
ctxLoad
internalRoleeltsA
StringLiteral
internalRoleelts"arm_fpu=="vfpv3"*¥:y´
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*µ:y~«
List
ctxLoad
internalRolevaluesJ
StringLiteral
internalRoleelts"CAN_USE_VFP3_INSTRUCTIONS*∂:yC
StringLiteral
internalRoleelts"CAN_USE_VFP32DREGS*∑:y*µ:s*¥!:t*¥:s‚
List
ctxLoad
internalRoleelts@
StringLiteral
internalRoleelts"arm_fpu=="neon"*∫:yÍ
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*ª:y~Ü
List
ctxLoad
internalRolevaluesJ
StringLiteral
internalRoleelts"CAN_USE_VFP3_INSTRUCTIONS*º:yC
StringLiteral
internalRoleelts"CAN_USE_VFP32DREGS*Ω:y=
StringLiteral
internalRoleelts"CAN_USE_NEON*æ:y*ª:s*∫ :t*∫:sÂ
List
ctxLoad
internalRoleeltsG
StringLiteral
internalRoleelts"arm_test_noprobe=="on"*¡:yÊ
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*¬:y~Ç
List
ctxLoad
internalRolevaluesJ
StringLiteral
internalRoleelts"ARM_TEST_NO_FEATURE_PROBE*√:y*¬:s*¡':t*¡:s*©:sˇ9
List
ctxLoad
internalRolevaluesì
List
ctxLoad
internalRoleeltsA
StringLiteral
internalRoleelts"_toolset=="host"*»:yö
Dict
internalRoleelts<
StringLiteral
internalRolekeys"
conditions*…:y~≥
List
ctxLoad
internalRolevalues˙
List
ctxLoad
internalRoleeltsJ
StringLiteral
internalRoleelts"v8_target_arch==host_arch* :y¯
Dict
internalRoleelts<
StringLiteral
internalRolekeys"
conditions*Ã:y~ë
List
ctxLoad
internalRolevalues–
List
ctxLoad
internalRoleelts?
StringLiteral
internalRoleelts"arm_version==7*Õ:yŸ
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*Œ:y~w
List
ctxLoad
internalRolevalues?
StringLiteral
internalRoleelts"-march=armv7-a*Œ :y*Œ:s*Õ':t*Õ:sá
List
internalRoleelts
ctxLoadY
StringLiteral
internalRoleelts"(arm_version==7 or arm_version=="default"*–:yˆ
Dict
internalRoleelts<
StringLiteral
internalRolekeys"
conditions*—:y~è
List
ctxLoad
internalRolevalues÷
List
internalRoleelts
ctxLoadC
StringLiteral
internalRoleelts"arm_fpu!="default"*“:y€
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*”:y~y
List
internalRolevalues
ctxLoadA
StringLiteral
internalRoleelts"-mfpu=<(arm_fpu)*”$:y*”#:s*“/:t*“:s*—#:s*–A:t*–:sÈ
List
ctxLoad
internalRoleeltsI
StringLiteral
internalRoleelts"arm_float_abi!="default"*◊:yË
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*ÿ:y~Ö
List
ctxLoad
internalRolevaluesM
StringLiteral
internalRoleelts"-mfloat-abi=<(arm_float_abi)*ÿ :y*ÿ:s*◊1:t*◊:s«
List
ctxLoad
internalRoleelts=
StringLiteral
internalRoleelts"arm_thumb==1*⁄:y“
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*€:y~p
List
ctxLoad
internalRolevalues8
StringLiteral
internalRoleelts"-mthumb*€ :y*€:s*⁄%:t*⁄:s≈
List
ctxLoad
internalRoleelts=
StringLiteral
internalRoleelts"arm_thumb==0*›:y–
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*ﬁ:y~n
List
ctxLoad
internalRolevalues6
StringLiteral
internalRoleelts"-marm*ﬁ :y*ﬁ:s*›%:t*›:s*Ã:s* -:t˝
Dict
internalRoleelts<
StringLiteral
internalRolekeys"
conditions*‰:y~ñ
List
ctxLoad
internalRolevaluesﬁ
List
ctxLoad
internalRoleeltsF
StringLiteral
internalRoleelts"arm_float_abi=="hard"*Â:y‡
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*Ê:y~}
List
internalRolevalues
ctxLoadE
StringLiteral
internalRoleelts"USE_EABI_HARDFLOAT=1*Á:y*Ê :s*Â.:t*Â:s¸
List
ctxLoad
internalRoleeltsd
StringLiteral
internalRoleelts"3arm_float_abi=="softfp" or arm_float_abi=="default"*Í:y‡
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*Î:y~}
List
ctxLoad
internalRolevaluesE
StringLiteral
internalRoleelts"USE_EABI_HARDFLOAT=0*Ï:y*Î :s*ÍL:t*Í:s*‰:s*·:t* :s*…:s*» :t*»:s∞
List
ctxLoad
internalRoleeltsC
StringLiteral
internalRoleelts"_toolset=="target"*Û:yµ
Dict
internalRoleelts<
StringLiteral
internalRolekeys"
conditions*Ù:y~Œ
List
ctxLoad
internalRolevalues¸
List
ctxLoad
internalRoleeltsL
StringLiteral
internalRoleelts"v8_target_arch==target_arch*ı:y¯
Dict
internalRoleelts<
StringLiteral
internalRolekeys"
conditions*˜:y~ë
List
ctxLoad
internalRolevalues–
List
ctxLoad
internalRoleelts?
StringLiteral
internalRoleelts"arm_version==7*¯:yŸ
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*˘:y~w
List
ctxLoad
internalRolevalues?
StringLiteral
internalRoleelts"-march=armv7-a*˘ :y*˘:s*¯':t*¯:sá
List
ctxLoad
internalRoleeltsY
StringLiteral
internalRoleelts"(arm_version==7 or arm_version=="default"*˚:yˆ
Dict
internalRoleelts<
StringLiteral
internalRolekeys"
conditions*¸:y~è
List
internalRolevalues
ctxLoad÷
List
ctxLoad
internalRoleeltsC
StringLiteral
internalRoleelts"arm_fpu!="default"*˝:y€
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*˛:y~y
List
internalRolevalues
ctxLoadA
StringLiteral
internalRoleelts"-mfpu=<(arm_fpu)*˛$:y*˛#:s*˝/:t*˝:s*¸#:s*˚A:t*˚:sÈ
List
ctxLoad
internalRoleeltsI
StringLiteral
internalRoleelts"arm_float_abi!="default"*Ç:yË
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*É:y~Ö
List
ctxLoad
internalRolevaluesM
StringLiteral
internalRoleelts"-mfloat-abi=<(arm_float_abi)*É :y*É:s*Ç1:t*Ç:s«
List
ctxLoad
internalRoleelts=
StringLiteral
internalRoleelts"arm_thumb==1*Ö:y“
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*Ü:y~p
List
ctxLoad
internalRolevalues8
StringLiteral
internalRoleelts"-mthumb*Ü :y*Ü:s*Ö%:t*Ö:s≈
List
internalRoleelts
ctxLoad=
StringLiteral
internalRoleelts"arm_thumb==0*à:y–
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*â:y~n
List
ctxLoad
internalRolevalues6
StringLiteral
internalRoleelts"-marm*â :y*â:s*à%:t*à:s*˜:s*ı/:t˝
Dict
internalRoleelts<
StringLiteral
internalRolekeys"
conditions*è:y~ñ
List
ctxLoad
internalRolevaluesﬁ
List
ctxLoad
internalRoleeltsF
StringLiteral
internalRoleelts"arm_float_abi=="hard"*ê:y‡
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*ë:y~}
List
ctxLoad
internalRolevaluesE
StringLiteral
internalRoleelts"USE_EABI_HARDFLOAT=1*í:y*ë :s*ê.:t*ê:s¸
List
ctxLoad
internalRoleeltsd
StringLiteral
internalRoleelts"3arm_float_abi=="softfp" or arm_float_abi=="default"*ï:y‡
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*ñ:y~}
List
internalRolevalues
ctxLoadE
StringLiteral
internalRoleelts"USE_EABI_HARDFLOAT=0*ó:y*ñ :s*ïL:t*ï:s*è:s*å:t*ı:sñ
List
internalRoleelts
ctxLoadH
StringLiteral
internalRoleelts"clang==0 and use_lto==1*°:yñ
Dict
internalRoleelts9
StringLiteral
internalRolekeys"cflags!*¢:y~≤
List
ctxLoad
internalRolevalues6
StringLiteral
internalRoleelts"-flto*£:yB
StringLiteral
internalRoleelts"-ffat-lto-objects*§:y*¢:s*°+:t*°:s*Ù:s*Û":t*Û:s*«:s*•!:t*•:s‡
List
ctxLoad
internalRoleeltsH
StringLiteral
internalRoleelts"v8_target_arch=="arm64"*´:y‡
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*¨	:y~}
List
ctxLoad
internalRolevaluesE
StringLiteral
internalRoleelts"V8_TARGET_ARCH_ARM64*≠:y*¨:s*´#:t*´:s¡	
List
internalRoleelts
ctxLoadb
StringLiteral
internalRoleelts"1v8_target_arch=="s390" or v8_target_arch=="s390x"*∞:yß
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*±	:y~<
StringLiteral
internalRolekeys"
conditions*¥	:y~|
List
ctxLoad
internalRolevaluesD
StringLiteral
internalRoleelts"V8_TARGET_ARCH_S390*≤:y*±:sá
List
ctxLoad
internalRolevalues‡
List
ctxLoad
internalRoleeltsH
StringLiteral
internalRoleelts"v8_target_arch=="s390x"*µ:y‡
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*∂:y~}
List
ctxLoad
internalRolevaluesE
StringLiteral
internalRoleelts"V8_TARGET_ARCH_S390X*∑:y*∂:s*µ':t*µ:sÎ
List
internalRoleelts
ctxLoadL
StringLiteral
internalRoleelts"v8_host_byteorder=="little"*∫:yÁ
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*ª:y~É
List
internalRolevalues
ctxLoadK
StringLiteral
internalRoleelts"V8_TARGET_ARCH_S390_LE_SIM*º:y*ª:s*∫+:t*∫:s*¥:s*∞=:t*∞:s∂
List
ctxLoad
internalRoleeltsa
StringLiteral
internalRoleelts"0v8_target_arch=="ppc" or v8_target_arch=="ppc64"*¡:yù
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*¬	:y~<
StringLiteral
internalRolekeys"
conditions*≈	:y~{
List
ctxLoad
internalRolevaluesC
StringLiteral
internalRoleelts"V8_TARGET_ARCH_PPC*√:y*¬:s˛
List
ctxLoad
internalRolevalues‡
List
ctxLoad
internalRoleeltsH
StringLiteral
internalRoleelts"v8_target_arch=="ppc64"*∆:y‡
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*«:y~}
List
internalRolevalues
ctxLoadE
StringLiteral
internalRoleelts"V8_TARGET_ARCH_PPC64*»:y*«:s*∆':t*∆:sÂ
List
internalRoleelts
ctxLoadL
StringLiteral
internalRoleelts"v8_host_byteorder=="little"*À:y·
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*Ã:y~~
List
ctxLoad
internalRolevaluesF
StringLiteral
internalRoleelts"V8_TARGET_ARCH_PPC_LE*Õ:y*Ã:s*À+:t*À:s˙
List
ctxLoad
internalRoleeltsI
StringLiteral
internalRoleelts"v8_host_byteorder=="big"*–:y˘
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*—:y~<
StringLiteral
internalRolekeys"
conditions*‘:y~~
List
ctxLoad
internalRolevaluesF
StringLiteral
internalRoleelts"V8_TARGET_ARCH_PPC_BE*“:y*—:s◊
List
ctxLoad
internalRolevalues“
List
ctxLoad
internalRoleelts:
StringLiteral
internalRoleelts"	OS=="aix"*’:y‡
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*◊:y~~
List
ctxLoad
internalRolevaluesF
StringLiteral
internalRoleelts"-mcpu=power5+ -mfprnd*◊:y*◊:s*’:t*’:s…
List
ctxLoad
internalRoleelts:
StringLiteral
internalRoleelts"	OS=="aix"*Ÿ:y◊
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*€:y~u
List
internalRolevalues
ctxLoad=
StringLiteral
internalRoleelts"-mno-popcntb*€:y*€:s*Ÿ:t*Ÿ:s*‘:s*–(:t*–:s*≈:s*¡<:t*¡:sﬁ
List
ctxLoad
internalRoleeltsG
StringLiteral
internalRoleelts"v8_target_arch=="ia32"*·:yﬂ
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*‚	:y~|
List
ctxLoad
internalRolevaluesD
StringLiteral
internalRoleelts"V8_TARGET_ARCH_IA32*„:y*‚:s*·":t*·:så
List
ctxLoad
internalRoleeltsF
StringLiteral
internalRoleelts"v8_target_arch=="x87"*Ê:yé
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*Á	:y~8
StringLiteral
internalRolekeys"cflags*Í	:y~{
List
ctxLoad
internalRolevaluesC
StringLiteral
internalRoleelts"V8_TARGET_ARCH_X87*Ë:y*Á:st
List
ctxLoad
internalRolevalues<
StringLiteral
internalRoleelts"-march=i586*Í:y*Í:s*Ê!:t*Ê:s‡
List
ctxLoad
internalRoleelts£
StringLiteral
internalRoleelts"tv8_target_arch=="mips" or v8_target_arch=="mipsel"         or v8_target_arch=="mips64" or v8_target_arch=="mips64el"*Ì:yÑ
Dict
internalRoleeltsC
StringLiteral
internalRolekeys"target_conditions*Ó	:y~ñ
List
ctxLoad
internalRolevaluesÔ
List
ctxLoad
internalRoleeltsC
StringLiteral
internalRoleelts"_toolset=="target"*Ô:yÙ
Dict
internalRoleelts<
StringLiteral
internalRolekeys"
conditions*:y~ç
List
internalRolevalues
ctxLoad‘
List
internalRoleelts
ctxLoadL
StringLiteral
internalRoleelts"v8_target_arch==target_arch*Ò:yÎ
Dict
internalRoleelts;
StringLiteral
internalRolekeys"	variables*Û:y~<
StringLiteral
internalRolekeys"
conditions*˜:y~«
Dict
internalRolevalues<
StringLiteral
internalRolekeys"
ldso_path%*Ù:y~<
StringLiteral
internalRolekeys"
ld_r_path%*ı:y~O
StringLiteral
internalRolevalues"<!(/bin/echo -n $LDSO_PATH)*Ù!:yO
StringLiteral
internalRolevalues"<!(/bin/echo -n $LD_R_PATH)*ı!:y*Û:t˝
List
internalRolevalues
ctxLoad‰
List
ctxLoad
internalRoleelts>
StringLiteral
internalRoleelts"ldso_path!=""*¯:yÓ
Dict
internalRoleelts9
StringLiteral
internalRolekeys"ldflags*˘:y~ä
List
ctxLoad
internalRolevaluesR
StringLiteral
internalRoleelts"!-Wl,--dynamic-linker=<(ldso_path)*˘!:y*˘ :s*¯%:t*¯:s€
List
ctxLoad
internalRoleelts>
StringLiteral
internalRoleelts"ld_r_path!=""*˚:yÂ
Dict
internalRoleelts9
StringLiteral
internalRolekeys"ldflags*¸:y~Å
List
ctxLoad
internalRolevaluesI
StringLiteral
internalRoleelts"-Wl,--rpath=<(ld_r_path)*¸!:y*¸ :s*˚%:t*˚:s 
List
internalRoleelts
ctxLoad9
StringLiteral
internalRoleelts"clang==1*˛:yŸ
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*ˇ:y~w
List
ctxLoad
internalRolevalues?
StringLiteral
internalRoleelts"-integrated-as*ˇ :y*ˇ:s*˛!:t*˛:s≤
List
ctxLoad
internalRoleelts:
StringLiteral
internalRoleelts"	OS!="mac"*Å:y€
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*Ç:y~x
List
ctxLoad
internalRolevalues@
StringLiteral
internalRoleelts"_MIPS_TARGET_HW*Ç!:y*Ç :s*Å!:t‚
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*Ñ:y~
List
internalRolevalues
ctxLoadG
StringLiteral
internalRoleelts"_MIPS_TARGET_SIMULATOR*Ñ!:y*Ñ :s*É:t*Å:s*˜:s*Ò/:t‚
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*à:y~
List
ctxLoad
internalRolevaluesG
StringLiteral
internalRoleelts"_MIPS_TARGET_SIMULATOR*à:y*à:s*á:t*Ò:s*:s*Ô":t*Ô:sÎ
List
internalRoleelts
ctxLoadA
StringLiteral
internalRoleelts"_toolset=="host"*å:yÚ
Dict
internalRoleelts<
StringLiteral
internalRolekeys"
conditions*ç:y~ã
List
internalRolevalues
ctxLoad“
List
ctxLoad
internalRoleeltsZ
StringLiteral
internalRoleelts")v8_target_arch==target_arch and OS!="mac"*é:y€
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*è:y~x
List
ctxLoad
internalRolevalues@
StringLiteral
internalRoleelts"_MIPS_TARGET_HW*è:y*è:s*é=:t‚
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*ë:y~
List
ctxLoad
internalRolevaluesG
StringLiteral
internalRoleelts"_MIPS_TARGET_SIMULATOR*ë:y*ë:s*ê:t*é:s*ç:s*å :t*å:s*Ó:s*ÌE:t*Ï:sÄÇ
List
internalRoleelts
ctxLoadG
StringLiteral
internalRoleelts"v8_target_arch=="mips"*ó:yÄÅ
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*ò	:y~<
StringLiteral
internalRolekeys"
conditions*õ	:y~C
StringLiteral
internalRolekeys"target_conditions*¨	:y~|
List
internalRolevalues
ctxLoadD
StringLiteral
internalRoleelts"V8_TARGET_ARCH_MIPS*ô:y*ò:sƒ
List
internalRolevalues
ctxLoadÒ
List
ctxLoad
internalRoleeltsT
StringLiteral
internalRoleelts"#v8_can_use_fpu_instructions=="true"*ú:yÂ
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*ù:y~Å
List
internalRolevalues
ctxLoadI
StringLiteral
internalRoleelts"CAN_USE_FPU_INSTRUCTIONS*û:y*ù:s*ú4:t*ú:só
List
ctxLoad
internalRoleeltsR
StringLiteral
internalRoleelts"!v8_use_mips_abi_hardfloat=="true"*°:y´
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*¢:y~«
List
ctxLoad
internalRolevaluesD
StringLiteral
internalRoleelts"__mips_hard_float=1*£:yI
StringLiteral
internalRoleelts"CAN_USE_FPU_INSTRUCTIONS*§:y*¢:s*°2:tﬂ
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*ß:y~|
List
ctxLoad
internalRolevaluesD
StringLiteral
internalRoleelts"__mips_soft_float=1*®:y*ß:s*¶:t*°:s*õ:s‘u
List
ctxLoad
internalRolevalues›]
List
ctxLoad
internalRoleeltsC
StringLiteral
internalRoleelts"_toolset=="target"*≠:y‚\
Dict
internalRoleelts<
StringLiteral
internalRolekeys"
conditions*Æ:y~˚[
List
internalRolevalues
ctxLoad¬[
List
ctxLoad
internalRoleeltsL
StringLiteral
internalRoleelts"v8_target_arch==target_arch*Ø:y˘C
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*±:y~9
StringLiteral
internalRolekeys"ldflags*µ:y~<
StringLiteral
internalRolekeys"
conditions*∂:y~≈
List
internalRolevalues
ctxLoad4
StringLiteral
internalRoleelts"-EB*≤:y÷
StringLiteral
internalRoleeltsã
SameLineNoops
internalRolenoops_sameline
col_end109"?# Workaround https://gcc.gnu.org/bugzilla/show_bug.cgi?id=56273*≥.:ä"-Wno-error=array-bounds*≥:y*±:sl
List
internalRolevalues
ctxLoad4
StringLiteral
internalRoleelts"-EB*µ:y*µ:sÁ>
List
ctxLoad
internalRolevaluesü
List
ctxLoad
internalRoleeltsR
StringLiteral
internalRoleelts"!v8_use_mips_abi_hardfloat=="true"*∑:yâ
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*∏:y~9
StringLiteral
internalRolekeys"ldflags*π:y~u
List
ctxLoad
internalRolevalues=
StringLiteral
internalRoleelts"-mhard-float*∏ :y*∏:su
List
ctxLoad
internalRolevalues=
StringLiteral
internalRoleelts"-mhard-float*π!:y*π :s*∑::tâ
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*ª:y~9
StringLiteral
internalRolekeys"ldflags*º:y~u
List
ctxLoad
internalRolevalues=
StringLiteral
internalRoleelts"-msoft-float*ª :y*ª:su
List
ctxLoad
internalRolevalues=
StringLiteral
internalRoleelts"-msoft-float*º!:y*º :s*∫:t*∑:s¶
List
ctxLoad
internalRoleeltsH
StringLiteral
internalRoleelts"mips_arch_variant=="r6"*æ:y¶

Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*ø:y~9
StringLiteral
internalRolekeys"cflags!*√:y~<
StringLiteral
internalRolekeys"
conditions*ƒ:y~8
StringLiteral
internalRolekeys"cflags*…:y~9
StringLiteral
internalRolekeys"ldflags* :y~º
List
ctxLoad
internalRolevaluesD
StringLiteral
internalRoleelts"_MIPS_ARCH_MIPS32R6*¿:y>
StringLiteral
internalRoleelts"FPU_MODE_FP64*¡:y*ø :s®
List
internalRolevalues
ctxLoad7
StringLiteral
internalRoleelts"-mfp32*√!:y7
StringLiteral
internalRoleelts"-mfpxx*√+:y*√ :sÇ
List
ctxLoad
internalRolevalues…
List
ctxLoad
internalRoleelts9
StringLiteral
internalRoleelts"clang==0*≈:yÿ
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*∆:y~v
List
ctxLoad
internalRolevalues>
StringLiteral
internalRoleelts"-Wa,-mips32r6*∆$:y*∆#:s*≈%:t*≈:s*ƒ#:sr
List
ctxLoad
internalRolevalues:
StringLiteral
internalRoleelts"	-mips32r6*… :y*…:sr
List
ctxLoad
internalRolevalues:
StringLiteral
internalRoleelts"	-mips32r6* !:y*  :s*æ/:t*æ:s™
List
ctxLoad
internalRoleeltsH
StringLiteral
internalRoleelts"mips_arch_variant=="r2"*Ã:y™
Dict
internalRoleelts<
StringLiteral
internalRolekeys"
conditions*Õ:y~8
StringLiteral
internalRolekeys"cflags*Á:y~9
StringLiteral
internalRolekeys"ldflags*Ë:y~Ê
List
ctxLoad
internalRolevalues…
List
ctxLoad
internalRoleeltsF
StringLiteral
internalRoleelts"mips_fpu_mode=="fp64"*Œ:yÀ
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*œ:y~8
StringLiteral
internalRolekeys"cflags*”:y~º
List
ctxLoad
internalRolevaluesD
StringLiteral
internalRoleelts"_MIPS_ARCH_MIPS32R2*–:y>
StringLiteral
internalRoleelts"FPU_MODE_FP64*—:y*œ$:so
List
internalRolevalues
ctxLoad7
StringLiteral
internalRoleelts"-mfp64*”$:y*”#:s*Œ2:t*Œ:s…
List
ctxLoad
internalRoleeltsF
StringLiteral
internalRoleelts"mips_fpu_mode=="fpxx"*’:yÀ
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*÷:y~8
StringLiteral
internalRolekeys"cflags*⁄:y~º
List
ctxLoad
internalRolevaluesD
StringLiteral
internalRoleelts"_MIPS_ARCH_MIPS32R2*◊:y>
StringLiteral
internalRoleelts"FPU_MODE_FPXX*ÿ:y*÷$:so
List
ctxLoad
internalRolevalues7
StringLiteral
internalRoleelts"-mfpxx*⁄$:y*⁄#:s*’1:t*’:s…
List
ctxLoad
internalRoleeltsF
StringLiteral
internalRoleelts"mips_fpu_mode=="fp32"*‹:yÀ
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*›:y~8
StringLiteral
internalRolekeys"cflags*·:y~º
List
ctxLoad
internalRolevaluesD
StringLiteral
internalRoleelts"_MIPS_ARCH_MIPS32R2*ﬁ:y>
StringLiteral
internalRoleelts"FPU_MODE_FP32*ﬂ:y*›$:so
List
ctxLoad
internalRolevalues7
StringLiteral
internalRoleelts"-mfp32*·$:y*·#:s*‹1:t*‹:s…
List
ctxLoad
internalRoleelts9
StringLiteral
internalRoleelts"clang==0*„:yÿ
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*‰:y~v
List
ctxLoad
internalRolevalues>
StringLiteral
internalRoleelts"-Wa,-mips32r2*‰$:y*‰#:s*„%:t*„:s*Õ#:sr
List
ctxLoad
internalRolevalues:
StringLiteral
internalRoleelts"	-mips32r2*Á :y*Á:sr
List
internalRolevalues
ctxLoad:
StringLiteral
internalRoleelts"	-mips32r2*Ë!:y*Ë :s*Ã/:t*Ã:sŸ

List
internalRoleelts
ctxLoadH
StringLiteral
internalRoleelts"mips_arch_variant=="r1"*Í:yŸ	
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*Î:y~9
StringLiteral
internalRolekeys"cflags!*Ó:y~<
StringLiteral
internalRolekeys"
conditions*Ô:y~8
StringLiteral
internalRolekeys"cflags*Ù:y~9
StringLiteral
internalRolekeys"ldflags*ı:y~v
List
internalRolevalues
ctxLoad>
StringLiteral
internalRoleelts"FPU_MODE_FP32*Ï:y*Î :s®
List
ctxLoad
internalRolevalues7
StringLiteral
internalRoleelts"-mfp64*Ó!:y7
StringLiteral
internalRoleelts"-mfpxx*Ó+:y*Ó :sÄ
List
ctxLoad
internalRolevalues«
List
ctxLoad
internalRoleelts9
StringLiteral
internalRoleelts"clang==0*:y÷
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*Ò:y~t
List
ctxLoad
internalRolevalues<
StringLiteral
internalRoleelts"-Wa,-mips32*Ò$:y*Ò#:s*%:t*:s*Ô#:sp
List
ctxLoad
internalRolevalues8
StringLiteral
internalRoleelts"-mips32*Ù :y*Ù:sp
List
ctxLoad
internalRolevalues8
StringLiteral
internalRoleelts"-mips32*ı!:y*ı :s*Í/:t*Í:s⁄
List
ctxLoad
internalRoleeltsH
StringLiteral
internalRoleelts"mips_arch_variant=="rx"*˜:y⁄

Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*¯:y~9
StringLiteral
internalRolekeys"cflags!*¸:y~<
StringLiteral
internalRolekeys"
conditions*˝:y~8
StringLiteral
internalRolekeys"cflags*Ç:y~9
StringLiteral
internalRolekeys"ldflags*É:y~º
List
internalRolevalues
ctxLoadD
StringLiteral
internalRoleelts"_MIPS_ARCH_MIPS32RX*˘:y>
StringLiteral
internalRoleelts"FPU_MODE_FPXX*˙:y*¯ :s®
List
ctxLoad
internalRolevalues7
StringLiteral
internalRoleelts"-mfp64*¸!:y7
StringLiteral
internalRoleelts"-mfp32*¸+:y*¸ :sÄ
List
ctxLoad
internalRolevalues«
List
internalRoleelts
ctxLoad9
StringLiteral
internalRoleelts"clang==0*˛:y÷
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*ˇ:y~t
List
internalRolevalues
ctxLoad<
StringLiteral
internalRoleelts"-Wa,-mips32*ˇ$:y*ˇ#:s*˛%:t*˛:s*˝#:s©
List
ctxLoad
internalRolevalues8
StringLiteral
internalRoleelts"-mips32*Ç :y7
StringLiteral
internalRoleelts"-mfpxx*Ç+:y*Ç:sp
List
ctxLoad
internalRolevalues8
StringLiteral
internalRoleelts"-mips32*É!:y*É :s*˜/:t*˜:s*∂:s*Ø/:t¬
Dict
internalRoleelts<
StringLiteral
internalRolekeys"
conditions*â:y~€
List
ctxLoad
internalRolevalues†
List
ctxLoad
internalRoleeltsH
StringLiteral
internalRoleelts"mips_arch_variant=="r6"*ä:y†
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*ã:y~º
List
ctxLoad
internalRolevaluesD
StringLiteral
internalRoleelts"_MIPS_ARCH_MIPS32R6*å:y>
StringLiteral
internalRoleelts"FPU_MODE_FP64*ç:y*ã :s*ä/:t*ä:sÄ
List
ctxLoad
internalRoleeltsH
StringLiteral
internalRoleelts"mips_arch_variant=="r2"*ê:yÄ
Dict
internalRoleelts<
StringLiteral
internalRolekeys"
conditions*ë:y~ô

List
ctxLoad
internalRolevaluesû
List
ctxLoad
internalRoleeltsF
StringLiteral
internalRoleelts"mips_fpu_mode=="fp64"*í:y†
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*ì:y~º
List
ctxLoad
internalRolevaluesD
StringLiteral
internalRoleelts"_MIPS_ARCH_MIPS32R2*î:y>
StringLiteral
internalRoleelts"FPU_MODE_FP64*ï:y*ì$:s*í2:t*í:sû
List
ctxLoad
internalRoleeltsF
StringLiteral
internalRoleelts"mips_fpu_mode=="fpxx"*ò:y†
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*ô:y~º
List
ctxLoad
internalRolevaluesD
StringLiteral
internalRoleelts"_MIPS_ARCH_MIPS32R2*ö:y>
StringLiteral
internalRoleelts"FPU_MODE_FPXX*õ:y*ô$:s*ò1:t*ò:sû
List
ctxLoad
internalRoleeltsF
StringLiteral
internalRoleelts"mips_fpu_mode=="fp32"*û:y†
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*ü:y~º
List
ctxLoad
internalRolevaluesD
StringLiteral
internalRoleelts"_MIPS_ARCH_MIPS32R2*†:y>
StringLiteral
internalRoleelts"FPU_MODE_FP32*°:y*ü$:s*û1:t*û:s*ë#:s*ê/:t*ê:sŸ
List
ctxLoad
internalRoleeltsH
StringLiteral
internalRoleelts"mips_arch_variant=="r1"*¶:yŸ
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*ß:y~v
List
ctxLoad
internalRolevalues>
StringLiteral
internalRoleelts"FPU_MODE_FP32*®:y*ß :s*¶/:t*¶:s†
List
internalRoleelts
ctxLoadH
StringLiteral
internalRoleelts"mips_arch_variant=="rx"*´:y†
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*¨:y~º
List
ctxLoad
internalRolevaluesD
StringLiteral
internalRoleelts"_MIPS_ARCH_MIPS32RX*≠:y>
StringLiteral
internalRoleelts"FPU_MODE_FPXX*Æ:y*¨ :s*´/:t*´:s*â:s*Ü:t*Ø:s*Æ:s*≠":t*≠:sª
List
ctxLoad
internalRoleeltsA
StringLiteral
internalRoleelts"_toolset=="host"*µ:y¬
Dict
internalRoleelts<
StringLiteral
internalRolekeys"
conditions*∂:y~€
List
ctxLoad
internalRolevalues†
List
internalRoleelts
ctxLoadH
StringLiteral
internalRoleelts"mips_arch_variant=="rx"*∑:y†
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*∏:y~º
List
ctxLoad
internalRolevaluesD
StringLiteral
internalRoleelts"_MIPS_ARCH_MIPS32RX*π:y>
StringLiteral
internalRoleelts"FPU_MODE_FPXX*∫:y*∏:s*∑+:t*∑:s†
List
ctxLoad
internalRoleeltsH
StringLiteral
internalRoleelts"mips_arch_variant=="r6"*Ω:y†
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*æ:y~º
List
ctxLoad
internalRolevaluesD
StringLiteral
internalRoleelts"_MIPS_ARCH_MIPS32R6*ø:y>
StringLiteral
internalRoleelts"FPU_MODE_FP64*¿:y*æ:s*Ω+:t*Ω:sÄ
List
ctxLoad
internalRoleeltsH
StringLiteral
internalRoleelts"mips_arch_variant=="r2"*√:yÄ
Dict
internalRoleelts<
StringLiteral
internalRolekeys"
conditions*ƒ:y~ô

List
ctxLoad
internalRolevaluesû
List
ctxLoad
internalRoleeltsF
StringLiteral
internalRoleelts"mips_fpu_mode=="fp64"*≈:y†
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*∆:y~º
List
ctxLoad
internalRolevaluesD
StringLiteral
internalRoleelts"_MIPS_ARCH_MIPS32R2*«:y>
StringLiteral
internalRoleelts"FPU_MODE_FP64*»:y*∆ :s*≈-:t*≈:sû
List
ctxLoad
internalRoleeltsF
StringLiteral
internalRoleelts"mips_fpu_mode=="fpxx"*À:y†
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*Ã:y~º
List
internalRolevalues
ctxLoadD
StringLiteral
internalRoleelts"_MIPS_ARCH_MIPS32R2*Õ:y>
StringLiteral
internalRoleelts"FPU_MODE_FPXX*Œ:y*Ã :s*À-:t*À:sû
List
ctxLoad
internalRoleeltsF
StringLiteral
internalRoleelts"mips_fpu_mode=="fp32"*—:y†
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*“:y~º
List
ctxLoad
internalRolevaluesD
StringLiteral
internalRoleelts"_MIPS_ARCH_MIPS32R2*”:y>
StringLiteral
internalRoleelts"FPU_MODE_FP32*‘:y*“ :s*—-:t*—:s*ƒ:s*√+:t*√:sŸ
List
internalRoleelts
ctxLoadH
StringLiteral
internalRoleelts"mips_arch_variant=="r1"*Ÿ:yŸ
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*⁄:y~v
List
ctxLoad
internalRolevalues>
StringLiteral
internalRoleelts"FPU_MODE_FP32*⁄:y*⁄:s*Ÿ+:t*Ÿ:s*∂:s*µ :t*µ:s*¨:s*ó":t*ó:sâì
List
ctxLoad
internalRoleeltsI
StringLiteral
internalRoleelts"v8_target_arch=="mipsel"*‡:yáí
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*·	:y~<
StringLiteral
internalRolekeys"
conditions*‰	:y~C
StringLiteral
internalRolekeys"target_conditions*ı	:y~|
List
ctxLoad
internalRolevaluesD
StringLiteral
internalRoleelts"V8_TARGET_ARCH_MIPS*‚:y*·:sƒ
List
internalRolevalues
ctxLoadÒ
List
internalRoleelts
ctxLoadT
StringLiteral
internalRoleelts"#v8_can_use_fpu_instructions=="true"*Â:yÂ
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*Ê:y~Å
List
ctxLoad
internalRolevaluesI
StringLiteral
internalRoleelts"CAN_USE_FPU_INSTRUCTIONS*Á:y*Ê:s*Â4:t*Â:só
List
ctxLoad
internalRoleeltsR
StringLiteral
internalRoleelts"!v8_use_mips_abi_hardfloat=="true"*Í:y´
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*Î:y~«
List
ctxLoad
internalRolevaluesD
StringLiteral
internalRoleelts"__mips_hard_float=1*Ï:yI
StringLiteral
internalRoleelts"CAN_USE_FPU_INSTRUCTIONS*Ì:y*Î:s*Í2:tﬂ
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*:y~|
List
ctxLoad
internalRolevaluesD
StringLiteral
internalRoleelts"__mips_soft_float=1*Ò:y*:s*Ô:t*Í:s*‰:s⁄Ü
List
internalRolevalues
ctxLoad∫k
List
ctxLoad
internalRoleeltsC
StringLiteral
internalRoleelts"_toolset=="target"*ˆ:yøj
Dict
internalRoleelts<
StringLiteral
internalRolekeys"
conditions*˜:y~ÿi
List
ctxLoad
internalRolevaluesüi
List
ctxLoad
internalRoleeltsL
StringLiteral
internalRoleelts"v8_target_arch==target_arch*¯:y≠N
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*˙:y~9
StringLiteral
internalRolekeys"ldflags*˛:y~<
StringLiteral
internalRolekeys"
conditions*ˇ:y~≈
List
ctxLoad
internalRolevalues4
StringLiteral
internalRoleelts"-EL*˚:y÷
StringLiteral
internalRoleeltsã
SameLineNoops
col_end109
internalRolenoops_sameline"?# Workaround https://gcc.gnu.org/bugzilla/show_bug.cgi?id=56273*¸.:ä"-Wno-error=array-bounds*¸:y*˙:sl
List
ctxLoad
internalRolevalues4
StringLiteral
internalRoleelts"-EL*˛:y*˛:sõI
List
ctxLoad
internalRolevaluesü
List
ctxLoad
internalRoleeltsR
StringLiteral
internalRoleelts"!v8_use_mips_abi_hardfloat=="true"*Ä:yâ
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*Å:y~9
StringLiteral
internalRolekeys"ldflags*Ç:y~u
List
ctxLoad
internalRolevalues=
StringLiteral
internalRoleelts"-mhard-float*Å :y*Å:su
List
ctxLoad
internalRolevalues=
StringLiteral
internalRoleelts"-mhard-float*Ç!:y*Ç :s*Ä::tâ
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*Ñ:y~9
StringLiteral
internalRolekeys"ldflags*Ö:y~u
List
ctxLoad
internalRolevalues=
StringLiteral
internalRoleelts"-msoft-float*Ñ :y*Ñ:su
List
ctxLoad
internalRolevalues=
StringLiteral
internalRoleelts"-msoft-float*Ö!:y*Ö :s*É:t*Ä:s¶
List
internalRoleelts
ctxLoadH
StringLiteral
internalRoleelts"mips_arch_variant=="r6"*á:y¶

Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*à:y~9
StringLiteral
internalRolekeys"cflags!*å:y~<
StringLiteral
internalRolekeys"
conditions*ç:y~8
StringLiteral
internalRolekeys"cflags*í:y~9
StringLiteral
internalRolekeys"ldflags*ì:y~º
List
internalRolevalues
ctxLoadD
StringLiteral
internalRoleelts"_MIPS_ARCH_MIPS32R6*â:y>
StringLiteral
internalRoleelts"FPU_MODE_FP64*ä:y*à :s®
List
ctxLoad
internalRolevalues7
StringLiteral
internalRoleelts"-mfp32*å!:y7
StringLiteral
internalRoleelts"-mfpxx*å+:y*å :sÇ
List
ctxLoad
internalRolevalues…
List
ctxLoad
internalRoleelts9
StringLiteral
internalRoleelts"clang==0*é:yÿ
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*è:y~v
List
internalRolevalues
ctxLoad>
StringLiteral
internalRoleelts"-Wa,-mips32r6*è$:y*è#:s*é%:t*é:s*ç#:sr
List
ctxLoad
internalRolevalues:
StringLiteral
internalRoleelts"	-mips32r6*í :y*í:sr
List
internalRolevalues
ctxLoad:
StringLiteral
internalRoleelts"	-mips32r6*ì!:y*ì :s*á/:t*á:s™
List
ctxLoad
internalRoleeltsH
StringLiteral
internalRoleelts"mips_arch_variant=="r2"*ï:y™
Dict
internalRoleelts<
StringLiteral
internalRolekeys"
conditions*ñ:y~8
StringLiteral
internalRolekeys"cflags*∞:y~9
StringLiteral
internalRolekeys"ldflags*±:y~Ê
List
ctxLoad
internalRolevalues…
List
internalRoleelts
ctxLoadF
StringLiteral
internalRoleelts"mips_fpu_mode=="fp64"*ó:yÀ
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*ò:y~8
StringLiteral
internalRolekeys"cflags*ú:y~º
List
ctxLoad
internalRolevaluesD
StringLiteral
internalRoleelts"_MIPS_ARCH_MIPS32R2*ô:y>
StringLiteral
internalRoleelts"FPU_MODE_FP64*ö:y*ò$:so
List
ctxLoad
internalRolevalues7
StringLiteral
internalRoleelts"-mfp64*ú$:y*ú#:s*ó2:t*ó:s…
List
ctxLoad
internalRoleeltsF
StringLiteral
internalRoleelts"mips_fpu_mode=="fpxx"*û:yÀ
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*ü:y~8
StringLiteral
internalRolekeys"cflags*£:y~º
List
ctxLoad
internalRolevaluesD
StringLiteral
internalRoleelts"_MIPS_ARCH_MIPS32R2*†:y>
StringLiteral
internalRoleelts"FPU_MODE_FPXX*°:y*ü$:so
List
ctxLoad
internalRolevalues7
StringLiteral
internalRoleelts"-mfpxx*£$:y*£#:s*û1:t*û:s…
List
ctxLoad
internalRoleeltsF
StringLiteral
internalRoleelts"mips_fpu_mode=="fp32"*•:yÀ
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*¶:y~8
StringLiteral
internalRolekeys"cflags*™:y~º
List
ctxLoad
internalRolevaluesD
StringLiteral
internalRoleelts"_MIPS_ARCH_MIPS32R2*ß:y>
StringLiteral
internalRoleelts"FPU_MODE_FP32*®:y*¶$:so
List
ctxLoad
internalRolevalues7
StringLiteral
internalRoleelts"-mfp32*™$:y*™#:s*•1:t*•:s…
List
ctxLoad
internalRoleelts9
StringLiteral
internalRoleelts"clang==0*¨:yÿ
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*≠:y~v
List
ctxLoad
internalRolevalues>
StringLiteral
internalRoleelts"-Wa,-mips32r2*≠$:y*≠#:s*¨%:t*¨:s*ñ#:sr
List
ctxLoad
internalRolevalues:
StringLiteral
internalRoleelts"	-mips32r2*∞ :y*∞:sr
List
internalRolevalues
ctxLoad:
StringLiteral
internalRoleelts"	-mips32r2*±!:y*± :s*ï/:t*ï:sŸ

List
ctxLoad
internalRoleeltsH
StringLiteral
internalRoleelts"mips_arch_variant=="r1"*≥:yŸ	
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*¥:y~9
StringLiteral
internalRolekeys"cflags!*∑:y~<
StringLiteral
internalRolekeys"
conditions*∏:y~8
StringLiteral
internalRolekeys"cflags*Ω:y~9
StringLiteral
internalRolekeys"ldflags*æ:y~v
List
ctxLoad
internalRolevalues>
StringLiteral
internalRoleelts"FPU_MODE_FP32*µ:y*¥ :s®
List
ctxLoad
internalRolevalues7
StringLiteral
internalRoleelts"-mfp64*∑!:y7
StringLiteral
internalRoleelts"-mfpxx*∑+:y*∑ :sÄ
List
ctxLoad
internalRolevalues«
List
ctxLoad
internalRoleelts9
StringLiteral
internalRoleelts"clang==0*π:y÷
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*∫:y~t
List
ctxLoad
internalRolevalues<
StringLiteral
internalRoleelts"-Wa,-mips32*∫$:y*∫#:s*π%:t*π:s*∏#:sp
List
internalRolevalues
ctxLoad8
StringLiteral
internalRoleelts"-mips32*Ω :y*Ω:sp
List
ctxLoad
internalRolevalues8
StringLiteral
internalRoleelts"-mips32*æ!:y*æ :s*≥/:t*≥:s⁄
List
ctxLoad
internalRoleeltsH
StringLiteral
internalRoleelts"mips_arch_variant=="rx"*¿:y⁄

Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*¡:y~9
StringLiteral
internalRolekeys"cflags!*≈:y~<
StringLiteral
internalRolekeys"
conditions*∆:y~8
StringLiteral
internalRolekeys"cflags*À:y~9
StringLiteral
internalRolekeys"ldflags*Ã:y~º
List
ctxLoad
internalRolevaluesD
StringLiteral
internalRoleelts"_MIPS_ARCH_MIPS32RX*¬:y>
StringLiteral
internalRoleelts"FPU_MODE_FPXX*√:y*¡ :s®
List
ctxLoad
internalRolevalues7
StringLiteral
internalRoleelts"-mfp64*≈!:y7
StringLiteral
internalRoleelts"-mfp32*≈+:y*≈ :sÄ
List
ctxLoad
internalRolevalues«
List
ctxLoad
internalRoleelts9
StringLiteral
internalRoleelts"clang==0*«:y÷
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*»:y~t
List
ctxLoad
internalRolevalues<
StringLiteral
internalRoleelts"-Wa,-mips32*»$:y*»#:s*«%:t*«:s*∆#:s©
List
ctxLoad
internalRolevalues8
StringLiteral
internalRoleelts"-mips32*À :y7
StringLiteral
internalRoleelts"-mfpxx*À+:y*À:sp
List
ctxLoad
internalRolevalues8
StringLiteral
internalRoleelts"-mips32*Ã!:y*Ã :s*¿/:t*¿:s±

List
internalRoleelts
ctxLoadN
StringLiteral
internalRoleelts"mips_arch_variant=="loongson"*Œ:y´	
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*œ:y~9
StringLiteral
internalRolekeys"cflags!*”:y~<
StringLiteral
internalRolekeys"
conditions*‘:y~8
StringLiteral
internalRolekeys"cflags*Ÿ:y~º
List
ctxLoad
internalRolevaluesD
StringLiteral
internalRoleelts"_MIPS_ARCH_LOONGSON*–:y>
StringLiteral
internalRoleelts"FPU_MODE_FP32*—:y*œ :s®
List
ctxLoad
internalRolevalues7
StringLiteral
internalRoleelts"-mfp64*”!:y7
StringLiteral
internalRoleelts"-mfpxx*”+:y*” :sˇ
List
ctxLoad
internalRolevalues∆
List
ctxLoad
internalRoleelts9
StringLiteral
internalRoleelts"clang==0*’:y’
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*÷:y~s
List
ctxLoad
internalRolevalues;
StringLiteral
internalRoleelts"
-Wa,-mips3*÷$:y*÷#:s*’%:t*’:s*‘#:s®
List
ctxLoad
internalRolevalues7
StringLiteral
internalRoleelts"-mips3*Ÿ :y7
StringLiteral
internalRoleelts"-mfp32*Ÿ*:y*Ÿ:s*Œ5:t*Œ:s*ˇ:s*¯/:tÎ
Dict
internalRoleelts<
StringLiteral
internalRolekeys"
conditions*ﬂ:y~Ñ
List
ctxLoad
internalRolevalues†
List
ctxLoad
internalRoleeltsH
StringLiteral
internalRoleelts"mips_arch_variant=="r6"*‡:y†
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*·:y~º
List
ctxLoad
internalRolevaluesD
StringLiteral
internalRoleelts"_MIPS_ARCH_MIPS32R6*‚:y>
StringLiteral
internalRoleelts"FPU_MODE_FP64*„:y*· :s*‡/:t*‡:sÄ
List
ctxLoad
internalRoleeltsH
StringLiteral
internalRoleelts"mips_arch_variant=="r2"*Ê:yÄ
Dict
internalRoleelts<
StringLiteral
internalRolekeys"
conditions*Á:y~ô

List
internalRolevalues
ctxLoadû
List
ctxLoad
internalRoleeltsF
StringLiteral
internalRoleelts"mips_fpu_mode=="fp64"*Ë:y†
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*È:y~º
List
ctxLoad
internalRolevaluesD
StringLiteral
internalRoleelts"_MIPS_ARCH_MIPS32R2*Í:y>
StringLiteral
internalRoleelts"FPU_MODE_FP64*Î:y*È$:s*Ë2:t*Ë:sû
List
ctxLoad
internalRoleeltsF
StringLiteral
internalRoleelts"mips_fpu_mode=="fpxx"*Ó:y†
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*Ô:y~º
List
ctxLoad
internalRolevaluesD
StringLiteral
internalRoleelts"_MIPS_ARCH_MIPS32R2*:y>
StringLiteral
internalRoleelts"FPU_MODE_FPXX*Ò:y*Ô$:s*Ó1:t*Ó:sû
List
ctxLoad
internalRoleeltsF
StringLiteral
internalRoleelts"mips_fpu_mode=="fp32"*Ù:y†
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*ı:y~º
List
ctxLoad
internalRolevaluesD
StringLiteral
internalRoleelts"_MIPS_ARCH_MIPS32R2*ˆ:y>
StringLiteral
internalRoleelts"FPU_MODE_FP32*˜:y*ı$:s*Ù1:t*Ù:s*Á#:s*Ê/:t*Ê:sŸ
List
internalRoleelts
ctxLoadH
StringLiteral
internalRoleelts"mips_arch_variant=="r1"*¸:yŸ
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*˝:y~v
List
ctxLoad
internalRolevalues>
StringLiteral
internalRoleelts"FPU_MODE_FP32*˛:y*˝ :s*¸/:t*¸:s†
List
ctxLoad
internalRoleeltsH
StringLiteral
internalRoleelts"mips_arch_variant=="rx"*Å:y†
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*Ç:y~º
List
internalRolevalues
ctxLoadD
StringLiteral
internalRoleelts"_MIPS_ARCH_MIPS32RX*É:y>
StringLiteral
internalRoleelts"FPU_MODE_FPXX*Ñ:y*Ç :s*Å/:t*Å:s¶
List
ctxLoad
internalRoleeltsN
StringLiteral
internalRoleelts"mips_arch_variant=="loongson"*á:y†
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*à:y~º
List
ctxLoad
internalRolevaluesD
StringLiteral
internalRoleelts"_MIPS_ARCH_LOONGSON*â:y>
StringLiteral
internalRoleelts"FPU_MODE_FP32*ä:y*à :s*á5:t*á:s*ﬂ:s*‹:t*¯:s*˜:s*ˆ":t*ˆ:s‰
List
ctxLoad
internalRoleeltsA
StringLiteral
internalRoleelts"_toolset=="host"*ë:yÎ
Dict
internalRoleelts<
StringLiteral
internalRolekeys"
conditions*í:y~Ñ
List
ctxLoad
internalRolevalues†
List
ctxLoad
internalRoleeltsH
StringLiteral
internalRoleelts"mips_arch_variant=="rx"*ì:y†
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*î:y~º
List
ctxLoad
internalRolevaluesD
StringLiteral
internalRoleelts"_MIPS_ARCH_MIPS32RX*ï:y>
StringLiteral
internalRoleelts"FPU_MODE_FPXX*ñ:y*î:s*ì+:t*ì:s†
List
ctxLoad
internalRoleeltsH
StringLiteral
internalRoleelts"mips_arch_variant=="r6"*ô:y†
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*ö:y~º
List
ctxLoad
internalRolevaluesD
StringLiteral
internalRoleelts"_MIPS_ARCH_MIPS32R6*õ:y>
StringLiteral
internalRoleelts"FPU_MODE_FP64*ú:y*ö:s*ô+:t*ô:sÄ
List
internalRoleelts
ctxLoadH
StringLiteral
internalRoleelts"mips_arch_variant=="r2"*ü:yÄ
Dict
internalRoleelts<
StringLiteral
internalRolekeys"
conditions*†:y~ô

List
internalRolevalues
ctxLoadû
List
ctxLoad
internalRoleeltsF
StringLiteral
internalRoleelts"mips_fpu_mode=="fp64"*°:y†
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*¢:y~º
List
ctxLoad
internalRolevaluesD
StringLiteral
internalRoleelts"_MIPS_ARCH_MIPS32R2*£:y>
StringLiteral
internalRoleelts"FPU_MODE_FP64*§:y*¢ :s*°-:t*°:sû
List
ctxLoad
internalRoleeltsF
StringLiteral
internalRoleelts"mips_fpu_mode=="fpxx"*ß:y†
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*®:y~º
List
ctxLoad
internalRolevaluesD
StringLiteral
internalRoleelts"_MIPS_ARCH_MIPS32R2*©:y>
StringLiteral
internalRoleelts"FPU_MODE_FPXX*™:y*® :s*ß-:t*ß:sû
List
ctxLoad
internalRoleeltsF
StringLiteral
internalRoleelts"mips_fpu_mode=="fp32"*≠:y†
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*Æ:y~º
List
ctxLoad
internalRolevaluesD
StringLiteral
internalRoleelts"_MIPS_ARCH_MIPS32R2*Ø:y>
StringLiteral
internalRoleelts"FPU_MODE_FP32*∞:y*Æ :s*≠-:t*≠:s*†:s*ü+:t*ü:sŸ
List
ctxLoad
internalRoleeltsH
StringLiteral
internalRoleelts"mips_arch_variant=="r1"*µ:yŸ
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*∂:y~v
List
internalRolevalues
ctxLoad>
StringLiteral
internalRoleelts"FPU_MODE_FP32*∂:y*∂:s*µ+:t*µ:s¶
List
ctxLoad
internalRoleeltsN
StringLiteral
internalRoleelts"mips_arch_variant=="loongson"*∏:y†
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*π:y~º
List
ctxLoad
internalRolevaluesD
StringLiteral
internalRoleelts"_MIPS_ARCH_LOONGSON*∫:y>
StringLiteral
internalRoleelts"FPU_MODE_FP32*ª:y*π:s*∏1:t*∏:s*í:s*ë :t*ë:s*ı:s*‡$:t*‡:s≤K
List
ctxLoad
internalRoleeltsg
StringLiteral
internalRoleelts"6v8_target_arch=="mips64el" or v8_target_arch=="mips64"*¬:yìJ
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*√	:y~<
StringLiteral
internalRolekeys"
conditions*∆	:y~C
StringLiteral
internalRolekeys"target_conditions*·	:y~~
List
ctxLoad
internalRolevaluesF
StringLiteral
internalRoleelts"V8_TARGET_ARCH_MIPS64*ƒ:y*√:sô
List
ctxLoad
internalRolevaluesÒ
List
ctxLoad
internalRoleeltsT
StringLiteral
internalRoleelts"#v8_can_use_fpu_instructions=="true"*«:yÂ
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*»:y~Å
List
ctxLoad
internalRolevaluesI
StringLiteral
internalRoleelts"CAN_USE_FPU_INSTRUCTIONS*…:y*»:s*«4:t*«:sÈ
List
internalRoleelts
ctxLoadL
StringLiteral
internalRoleelts"v8_host_byteorder=="little"*Ã:yÂ
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*Õ:y~Å
List
ctxLoad
internalRolevaluesI
StringLiteral
internalRoleelts"V8_TARGET_ARCH_MIPS64_LE*Œ:y*Õ:s*Ã,:t*Ã:sÊ
List
ctxLoad
internalRoleeltsI
StringLiteral
internalRoleelts"v8_host_byteorder=="big"*—:yÂ
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*“:y~Å
List
internalRolevalues
ctxLoadI
StringLiteral
internalRoleelts"V8_TARGET_ARCH_MIPS64_BE*”:y*“:s*—):t*—:só
List
ctxLoad
internalRoleeltsR
StringLiteral
internalRoleelts"!v8_use_mips_abi_hardfloat=="true"*÷:y´
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*◊:y~«
List
ctxLoad
internalRolevaluesD
StringLiteral
internalRoleelts"__mips_hard_float=1*ÿ:yI
StringLiteral
internalRoleelts"CAN_USE_FPU_INSTRUCTIONS*Ÿ:y*◊:s*÷2:tﬂ
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*‹:y~|
List
internalRolevalues
ctxLoadD
StringLiteral
internalRoleelts"__mips_soft_float=1*›:y*‹:s*€:t*÷:s*∆:sê9
List
ctxLoad
internalRolevalues˙0
List
ctxLoad
internalRoleeltsC
StringLiteral
internalRoleelts"_toolset=="target"*‚:yˇ/
Dict
internalRoleelts<
StringLiteral
internalRolekeys"
conditions*„:y~ò/
List
internalRolevalues
ctxLoadﬂ.
List
ctxLoad
internalRoleeltsL
StringLiteral
internalRoleelts"v8_target_arch==target_arch*‰:y˜&
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*Â:y~<
StringLiteral
internalRolekeys"
conditions*Ë:y~è
List
ctxLoad
internalRolevalues÷
StringLiteral
internalRoleeltsã
SameLineNoops
col_end109
internalRolenoops_sameline"?# Workaround https://gcc.gnu.org/bugzilla/show_bug.cgi?id=56273*Ê.:ä"-Wno-error=array-bounds*Ê:y*Â:sƒ#
List
internalRolevalues
ctxLoad˙
List
internalRoleelts
ctxLoadK
StringLiteral
internalRoleelts"v8_target_arch=="mips64el"*È:y˜
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*Í:y~9
StringLiteral
internalRolekeys"ldflags*Î:y~l
List
ctxLoad
internalRolevalues4
StringLiteral
internalRoleelts"-EL*Í :y*Í:sl
List
internalRolevalues
ctxLoad4
StringLiteral
internalRoleelts"-EL*Î!:y*Î :s*È2:t*È:s¯
List
ctxLoad
internalRoleeltsI
StringLiteral
internalRoleelts"v8_target_arch=="mips64"*Ì:y˜
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*Ó:y~9
StringLiteral
internalRolekeys"ldflags*Ô:y~l
List
ctxLoad
internalRolevalues4
StringLiteral
internalRoleelts"-EB*Ó :y*Ó:sl
List
internalRolevalues
ctxLoad4
StringLiteral
internalRoleelts"-EB*Ô!:y*Ô :s*Ì0:t*Ì:sü
List
ctxLoad
internalRoleeltsR
StringLiteral
internalRoleelts"!v8_use_mips_abi_hardfloat=="true"*Ò:yâ
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*Ú:y~9
StringLiteral
internalRolekeys"ldflags*Û:y~u
List
ctxLoad
internalRolevalues=
StringLiteral
internalRoleelts"-mhard-float*Ú :y*Ú:su
List
ctxLoad
internalRolevalues=
StringLiteral
internalRoleelts"-mhard-float*Û!:y*Û :s*Ò::tâ
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*ı:y~9
StringLiteral
internalRolekeys"ldflags*ˆ:y~u
List
ctxLoad
internalRolevalues=
StringLiteral
internalRoleelts"-msoft-float*ı :y*ı:su
List
ctxLoad
internalRolevalues=
StringLiteral
internalRoleelts"-msoft-float*ˆ!:y*ˆ :s*Ù:t*Ò:s˜	
List
ctxLoad
internalRoleeltsH
StringLiteral
internalRoleelts"mips_arch_variant=="r6"*¯:y˜
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*˘:y~<
StringLiteral
internalRolekeys"
conditions*˙:y~8
StringLiteral
internalRolekeys"cflags*ˇ:y~9
StringLiteral
internalRolekeys"ldflags*Ä:y~|
List
ctxLoad
internalRolevaluesD
StringLiteral
internalRoleelts"_MIPS_ARCH_MIPS64R6*˘!:y*˘ :sÇ
List
ctxLoad
internalRolevalues…
List
internalRoleelts
ctxLoad9
StringLiteral
internalRoleelts"clang==0*˚:yÿ
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*¸:y~v
List
ctxLoad
internalRolevalues>
StringLiteral
internalRoleelts"-Wa,-mips64r6*¸$:y*¸#:s*˚%:t*˚:s*˙#:s≠
List
ctxLoad
internalRolevalues:
StringLiteral
internalRoleelts"	-mips64r6*ˇ :y9
StringLiteral
internalRoleelts"-mabi=64*ˇ-:y*ˇ:s≠
List
ctxLoad
internalRolevalues:
StringLiteral
internalRoleelts"	-mips64r6*Ä!:y9
StringLiteral
internalRoleelts"-mabi=64*Ä.:y*Ä :s*¯/:t*¯:s˜	
List
ctxLoad
internalRoleeltsH
StringLiteral
internalRoleelts"mips_arch_variant=="r2"*Ç:y˜
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*É:y~<
StringLiteral
internalRolekeys"
conditions*Ñ:y~8
StringLiteral
internalRolekeys"cflags*â:y~9
StringLiteral
internalRolekeys"ldflags*ä:y~|
List
internalRolevalues
ctxLoadD
StringLiteral
internalRoleelts"_MIPS_ARCH_MIPS64R2*É!:y*É :sÇ
List
ctxLoad
internalRolevalues…
List
internalRoleelts
ctxLoad9
StringLiteral
internalRoleelts"clang==0*Ö:yÿ
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*Ü:y~v
List
internalRolevalues
ctxLoad>
StringLiteral
internalRoleelts"-Wa,-mips64r2*Ü$:y*Ü#:s*Ö%:t*Ö:s*Ñ#:s≠
List
ctxLoad
internalRolevalues:
StringLiteral
internalRoleelts"	-mips64r2*â :y9
StringLiteral
internalRoleelts"-mabi=64*â-:y*â:s≠
List
internalRolevalues
ctxLoad:
StringLiteral
internalRoleelts"	-mips64r2*ä!:y9
StringLiteral
internalRoleelts"-mabi=64*ä.:y*ä :s*Ç/:t*Ç:s*Ë:s*‰/:t·
Dict
internalRoleelts<
StringLiteral
internalRolekeys"
conditions*ê:y~˙
List
ctxLoad
internalRolevaluesﬂ
List
ctxLoad
internalRoleeltsH
StringLiteral
internalRoleelts"mips_arch_variant=="r6"*ë:yﬂ
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*í:y~|
List
ctxLoad
internalRolevaluesD
StringLiteral
internalRoleelts"_MIPS_ARCH_MIPS64R6*í!:y*í :s*ë/:t*ë:sﬂ
List
ctxLoad
internalRoleeltsH
StringLiteral
internalRoleelts"mips_arch_variant=="r2"*î:yﬂ
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*ï:y~|
List
ctxLoad
internalRolevaluesD
StringLiteral
internalRoleelts"_MIPS_ARCH_MIPS64R2*ï!:y*ï :s*î/:t*î:s*ê:s*ç:t*‰:s*„:s*‚":t*‚:s⁄
List
internalRoleelts
ctxLoadA
StringLiteral
internalRoleelts"_toolset=="host"*õ:y·
Dict
internalRoleelts<
StringLiteral
internalRolekeys"
conditions*ú:y~˙
List
ctxLoad
internalRolevaluesﬂ
List
ctxLoad
internalRoleeltsH
StringLiteral
internalRoleelts"mips_arch_variant=="r6"*ù:yﬂ
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*û:y~|
List
internalRolevalues
ctxLoadD
StringLiteral
internalRoleelts"_MIPS_ARCH_MIPS64R6*û:y*û:s*ù+:t*ù:sﬂ
List
ctxLoad
internalRoleeltsH
StringLiteral
internalRoleelts"mips_arch_variant=="r2"*†:yﬂ
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*°:y~|
List
ctxLoad
internalRolevaluesD
StringLiteral
internalRoleelts"_MIPS_ARCH_MIPS64R2*°:y*°:s*†+:t*†:s*ú:s*õ :t*õ:s*·:s*¬B:t*¬:s÷
List
ctxLoad
internalRoleeltsF
StringLiteral
internalRoleelts"v8_target_arch=="x64"*ß:yÿ
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*®	:y~@
StringLiteral
internalRolekeys"xcode_settings*´	:y~?
StringLiteral
internalRolekeys"msvs_settings*Æ	:y~M
StringLiteral
internalRolekeys"msvs_configuration_platform*≥	:y~{
List
ctxLoad
internalRolevaluesC
StringLiteral
internalRoleelts"V8_TARGET_ARCH_X64*©:y*®:s”
Dict
internalRolevalues7
StringLiteral
internalRolekeys"ARCHS*¨:y~o
List
internalRolevalues
ctxLoad7
StringLiteral
internalRoleelts"x86_64*¨:y*¨:s*´:tñ
Dict
internalRolevalues>
StringLiteral
internalRolekeys"VCLinkerTool*Ø:y~™
Dict
internalRolevaluesB
StringLiteral
internalRolekeys"StackReserveSize*∞:y~;
StringLiteral
internalRolevalues"2097152*∞!:y*Ø:t*Æ:t7
StringLiteral
internalRolevalues"x64*≥(:y*ß!:t*ß:sº
List
internalRoleelts
ctxLoadF
StringLiteral
internalRoleelts"v8_target_arch=="x32"*µ:yæ
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*∂	:y~8
StringLiteral
internalRolekeys"cflags*ª	:y~9
StringLiteral
internalRolekeys"ldflags*¿	:y~√
List
ctxLoad
internalRolevaluesC
StringLiteral
internalRoleelts"V8_TARGET_ARCH_X64*∏:yF
StringLiteral
internalRoleelts"V8_TARGET_ARCH_32_BIT*π:y*∂:sØ
List
ctxLoad
internalRolevalues6
StringLiteral
internalRoleelts"-mx32*º:y?
StringLiteral
internalRoleelts"-Wno-long-long*æ:y*ª:sn
List
ctxLoad
internalRolevalues6
StringLiteral
internalRoleelts"-mx32*¡:y*¿:s*µ!:t*µ:sŸ
List
ctxLoad
internalRoleeltsH
StringLiteral
internalRoleelts"linux_use_gold_flags==1*ƒ:yŸ
Dict
internalRoleelts9
StringLiteral
internalRolekeys"ldflags*»	:y~v
List
ctxLoad
internalRolevalues>
StringLiteral
internalRoleelts"-fuse-ld=gold*»:y*»:s*ƒ#:t*ƒ:s˝
List
ctxLoad
internalRoleeltsN
StringLiteral
internalRoleelts"linux_use_bundled_binutils==1* :y˜
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*À	:y~î
List
internalRolevalues
ctxLoad\
StringLiteral
internalRoleelts"+-B<!(cd <(DEPTH) && pwd -P)/<(binutils_dir)*Ã:y*À:s* ):t* :s˙
List
internalRoleelts
ctxLoadJ
StringLiteral
internalRoleelts"linux_use_bundled_gold==1*œ:y¯
Dict
internalRoleelts9
StringLiteral
internalRolekeys"ldflags*‘	:y~î
List
internalRolevalues
ctxLoad\
StringLiteral
internalRoleelts"+-B<!(cd <(DEPTH) && pwd -P)/<(binutils_dir)*’:y*‘:s*œ%:t*œ:s¥
List
ctxLoad
internalRoleelts:
StringLiteral
internalRoleelts"	OS=="win"*ÿ:y¬
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*Ÿ	:y~H
StringLiteral
internalRolekeys"msvs_disabled_warnings*ﬁ	:y~O
StringLiteral
internalRolekeys"msvs_configuration_attributes*ﬂ	:y~n
List
ctxLoad
internalRolevalues6
StringLiteral
internalRoleelts"WIN32*⁄:y*Ÿ:sz
List
ctxLoad
internalRolevaluesB

NumLiteral
internalRoleelts
NumTypeint"4351*ﬁ$:v*ﬁ#:s◊
Dict
internalRolevaluesA
StringLiteral
internalRolekeys"OutputDirectory*‡:y~G
StringLiteral
internalRolekeys"IntermediateDirectory*·:y~>
StringLiteral
internalRolekeys"CharacterSet*‚:y~W
StringLiteral
internalRolevalues"#<(DEPTH)\build\$(ConfigurationName)*‡:yP
StringLiteral
internalRolevalues"$(OutDir)\obj\$(ProjectName)*·$:y5
StringLiteral
internalRolevalues"1*‚:y*ﬂ*:t*ÿ:t*ÿ:s 
List
ctxLoad
internalRoleeltsU
StringLiteral
internalRoleelts"$OS=="win" and v8_target_arch=="ia32"*Â:yΩ
Dict
internalRoleelts?
StringLiteral
internalRolekeys"msvs_settings*Ê	:y~”
Dict
internalRolevaluesB
StringLiteral
internalRolekeys"VCCLCompilerTool*Á:y~„
Dict
internalRolevaluesC
StringLiteral
internalRolekeys"AdditionalOptions*È:y~s
List
ctxLoad
internalRolevalues;
StringLiteral
internalRoleelts"
/arch:SSE2*È#:y*È":s*Á:t*Ê:t*Â0:t*Â:sÑ
List
ctxLoad
internalRoleeltsP
StringLiteral
internalRoleelts"OS=="win" and v8_enable_prof==1*Ì:y¸
Dict
internalRoleelts?
StringLiteral
internalRolekeys"msvs_settings*Ó	:y~í
Dict
internalRolevalues>
StringLiteral
internalRolekeys"VCLinkerTool*Ô:y~¶
Dict
internalRolevaluesA
StringLiteral
internalRolekeys"GenerateMapFile*:y~8
StringLiteral
internalRolevalues"true* :y*Ô:t*Ó:t*Ì+:t*Ì:sŒ
List
ctxLoad
internalRoleelts◊
StringLiteral
internalRoleelts"ß(OS=="linux" or OS=="freebsd" or OS=="openbsd" or OS=="solaris"          or OS=="netbsd" or OS=="mac" or OS=="android" or OS=="qnx") and         v8_target_arch=="ia32"*ˆ:yæ
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*˜	:y~€
List
internalRolevalues
ctxLoad7
StringLiteral
internalRoleelts"-msse2*¯:y=
StringLiteral
internalRoleelts"-mfpmath=sse*˘:y™
StringLiteral
internalRoleeltsr
SameLineNoops
internalRolenoops_sameline
col_end59"'# Allows mmintrin.h for MMX intrinsics.*˙:ä"-mmmx*˙:y*˜:s*ˆ":t*Ù:sö 
List
internalRoleelts
ctxLoadè
StringLiteral
internalRoleelts"ﬂ(OS=="linux" or OS=="freebsd" or OS=="openbsd" or OS=="solaris"          or OS=="netbsd" or OS=="mac" or OS=="android" or OS=="qnx") and         (v8_target_arch=="arm" or v8_target_arch=="ia32" or          v8_target_arch=="x87" or v8_target_arch=="mips" or          v8_target_arch=="mipsel" or v8_target_arch=="ppc" or          v8_target_arch=="s390")*Ç:y“
Dict
internalRoleeltsC
StringLiteral
internalRolekeys"target_conditions*É	:y~‰
List
ctxLoad
internalRolevalues“
List
ctxLoad
internalRoleeltsA
StringLiteral
internalRoleelts"_toolset=="host"*Ñ:yŸ
Dict
internalRoleelts<
StringLiteral
internalRolekeys"
conditions*Ö:y~@
StringLiteral
internalRolekeys"xcode_settings*í:y~‹	
List
internalRolevalues
ctxLoad£	
List
ctxLoad
internalRoleeltsF
StringLiteral
internalRoleelts"host_cxx_is_biarch==1*Ü:y•
Dict
internalRoleelts<
StringLiteral
internalRolekeys"
conditions*á:y~æ
List
ctxLoad
internalRolevaluesÖ
List
ctxLoad
internalRoleeltsX
StringLiteral
internalRoleelts"'host_arch=="s390" or host_arch=="s390x"*à:y˘
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*â:y~9
StringLiteral
internalRolekeys"ldflags*ä:y~m
List
ctxLoad
internalRolevalues5
StringLiteral
internalRoleelts"-m31*â!:y*â:sm
List
ctxLoad
internalRolevalues5
StringLiteral
internalRoleelts"-m31*ä":y*ä :s*à?:t˘
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*å:y~9
StringLiteral
internalRolekeys"ldflags*ç:y~m
List
ctxLoad
internalRolevalues5
StringLiteral
internalRoleelts"-m32*å :y*å:sm
List
ctxLoad
internalRolevalues5
StringLiteral
internalRoleelts"-m32*ç!:y*ç:s*ã:t*à:s*á:s*Ü):t*Ü:s*Ö:s—
Dict
internalRolevalues7
StringLiteral
internalRolekeys"ARCHS*ì:y~m
List
ctxLoad
internalRolevalues5
StringLiteral
internalRoleelts"i386*ì:y*ì:s*í:t*Ñ :t*Ñ:s÷
List
ctxLoad
internalRoleeltsC
StringLiteral
internalRoleelts"_toolset=="target"*ñ:y€
Dict
internalRoleelts<
StringLiteral
internalRolekeys"
conditions*ó:y~@
StringLiteral
internalRolekeys"xcode_settings*§:y~ﬁ	
List
ctxLoad
internalRolevalues•	
List
internalRoleelts
ctxLoadH
StringLiteral
internalRoleelts"target_cxx_is_biarch==1*ò:y•
Dict
internalRoleelts<
StringLiteral
internalRolekeys"
conditions*ô:y~æ
List
ctxLoad
internalRolevaluesÖ
List
ctxLoad
internalRoleeltsX
StringLiteral
internalRoleelts"'host_arch=="s390" or host_arch=="s390x"*ö:y˘
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*õ:y~9
StringLiteral
internalRolekeys"ldflags*ú:y~m
List
internalRolevalues
ctxLoad5
StringLiteral
internalRoleelts"-m31*õ!:y*õ:sm
List
ctxLoad
internalRolevalues5
StringLiteral
internalRoleelts"-m31*ú":y*ú :s*ö?:t˘
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*û:y~9
StringLiteral
internalRolekeys"ldflags*ü:y~m
List
internalRolevalues
ctxLoad5
StringLiteral
internalRoleelts"-m32*û :y*û:sm
List
ctxLoad
internalRolevalues5
StringLiteral
internalRoleelts"-m32*ü!:y*ü:s*ù:t*ö:s*ô:s*ò+:t*ò:s*ó:s—
Dict
internalRolevalues7
StringLiteral
internalRolekeys"ARCHS*•:y~m
List
ctxLoad
internalRolevalues5
StringLiteral
internalRoleelts"i386*•:y*•:s*§:t*ñ":t*ñ:s*É:s*Ç$:t*˝:s”
List
ctxLoad
internalRoleeltsÃ
StringLiteral
internalRoleelts"ú(OS=="linux" or OS=="android") and         (v8_target_arch=="x64" or v8_target_arch=="arm64" or          v8_target_arch=="ppc64" or v8_target_arch=="s390x")*¨:yŒ
Dict
internalRoleeltsC
StringLiteral
internalRolekeys"target_conditions*≠	:y~‡
List
ctxLoad
internalRolevaluesê
List
ctxLoad
internalRoleeltsA
StringLiteral
internalRoleelts"_toolset=="host"*Æ:yó
Dict
internalRoleelts<
StringLiteral
internalRolekeys"
conditions*Ø:y~∞
List
ctxLoad
internalRolevalues˜
List
ctxLoad
internalRoleeltsF
StringLiteral
internalRoleelts"host_cxx_is_biarch==1*∞:y˘
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*±:y~9
StringLiteral
internalRolekeys"ldflags*≤:y~m
List
ctxLoad
internalRolevalues5
StringLiteral
internalRoleelts"-m64*±:y*±:sm
List
ctxLoad
internalRolevalues5
StringLiteral
internalRoleelts"-m64*≤:y*≤:s*∞):t*∞:s*Ø:s*Æ :t*Æ:sî
List
ctxLoad
internalRoleeltsC
StringLiteral
internalRoleelts"_toolset=="target"*∂:yô
Dict
internalRoleelts<
StringLiteral
internalRolekeys"
conditions*∑:y~≤
List
internalRolevalues
ctxLoad˘
List
ctxLoad
internalRoleeltsH
StringLiteral
internalRoleelts"target_cxx_is_biarch==1*∏:y˘
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*π:y~9
StringLiteral
internalRolekeys"ldflags*∫:y~m
List
ctxLoad
internalRolevalues5
StringLiteral
internalRoleelts"-m64*π:y*π:sm
List
ctxLoad
internalRolevalues5
StringLiteral
internalRoleelts"-m64*∫:y*∫:s*∏,:t*∏:s*∑:s*∂#:t*∂:s*≠:s*¨@:t*™:sÙ
List
ctxLoad
internalRoleelts[
StringLiteral
internalRoleelts"*OS=="android" and v8_android_log_stdout==1*¿:y·
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*¡	:y~~
List
ctxLoad
internalRolevaluesF
StringLiteral
internalRoleelts"V8_ANDROID_LOG_STDOUT*¬:y*¡:s*¿6:t*¿:sŸ
List
ctxLoad
internalRoleelts†
StringLiteral
internalRoleelts"qOS=="linux" or OS=="freebsd" or OS=="openbsd" or OS=="solaris"          or OS=="netbsd" or OS=="qnx" or OS=="aix"*∆:yÄ
Dict
internalRoleelts<
StringLiteral
internalRolekeys"
conditions*«	:y~ô
List
ctxLoad
internalRolevalues‡
List
ctxLoad
internalRoleeltsI
StringLiteral
internalRoleelts"v8_no_strict_aliasing==1*»:yﬂ
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*…:y~}
List
ctxLoad
internalRolevaluesE
StringLiteral
internalRoleelts"-fno-strict-aliasing*…:y*…:s*»):t*»:s*«:s*∆6:t*≈:sØ
List
ctxLoad
internalRoleelts>
StringLiteral
internalRoleelts"OS=="solaris"*Õ:yπ
Dict
internalRoleeltsî
StringLiteral
internalRolekeysY
SameLineNoops
col_end59
internalRolenoops_sameline"# isinf() etc.*Œ-:ä"defines*Œ	:y~z
List
ctxLoad
internalRolevaluesB
StringLiteral
internalRoleelts"__C99FEATURES__=1*Œ:y*Œ:s*Õ:t*Õ:sÊ
List
ctxLoad
internalRoleeltsO
StringLiteral
internalRoleelts"OS=="freebsd" or OS=="openbsd"*–:yﬂ
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*—	:y~}
List
ctxLoad
internalRolevaluesE
StringLiteral
internalRoleelts"-I/usr/local/include*—:y*—:s*–*:t*–:s“
List
ctxLoad
internalRoleelts=
StringLiteral
internalRoleelts"OS=="netbsd"*”:y›
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*‘	:y~{
List
ctxLoad
internalRolevaluesC
StringLiteral
internalRoleelts"-I/usr/pkg/include*‘:y*‘:s*”:t*”:sÃ
List
ctxLoad
internalRoleelts:
StringLiteral
internalRoleelts"	OS=="aix"*÷:y⁄

Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*◊	:y~<
StringLiteral
internalRolekeys"
conditions*‹	:y~Ü
List
ctxLoad
internalRolevaluesG
StringLiteral
internalRoleelts"_LINUX_SOURCE_COMPAT=1*Ÿ:yE
StringLiteral
internalRoleelts"__STDC_FORMAT_MACROS*⁄:y>
StringLiteral
internalRoleelts"_ALL_SOURCE=1*€:y*◊:sØ
List
ctxLoad
internalRolevaluesÁ
List
ctxLoad
internalRoleeltsF
StringLiteral
internalRoleelts"v8_target_arch=="ppc"*›:yÈ
Dict
internalRoleelts9
StringLiteral
internalRolekeys"ldflags*ﬁ:y~Ö
List
ctxLoad
internalRolevaluesM
StringLiteral
internalRoleelts"-Wl,-bmaxdata:0x60000000/dsa*ﬁ:y*ﬁ:s*›&:t*›:så
List
ctxLoad
internalRoleeltsH
StringLiteral
internalRoleelts"v8_target_arch=="ppc64"*‡:yå
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*·:y~9
StringLiteral
internalRolekeys"ldflags*‚:y~p
List
ctxLoad
internalRolevalues8
StringLiteral
internalRoleelts"-maix64*·:y*·:s}
List
internalRolevalues
ctxLoadE
StringLiteral
internalRoleelts"-maix64 -Wl,-bbigtoc*‚:y*‚:s*‡(:t*‡:s*‹:s*÷:t*÷:s*§:sê 
Dict
internalRolevalues˘
StringLiteral
internalRolekeys∫
PreviousNoops

end_lineno1128
internalRolenoops_previousj
NoopLine
internalRolelines"<      # Abstract configuration for v8_optimized_debug == 0.
*Ë:ä*Ë:å"
DebugBase0*È:y~˘
StringLiteral
internalRolekeys∫
PreviousNoops

end_lineno1175
internalRolenoops_previousj
NoopLine
internalRolelines"<      # Abstract configuration for v8_optimized_debug == 1.
*ó	:ä*ó	:å"
DebugBase1*ò	:y~÷
StringLiteral
internalRolekeysí
PreviousNoops

end_lineno1240
internalRolenoops_previous]
NoopLine
internalRolelines"/              # Don't use -O3 with sanitizers.
*¿	:äc
NoopLine
internalRolelines"5      # Common settings for the Debug configuration.
*¡	:ä*¿	:å"DebugBaseCommon*Ÿ	:y~ë
StringLiteral
internalRolekeys◊
PreviousNoops

end_lineno1298
internalRolenoops_previous[
NoopLine
internalRolelines"-            # Support for backtrace_symbols.
*È	:äy
NoopLine
internalRolelines"K            # Enable libstdc++ debugging facilities to help catch problems
*Í	:ä`
NoopLine
internalRolelines"2            # early, see http://crbug.com/65151 .
*Î	:ä|
NoopLine
internalRolelines"N                # Disable full debug if we want a faster v8 in a debug build.
*Ï	:ä
NoopLine
internalRolelines"Q                # TODO(2304): pass DISABLE_DEBUG_ASSERT instead of hiding DEBUG.
*Ì	:ä
NoopLine
internalRolelines"Q          # TODO(pcc): Re-enable in LTO builds once we've fixed the intermittent
*Ó	:ä\
NoopLine
internalRolelines".          # link failures (crbug.com/513074).
*Ô	:äx
NoopLine
internalRolelines"J                  # Experimentation found that using four linking threads
*	:ä[
NoopLine
internalRolelines"-                  # saved ~20% of link time.
*Ò	:ä§
NoopLine
internalRolelines"v                  # https://groups.google.com/a/chromium.org/group/chromium-dev/browse_thread/thread/281527606915bb36
*Ú	:äw
NoopLine
internalRolelines"I                  # Only apply this to the target linker, since the host
*Û	:äx
NoopLine
internalRolelines"J                  # linker might not be gold, but isn't used much anyway.
*Ù	:ä*È	:å"Debug*õ
:y~=
StringLiteral
internalRolekeys"ReleaseBase*•
:y~î
StringLiteral
internalRolekeysÿ
PreviousNoops

end_lineno1363
internalRolenoops_previous]
NoopLine
internalRolelines"/              # Don't use -O3 with sanitizers.
*∂
:ä/
NoopLine
internalRolelines"
*∑
:ä_
NoopLine
internalRolelines"1              # -fstrict-aliasing.  Mainline gcc
*∏
:ä]
NoopLine
internalRolelines"/              # enables this at -O2 and above,
*π
:ä_
NoopLine
internalRolelines"1              # but Apple gcc does not unless it
*∫
:äW
NoopLine
internalRolelines")              # is specified explicitly.
*ª
:ä*∂
:å"Release*ı
:y~<
StringLiteral
internalRolekeys"
conditions*¯
:y~Õ
Dict
internalRolevalues:
StringLiteral
internalRolekeys"abstract*Í	:y~?
StringLiteral
internalRolekeys"msvs_settings*Î	:y~;
StringLiteral
internalRolekeys"	variables*˙	:y~<
StringLiteral
internalRolekeys"
conditions*˝	:y~B

NumLiteral
NumTypeint
internalRolevalues"1*Í:vı	
Dict
internalRolevaluesB
StringLiteral
internalRolekeys"VCCLCompilerTool*Ï:y~>
StringLiteral
internalRolekeys"VCLinkerTool*ˆ:y~ü
Dict
internalRolevalues>
StringLiteral
internalRolekeys"Optimization*Ì:y~<
StringLiteral
internalRolekeys"
conditions*Ó:y~5
StringLiteral
internalRolevalues"0*Ì:yæ
List
ctxLoad
internalRolevaluesÖ
List
internalRoleelts
ctxLoadd
StringLiteral
internalRoleelts"3component=="shared_library" or force_dynamic_crt==1*Ô:yÛ
Dict
internalRoleeltsì
StringLiteral
internalRolekeysQ
SameLineNoops
col_end46
internalRolenoops_sameline"# /MDd*(:ä"RuntimeLibrary*:y~5
StringLiteral
internalRolevalues"3*#:y*ÔG:tÛ
Dict
internalRoleeltsì
StringLiteral
internalRolekeysQ
SameLineNoops
col_end46
internalRolenoops_sameline"# /MTd*Ú(:ä"RuntimeLibrary*Ú:y~5
StringLiteral
internalRolevalues"1*Ú#:y*Ò:t*Ô:s*Ó:s*Ï:t£
Dict
internalRolevaluesA
StringLiteral
internalRolekeys"LinkIncremental*˜:y~5
StringLiteral
internalRolevalues"2*˜ :y*ˆ:t*Î:t∏
Dict
internalRolevaluesI
StringLiteral
internalRolekeys"v8_enable_slow_dchecks%*˚:y~B

NumLiteral
NumTypeint
internalRolevalues"1*˚&:v*˙:t≤
List
ctxLoad
internalRolevalues∏
List
ctxLoad
internalRoleeltsí
StringLiteral
internalRoleelts"cOS=="linux" or OS=="freebsd" or OS=="openbsd" or OS=="netbsd" or             OS=="qnx" or OS=="aix"*ˇ:yÌ
Dict
internalRoleelts9
StringLiteral
internalRolekeys"cflags!*Ä	:y~8
StringLiteral
internalRolekeys"cflags*Ü	:y~é
List
ctxLoad
internalRolevalues4
StringLiteral
internalRoleelts"-O3*Å	:y4
StringLiteral
internalRoleelts"-O2*Ç	:y4
StringLiteral
internalRoleelts"-O1*É	:y4
StringLiteral
internalRoleelts"-Os*Ñ	:y*Ä	:sæ
List
internalRolevalues
ctxLoad@
StringLiteral
internalRoleelts"-fdata-sections*á	:yD
StringLiteral
internalRoleelts"-ffunction-sections*à	:y*Ü	:s*ˇ&:t*˛:s⁄
List
internalRoleelts
ctxLoad:
StringLiteral
internalRoleelts"	OS=="mac"*ã	:yË
Dict
internalRoleelts@
StringLiteral
internalRolekeys"xcode_settings*å	:y~˝
Dict
internalRolevaluesö
StringLiteral
internalRolekeysP
SameLineNoops
col_end52
internalRolenoops_sameline"# -O0*ç	/:ä"GCC_OPTIMIZATION_LEVEL*ç	:y~5
StringLiteral
internalRolevalues"0*ç	*:y*å	:t*ã	:t*ã	:s·
List
ctxLoad
internalRoleeltsJ
StringLiteral
internalRoleelts"v8_enable_slow_dchecks==1*ê	:yﬂ
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*ë	:y~|
List
internalRolevalues
ctxLoadD
StringLiteral
internalRoleelts"ENABLE_SLOW_DCHECKS*í	:y*ë	:s*ê	):t*ê	:s*˝:s*È:t∏+
Dict
internalRolevalues:
StringLiteral
internalRolekeys"abstract*ô		:y~?
StringLiteral
internalRolekeys"msvs_settings*ö		:y~;
StringLiteral
internalRolekeys"	variables*∞		:y~<
StringLiteral
internalRolekeys"
conditions*≥		:y~B

NumLiteral
internalRolevalues
NumTypeint"1*ô	:vÈ
Dict
internalRolevaluesB
StringLiteral
internalRolekeys"VCCLCompilerTool*õ	:y~>
StringLiteral
internalRolekeys"VCLinkerTool*™	:y~ò
Dict
internalRolevalues>
StringLiteral
internalRolekeys"Optimization*ú	:y~I
StringLiteral
internalRolekeys"InlineFunctionExpansion*ù	:y~J
StringLiteral
internalRolekeys"EnableIntrinsicFunctions*û	:y~B
StringLiteral
internalRolekeys"FavorSizeOrSpeed*ü	:y~?
StringLiteral
internalRolekeys"StringPooling*†	:y~D
StringLiteral
internalRolekeys"BasicRuntimeChecks*°	:y~<
StringLiteral
internalRolekeys"
conditions*¢	:y~5
StringLiteral
internalRolevalues"2*ú	:y5
StringLiteral
internalRolevalues"2*ù	(:y8
StringLiteral
internalRolevalues"true*û	):y5
StringLiteral
internalRolevalues"0*ü	!:y8
StringLiteral
internalRolevalues"true*†	:y5
StringLiteral
internalRolevalues"0*°	#:yº
List
ctxLoad
internalRolevaluesÉ
List
internalRoleelts
ctxLoadd
StringLiteral
internalRoleelts"3component=="shared_library" or force_dynamic_crt==1*£	:yÚ
Dict
internalRoleeltsí
StringLiteral
internalRolekeysP
SameLineNoops
col_end45
internalRolenoops_sameline"#/MDd*§	(:ä"RuntimeLibrary*§	:y~5
StringLiteral
internalRolevalues"3*§	#:y*£	G:tÚ
Dict
internalRoleeltsí
StringLiteral
internalRolekeysP
SameLineNoops
col_end45
internalRolenoops_sameline"#/MTd*¶	(:ä"RuntimeLibrary*¶	:y~5
StringLiteral
internalRolevalues"1*¶	#:y*•	:t*£	:s*¢	:s*õ	:tû
Dict
internalRolevaluesA
StringLiteral
internalRolekeys"LinkIncremental*´	:y~D
StringLiteral
internalRolekeys"OptimizeReferences*¨	:y~E
StringLiteral
internalRolekeys"EnableCOMDATFolding*≠	:y~5
StringLiteral
internalRolevalues"1*´	 :y5
StringLiteral
internalRolevalues"2*¨	#:y5
StringLiteral
internalRolevalues"2*≠	$:y*™	:t*ö	:t∏
Dict
internalRolevaluesI
StringLiteral
internalRolekeys"v8_enable_slow_dchecks%*±	:y~B

NumLiteral
NumTypeint
internalRolevalues"0*±	&:v*∞	:t©
List
ctxLoad
internalRolevaluesØ
List
ctxLoad
internalRoleeltsí
StringLiteral
internalRoleelts"cOS=="linux" or OS=="freebsd" or OS=="openbsd" or OS=="netbsd" or             OS=="qnx" or OS=="aix"*µ	:y‰
Dict
internalRoleelts9
StringLiteral
internalRolekeys"cflags!*∂	:y~8
StringLiteral
internalRolekeys"cflags*ª	:y~<
StringLiteral
internalRolekeys"
conditions*ø	:y~ÿ
List
ctxLoad
internalRolevalues4
StringLiteral
internalRoleelts"-O0*∑	:y4
StringLiteral
internalRoleelts"-O1*∏	:y4
StringLiteral
internalRoleelts"-Os*π	:y*∂	:sæ
List
ctxLoad
internalRolevalues@
StringLiteral
internalRoleelts"-fdata-sections*º	:yD
StringLiteral
internalRoleelts"-ffunction-sections*Ω	:y*ª	:sÏ
List
ctxLoad
internalRolevalues≥
List
ctxLoad
internalRoleeltsâ
StringLiteral
internalRoleelts"Zasan==0 and msan==0 and lsan==0                 and tsan==0 and ubsan==0 and ubsan_vptr==0*¬	:y˜
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*√	:y~9
StringLiteral
internalRolekeys"cflags!*ƒ	:y~l
List
ctxLoad
internalRolevalues4
StringLiteral
internalRoleelts"-O3*√	:y*√	:sl
List
ctxLoad
internalRolevalues4
StringLiteral
internalRoleelts"-O2*ƒ	:y*ƒ	:s*¬	>:t˜
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*∆	:y~9
StringLiteral
internalRolekeys"cflags!*«	:y~l
List
ctxLoad
internalRolevalues4
StringLiteral
internalRoleelts"-O2*∆	:y*∆	:sl
List
ctxLoad
internalRolevalues4
StringLiteral
internalRoleelts"-O3*«	:y*«	:s*≈	:t*¡	:s*ø	:s*µ	&:t*¥	:s⁄
List
ctxLoad
internalRoleelts:
StringLiteral
internalRoleelts"	OS=="mac"*À	:yË
Dict
internalRoleelts@
StringLiteral
internalRolekeys"xcode_settings*Ã	:y~˝
Dict
internalRolevaluesö
StringLiteral
internalRolekeysP
SameLineNoops
col_end51
internalRolenoops_sameline"# -O3*Õ	.:ä"GCC_OPTIMIZATION_LEVEL*Õ	:y~E
StringLiteral
internalRolekeys"GCC_STRICT_ALIASING*Œ	:y~5
StringLiteral
internalRolevalues"3*Õ	):y7
StringLiteral
internalRolevalues"YES*Œ	&:y*Ã	:t*À	:t*À	:s·
List
ctxLoad
internalRoleeltsJ
StringLiteral
internalRoleelts"v8_enable_slow_dchecks==1*—	:yﬂ
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*“	:y~|
List
internalRolevalues
ctxLoadD
StringLiteral
internalRoleelts"ENABLE_SLOW_DCHECKS*”	:y*“	:s*—	):t*—	:s*≥	:s*ò	:t˚"
Dict
internalRolevalues:
StringLiteral
internalRolekeys"abstract*⁄		:y~9
StringLiteral
internalRolekeys"defines*€		:y~<
StringLiteral
internalRolekeys"
conditions*„		:y~B

NumLiteral
NumTypeint
internalRolevalues"1*⁄	:v±
List
internalRolevalues
ctxLoadD
StringLiteral
internalRoleelts"ENABLE_DISASSEMBLER*‹	:yA
StringLiteral
internalRoleelts"V8_ENABLE_CHECKS*›	:y=
StringLiteral
internalRoleelts"OBJECT_PRINT*ﬁ	:y<
StringLiteral
internalRoleelts"VERIFY_HEAP*ﬂ	:y6
StringLiteral
internalRoleelts"DEBUG*‡	:y;
StringLiteral
internalRoleelts"
TRACE_MAPS*·	:y*€	:s¢
List
ctxLoad
internalRolevaluesÒ
List
ctxLoad
internalRoleeltsí
StringLiteral
internalRoleelts"cOS=="linux" or OS=="freebsd" or OS=="openbsd" or OS=="netbsd" or             OS=="qnx" or OS=="aix"*Â	:y¶
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*Ê	:y~√
List
ctxLoad
internalRolevaluesE
StringLiteral
internalRoleelts"-Woverloaded-virtual*Ê	:yD
StringLiteral
internalRoleelts"<(wno_array_bounds)*Ê	1:y*Ê	:s*Â	&:t*‰	:s‰
List
internalRoleelts
ctxLoadW
StringLiteral
internalRoleelts"&OS=="linux" and v8_enable_backtrace==1*Ë	:y’
Dict
internalRoleelts9
StringLiteral
internalRolekeys"ldflags*Í	:y~r
List
ctxLoad
internalRolevalues:
StringLiteral
internalRoleelts"	-rdynamic*Í	:y*Í	:s*Ë	6:t*Ë	:sÌ
List
ctxLoad
internalRoleeltsY
StringLiteral
internalRoleelts"(OS=="linux" and disable_glibcxx_debug==0*Ï	:y‹
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*Ô	:y~y
List
ctxLoad
internalRolevaluesA
StringLiteral
internalRoleelts"_GLIBCXX_DEBUG=1*Ô	:y*Ô	:s*Ï	8:t*Ï	:s•
List
ctxLoad
internalRoleelts:
StringLiteral
internalRoleelts"	OS=="aix"*Ò	:y≥
Dict
internalRoleelts9
StringLiteral
internalRolekeys"ldflags*Ú	:y~<
StringLiteral
internalRolekeys"
conditions*Û	:y~u
List
ctxLoad
internalRolevalues=
StringLiteral
internalRoleelts"-Wl,-bbigtoc*Ú	:y*Ú	:sö
List
ctxLoad
internalRolevalues·
List
ctxLoad
internalRoleeltsH
StringLiteral
internalRoleelts"v8_target_arch=="ppc64"*Ù	:y·
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*ı	:y~
List
ctxLoad
internalRolevaluesG
StringLiteral
internalRoleelts"-maix64 -mcmodel=large*ı	:y*ı	:s*Ù	+:t*Ù	:s*Û	:s*Ò	:t*Ò	:s°
List
ctxLoad
internalRoleelts>
StringLiteral
internalRoleelts"OS=="android"*˘	:y´
Dict
internalRoleelts;
StringLiteral
internalRolekeys"	variables*˙	:y~<
StringLiteral
internalRolekeys"
conditions*˝	:y~¥
Dict
internalRolevaluesE
StringLiteral
internalRolekeys"android_full_debug%*˚	:y~B

NumLiteral
NumTypeint
internalRolevalues"1*˚	&:v*˙	:t–
List
ctxLoad
internalRolevaluesó
List
ctxLoad
internalRoleeltsF
StringLiteral
internalRoleelts"android_full_debug==0*˛	:yô
Dict
internalRoleelts:
StringLiteral
internalRolekeys"defines!*Å
:y~¥
List
ctxLoad
internalRolevalues6
StringLiteral
internalRoleelts"DEBUG*Ç
:yD
StringLiteral
internalRoleelts"ENABLE_SLOW_DCHECKS*É
:y*Å
:s*˛	):t*˛	:s*˝	:s*˘	:t*˘	:s“
List
ctxLoad
internalRoleeltsW
StringLiteral
internalRoleelts"&linux_use_gold_flags==1 and use_lto==0*ä
:y√
Dict
internalRoleeltsC
StringLiteral
internalRolekeys"target_conditions*ã
:y~’
List
ctxLoad
internalRolevaluesú
List
ctxLoad
internalRoleeltsC
StringLiteral
internalRoleelts"_toolset=="target"*å
:y°
Dict
internalRoleelts9
StringLiteral
internalRolekeys"ldflags*ç
:y~Ω
List
ctxLoad
internalRolevalues>
StringLiteral
internalRoleelts"-Wl,--threads*ì
:yE
StringLiteral
internalRoleelts"-Wl,--thread-count=4*î
:y*ç
:s*å
&:t*å
:s*ã
":s*ä
6:t*ä
:s*„	:s*Ÿ	:tî
Dict
internalRolevalues>
StringLiteral
internalRolekeys"inherit_from*ú
	:y~<
StringLiteral
internalRolekeys"
conditions*ù
	:y~x
List
ctxLoad
internalRolevalues@
StringLiteral
internalRoleelts"DebugBaseCommon*ú
:y*ú
:s
List
ctxLoad
internalRolevalues∑
List
ctxLoad
internalRoleeltsF
StringLiteral
internalRoleelts"v8_optimized_debug==0*û
:y€
Dict
internalRoleelts>
StringLiteral
internalRolekeys"inherit_from*ü
:y~s
List
ctxLoad
internalRolevalues;
StringLiteral
internalRoleelts"
DebugBase0*ü
:y*ü
:s*û
%:t€
Dict
internalRoleelts>
StringLiteral
internalRolekeys"inherit_from*°
:y~s
List
ctxLoad
internalRolevalues;
StringLiteral
internalRoleelts"
DebugBase1*°
:y*°
:s*†
:t*û
:s*ù
:s*õ
:t–0
Dict
internalRolevalues:
StringLiteral
internalRolekeys"abstract*¶
	:y~;
StringLiteral
internalRolekeys"	variables*ß
	:y~<
StringLiteral
internalRolekeys"
conditions*™
	:y~B

NumLiteral
NumTypeint
internalRolevalues"1*¶
:v∏
Dict
internalRolevaluesI
StringLiteral
internalRolekeys"v8_enable_slow_dchecks%*®
:y~B

NumLiteral
NumTypeint
internalRolevalues"0*®
&:v*ß
:tÓ,
List
ctxLoad
internalRolevalues˚
List
ctxLoad
internalRoleeltsÖ
StringLiteral
internalRoleelts"VOS=="linux" or OS=="freebsd" or OS=="openbsd" or OS=="netbsd"             or OS=="aix"*¨
:yΩ
Dict
internalRoleelts9
StringLiteral
internalRolekeys"cflags!*≠
:y~8
StringLiteral
internalRolekeys"cflags*∞
:y~<
StringLiteral
internalRolekeys"
conditions*µ
:y~l
List
ctxLoad
internalRolevalues4
StringLiteral
internalRoleelts"-Os*Æ
:y*≠
:sÑ
List
ctxLoad
internalRolevalues@
StringLiteral
internalRoleelts"-fdata-sections*±
:yD
StringLiteral
internalRoleelts"-ffunction-sections*≤
:yD
StringLiteral
internalRoleelts"<(wno_array_bounds)*≥
:y*∞
:sÏ
List
ctxLoad
internalRolevalues≥
List
ctxLoad
internalRoleeltsâ
StringLiteral
internalRoleelts"Zasan==0 and msan==0 and lsan==0                 and tsan==0 and ubsan==0 and ubsan_vptr==0*∏
:y˜
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*π
:y~9
StringLiteral
internalRolekeys"cflags!*∫
:y~l
List
internalRolevalues
ctxLoad4
StringLiteral
internalRoleelts"-O3*π
:y*π
:sl
List
internalRolevalues
ctxLoad4
StringLiteral
internalRoleelts"-O2*∫
:y*∫
:s*∏
>:t˜
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*º
:y~9
StringLiteral
internalRolekeys"cflags!*Ω
:y~l
List
ctxLoad
internalRolevalues4
StringLiteral
internalRoleelts"-O2*º
:y*º
:sl
List
ctxLoad
internalRolevalues4
StringLiteral
internalRoleelts"-O3*Ω
:y*Ω
:s*ª
:t*∑
:s*µ
:s*¨
:t*´
:s≠
List
ctxLoad
internalRoleelts>
StringLiteral
internalRoleelts"OS=="android"*¡
:y∑
Dict
internalRoleelts9
StringLiteral
internalRolekeys"cflags!*¬
:y~8
StringLiteral
internalRolekeys"cflags*∆
:y~¢
List
ctxLoad
internalRolevalues4
StringLiteral
internalRoleelts"-O3*√
:y4
StringLiteral
internalRoleelts"-Os*ƒ
:y*¬
:sÙ
List
internalRolevalues
ctxLoad@
StringLiteral
internalRoleelts"-fdata-sections*«
:yD
StringLiteral
internalRoleelts"-ffunction-sections*»
:y4
StringLiteral
internalRoleelts"-O2*…
:y*∆
:s*¡
:t*¡
:s⁄
List
ctxLoad
internalRoleelts:
StringLiteral
internalRoleelts"	OS=="mac"*Ã
:yË
Dict
internalRoleelts@
StringLiteral
internalRolekeys"xcode_settings*Õ
:y~˝
Dict
internalRolevaluesö
StringLiteral
internalRolekeysP
SameLineNoops
col_end51
internalRolenoops_sameline"# -O3*Œ
.:ä"GCC_OPTIMIZATION_LEVEL*Œ
:y~E
StringLiteral
internalRolekeys"GCC_STRICT_ALIASING*‘
:y~5
StringLiteral
internalRolevalues"3*Œ
):y7
StringLiteral
internalRolevalues"YES*‘
&:y*Õ
:t*Ã
:t*Ã
:s∆
List
ctxLoad
internalRoleelts:
StringLiteral
internalRoleelts"	OS=="win"*◊
:y‘
Dict
internalRoleelts?
StringLiteral
internalRolekeys"msvs_settings*ÿ
:y~Í
Dict
internalRolevaluesB
StringLiteral
internalRolekeys"VCCLCompilerTool*Ÿ
:y~>
StringLiteral
internalRolekeys"VCLinkerTool*Á
:y~ô
Dict
internalRolevalues>
StringLiteral
internalRolekeys"Optimization*⁄
:y~I
StringLiteral
internalRolekeys"InlineFunctionExpansion*€
:y~J
StringLiteral
internalRolekeys"EnableIntrinsicFunctions*‹
:y~B
StringLiteral
internalRolekeys"FavorSizeOrSpeed*›
:y~?
StringLiteral
internalRolekeys"StringPooling*ﬁ
:y~<
StringLiteral
internalRolekeys"
conditions*ﬂ
:y~5
StringLiteral
internalRolevalues"2*⁄
!:y5
StringLiteral
internalRolevalues"2*€
,:y8
StringLiteral
internalRolevalues"true*‹
-:y5
StringLiteral
internalRolevalues"0*›
%:y8
StringLiteral
internalRolevalues"true*ﬁ
":y∫
List
ctxLoad
internalRolevaluesÅ
List
ctxLoad
internalRoleeltsd
StringLiteral
internalRoleelts"3component=="shared_library" or force_dynamic_crt==1*‡
:yÒ
Dict
internalRoleeltsë
StringLiteral
internalRolekeysO
SameLineNoops
col_end48
internalRolenoops_sameline"#/MD*·
,:ä"RuntimeLibrary*·
:y~5
StringLiteral
internalRolevalues"2*·
':y*‡
K:tÒ
Dict
internalRoleeltsë
StringLiteral
internalRolekeysO
SameLineNoops
internalRolenoops_sameline
col_end48"#/MT*„
,:ä"RuntimeLibrary*„
:y~5
StringLiteral
internalRolevalues"0*„
':y*‚
:t*‡
:s*ﬂ
:s*Ÿ
#:tû
Dict
internalRolevaluesA
StringLiteral
internalRolekeys"LinkIncremental*Ë
:y~D
StringLiteral
internalRolekeys"OptimizeReferences*È
:y~E
StringLiteral
internalRolekeys"EnableCOMDATFolding*Í
:y~5
StringLiteral
internalRolevalues"1*Ë
$:y5
StringLiteral
internalRolevalues"2*È
':y5
StringLiteral
internalRolevalues"2*Í
(:y*Á
:t*ÿ
:t*◊
:t*◊
:s·
List
ctxLoad
internalRoleeltsJ
StringLiteral
internalRoleelts"v8_enable_slow_dchecks==1*Ó
:yﬂ
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*Ô
:y~|
List
ctxLoad
internalRolevaluesD
StringLiteral
internalRoleelts"ENABLE_SLOW_DCHECKS*
:y*Ô
:s*Ó
):t*Ó
:s*™
:s*•
:tﬂ
Dict
internalRolevalues>
StringLiteral
internalRolekeys"inherit_from*ˆ
	:y~t
List
ctxLoad
internalRolevalues<
StringLiteral
internalRoleelts"ReleaseBase*ˆ
:y*ˆ
:s*ı
:tñ
List
ctxLoad
internalRolevalues›
List
ctxLoad
internalRoleelts:
StringLiteral
internalRoleelts"	OS=="win"*˘
:yÎ
Dict
internalRoleeltsä
StringLiteral
internalRolekeysÃ
PreviousNoops

end_lineno1402
internalRolenoops_previous|
NoopLine
internalRolelines"N          # TODO(bradnelson): add a gyp mechanism to make this more graceful.
*˙
:ä*˙
:å"	Debug_x64*˚
:y~=
StringLiteral
internalRolekeys"Release_x64*Ö:y~î
Dict
internalRolevalues>
StringLiteral
internalRolekeys"inherit_from*¸
:y~<
StringLiteral
internalRolekeys"
conditions*˝
:y~x
List
ctxLoad
internalRolevalues@
StringLiteral
internalRoleelts"DebugBaseCommon*¸
:y*¸
:s
List
ctxLoad
internalRolevalues∑
List
ctxLoad
internalRoleeltsF
StringLiteral
internalRoleelts"v8_optimized_debug==0*˛
:y€
Dict
internalRoleelts>
StringLiteral
internalRolekeys"inherit_from*ˇ
:y~s
List
ctxLoad
internalRolevalues;
StringLiteral
internalRoleelts"
DebugBase0*ˇ
":y*ˇ
!:s*˛
):t€
Dict
internalRoleelts>
StringLiteral
internalRolekeys"inherit_from*Å:y~s
List
ctxLoad
internalRolevalues;
StringLiteral
internalRoleelts"
DebugBase1*Å":y*Å!:s*Ä:t*˛
:s*˝
:s*˚
:tﬂ
Dict
internalRolevalues>
StringLiteral
internalRolekeys"inherit_from*Ü:y~t
List
internalRolevalues
ctxLoad<
StringLiteral
internalRoleelts"ReleaseBase*Ü:y*Ü:s*Ö:t*˘
:t*˘
	:s*¯
:s*Á:t*£:t*:t*:*:$