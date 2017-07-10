
ModuleıÖ	
Expr
internalRolebodyÃÖ	
Dict
internalRolevalueè
StringLiteral
internalRolekeys”
PreviousNoops

end_lineno32
internalRolenoops_previousk
NoopLine
internalRolelines"># Copyright 2012 the V8 project authors. All rights reserved.
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
*:äm
NoopLine
internalRolelines"@# Definitions to be used when building stand-alone V8 binaries.
*:ä.
NoopLine
internalRolelines"
*:ä{
NoopLine
internalRolelines"N  # We need to include toolchain.gypi here for third-party sources that don't
*:äQ
NoopLine
internalRolelines"$  # directly include it themselves.
*:ä*:å"includes*!:y~:
StringLiteral
internalRolekeys"	variables*":y~¬O
StringLiteral
internalRolekeys˛N
PreviousNoops

end_lineno451
internalRolenoops_previousu
NoopLine
internalRolelines"H    # Track where uninitialized memory originates from. From fastest to
*%:ä{
NoopLine
internalRolelines"N    # slowest: 0 - no tracking, 1 - track only the initial allocation site, 2
*&:äy
NoopLine
internalRolelines"L    # - track the chain of stores leading from allocation site to use site.
*':äw
NoopLine
internalRolelines"J                # This handles the Unix platforms we generally deal with.
*(:ä|
NoopLine
internalRolelines"O                # Anything else gets passed through, which probably won't work
*):äy
NoopLine
internalRolelines"L                # very well; such hosts should pass an explicit target_arch
**:äG
NoopLine
internalRolelines"                # to gyp.
*+:äs
NoopLine
internalRolelines"F                # OS!="linux" and OS!="freebsd" and OS!="openbsd" and
*,:äh
NoopLine
internalRolelines";                # OS!="netbsd" and OS!="mac" and OS!="aix"
*-:ä.
NoopLine
internalRolelines"
*.:äu
NoopLine
internalRolelines"H          # By default we build against a stable sysroot image to avoid
*/:ä|
NoopLine
internalRolelines"O          # depending on the packages installed on the local machine. Set this
*0:ä}
NoopLine
internalRolelines"P          # to 0 to build against locally installed headers and libraries (e.g.
*1:äZ
NoopLine
internalRolelines"-          # if packaging for a linux distro)
*2:ä.
NoopLine
internalRolelines"
*3:ä}
NoopLine
internalRolelines"P        # Instrument for code coverage and use coverage wrapper to exclude some
*4:äq
NoopLine
internalRolelines"D        # files. Uses gcov if clang=0 is set explicitly. Otherwise,
*5:ä[
NoopLine
internalRolelines".        # sanitizer_coverage must be set too.
*6:ä.
NoopLine
internalRolelines"
*7:äf
NoopLine
internalRolelines"9        # Default sysroot if no sysroot can be provided.
*8:ä.
NoopLine
internalRolelines"
*9:ä[
NoopLine
internalRolelines".          # The system root for linux builds.
*::ä}
NoopLine
internalRolelines"P      # Enable coverage gathering instrumentation in sanitizer tools. This flag
*;:äu
NoopLine
internalRolelines"H      # also controls coverage granularity (1 for function-level, 2 for
*<:äU
NoopLine
internalRolelines"(      # block-level, 3 for edge-level).
*=:ä.
NoopLine
internalRolelines"
*>:äq
NoopLine
internalRolelines"D      # Use dynamic libraries instrumented by one of the sanitizers
*?:äy
NoopLine
internalRolelines"L      # instead of the standard system libraries. Set this flag to download
*@:äQ
NoopLine
internalRolelines"$      # prebuilt binaries from GCS.
*A:ä.
NoopLine
internalRolelines"
*B:äc
NoopLine
internalRolelines"6      # Use libc++ (buildtools/third_party/libc++ and
*C:äx
NoopLine
internalRolelines"K      # buildtools/third_party/libc++abi) instead of stdlibc++ as standard
*D:äs
NoopLine
internalRolelines"F      # library. This is intended to be used for instrumented builds.
*E:ä.
NoopLine
internalRolelines"
*F:ä.
NoopLine
internalRolelines"
*G:ä.
NoopLine
internalRolelines"
*H:äi
NoopLine
internalRolelines"<      # Control Flow Integrity for virtual calls and casts.
*I:än
NoopLine
internalRolelines"A      # See http://clang.llvm.org/docs/ControlFlowIntegrity.html
*J:ä.
NoopLine
internalRolelines"
*K:ä.
NoopLine
internalRolelines"
*L:äU
NoopLine
internalRolelines"(      # Set to 1 to enable fast builds.
*M:äd
NoopLine
internalRolelines"7      # TODO(machenbach): Only configured for windows.
*N:ä.
NoopLine
internalRolelines"
*O:äD
NoopLine
internalRolelines"      # goma settings.
*P:äD
NoopLine
internalRolelines"      # 1 to use goma.
*Q:äh
NoopLine
internalRolelines";      # If no gomadir is set, it uses the default gomadir.
*R:ä.
NoopLine
internalRolelines"
*S:ä.
NoopLine
internalRolelines"
*T:äa
NoopLine
internalRolelines"4      # By default, use ICU data file (icudtl.dat).
*U:ä.
NoopLine
internalRolelines"
*V:äL
NoopLine
internalRolelines"        # Set default gomadir.
*W:ä}
NoopLine
internalRolelines"P        # linux_use_bundled_gold: whether to use the gold linker binary checked
*X:ä{
NoopLine
internalRolelines"N        # into third_party/binutils.  Force this off via GYP_DEFINES when you
*Y:äw
NoopLine
internalRolelines"J        # are using a custom toolchain and need to control -B in ldflags.
*Z:ä{
NoopLine
internalRolelines"N        # Do not use 32-bit gold on 32-bit hosts as it runs out address space
*[:ä\
NoopLine
internalRolelines"/        # for component=static_library builds.
*\:ä.
NoopLine
internalRolelines"
*]:äm
NoopLine
internalRolelines"@    # Add a simple extras solely for the purpose of the cctests
*^:ä.
NoopLine
internalRolelines"
*_:ä{
NoopLine
internalRolelines"N    # .gyp files or targets should set v8_code to 1 if they build V8 specific
*`:ä}
NoopLine
internalRolelines"P    # code, as opposed to external code.  This variable is used to control such
*a:ä}
NoopLine
internalRolelines"P    # things as the set of warnings to enable, and whether warnings are treated
*b:ä>
NoopLine
internalRolelines"    # as errors.
*c:ä.
NoopLine
internalRolelines"
*d:äK
NoopLine
internalRolelines"    # Speeds up Debug builds:
*e:äs
NoopLine
internalRolelines"F    # 0 - Compiler optimizations off (debuggable) (default). This may
*f:ä]
NoopLine
internalRolelines"0    #     be 5x slower than Release (or worse).
*g:äq
NoopLine
internalRolelines"D    # 1 - Turn on optimizations and disable slow DCHECKs, but leave
*h:ä{
NoopLine
internalRolelines"N    #     V8_ENABLE_CHECKS and most other assertions enabled.  This may cause
*i:äw
NoopLine
internalRolelines"J    #     some v8 tests to fail in the Debug configuration.  This roughly
*j:äu
NoopLine
internalRolelines"H    #     matches the performance of a Release build and can be used by
*k:ä{
NoopLine
internalRolelines"N    #     embedders that need to build their own code as debug but don't want
*l:äw
NoopLine
internalRolelines"J    #     or need a debug version of V8. This should produce near-release
*m:ä?
NoopLine
internalRolelines"    #     speeds.
*n:ä.
NoopLine
internalRolelines"
*o:ä^
NoopLine
internalRolelines"1    # Use external files for startup data blobs:
*p:äc
NoopLine
internalRolelines"6    # the JS builtins sources and the start snapshot.
*q:äm
NoopLine
internalRolelines"@    # Embedders that don't use standalone.gypi will need to add
*r:äL
NoopLine
internalRolelines"    # their own default value.
*s:ä.
NoopLine
internalRolelines"
*t:ä\
NoopLine
internalRolelines"/    # Relative path to icu.gyp from this file.
*u:ä.
NoopLine
internalRolelines"
*v:äb
NoopLine
internalRolelines"5    # Relative path to inspector.gyp from this file.
*w:ä.
NoopLine
internalRolelines"
*x:äU
NoopLine
internalRolelines"(        # goma doesn't support pch yet.
*y:äU
NoopLine
internalRolelines"(        # goma doesn't support PDB yet.
*z:ä}
NoopLine
internalRolelines"P        # Use a just-built, MSan-instrumented libc++ instead of the system-wide
*{:ä|
NoopLine
internalRolelines"O        # libstdc++. This is required to avoid false positive reports whenever
*|:äY
NoopLine
internalRolelines",        # the C++ standard library is used.
*}:äP
NoopLine
internalRolelines"#        # Location of Android NDK.
*~:ä{
NoopLine
internalRolelines"N            # The Android toolchain needs to use the absolute path to the NDK
*:äu
NoopLine
internalRolelines"G            # because it is used at different levels in the GYP files.
*Ä:ä{
NoopLine
internalRolelines"M            # Version of the NDK. Used to ensure full rebuilds on NDK rolls.
*Å:ä/
NoopLine
internalRolelines"
*Ç:äj
NoopLine
internalRolelines"<          # Copy conditionally-set variables out one scope.
*É:ä/
NoopLine
internalRolelines"
*Ñ:ä/
NoopLine
internalRolelines"
*Ö:äh
NoopLine
internalRolelines":        # Copy conditionally-set variables out one scope.
*Ü:ä/
NoopLine
internalRolelines"
*á:äT
NoopLine
internalRolelines"&        # Print to stdout on Android.
*à:ä/
NoopLine
internalRolelines"
*â:äS
NoopLine
internalRolelines"%    # Default ARM variable settings.
*ä:ä/
NoopLine
internalRolelines"
*ã:äT
NoopLine
internalRolelines"&    # Default MIPS variable settings.
*å:äV
NoopLine
internalRolelines"(    # Possible values fp32, fp64, fpxx.
*ç:äx
NoopLine
internalRolelines"J    # fp32 - 32 32-bit FPU registers are available, doubles are placed in
*é:äK
NoopLine
internalRolelines"    #        register pairs.
*è:äb
NoopLine
internalRolelines"4    # fp64 - 32 64-bit FPU registers are available.
*ê:ä|
NoopLine
internalRolelines"N    # fpxx - compatibility mode, it chooses fp32 or fp64 depending on runtime
*ë:äE
NoopLine
internalRolelines"    #        detection
*í:ä*%:å"target_defaults*∆:y~¨
StringLiteral
internalRolekeysÌ
PreviousNoops

end_lineno570
internalRolenoops_previous_
NoopLine
internalRolelines"1        # TODO(thakis): https://crbug.com/604888
*À:äR
NoopLine
internalRolelines"$        # TODO(yangguo): issue 5258
*Ã:ä[
NoopLine
internalRolelines"-        # Xcode insists on this empty entry.
*Õ:ä}
NoopLine
internalRolelines"O        # This is here so that all files get recompiled after a clang roll and
*Œ:äV
NoopLine
internalRolelines"(        # when turning clang on or off.
*œ:ä|
NoopLine
internalRolelines"N        # (defines are passed via the command line, and build systems rebuild
*–:ä~
NoopLine
internalRolelines"P        # things when their commandline changes). Nothing should ever read this
*—:ä@
NoopLine
internalRolelines"        # define.
*“:äq
NoopLine
internalRolelines"C                # This tells the linker to generate .pdbs, so that
*”:äd
NoopLine
internalRolelines"6                # we can get meaningful stack traces.
*‘:äk
NoopLine
internalRolelines"=                # No debug info to be generated by compiler.
*’:äq
NoopLine
internalRolelines"C            # We don't want to get warnings from third-party code,
*÷:äv
NoopLine
internalRolelines"H            # so remove any existing warning-enabling flags like -Wall.
*◊:äx
NoopLine
internalRolelines"J              # Clang considers the `register` keyword as deprecated, but
*ÿ:ä^
NoopLine
internalRolelines"0              # ICU uses it all over the place.
*Ÿ:äe
NoopLine
internalRolelines"7              # ICU uses its own deprecated functions.
*⁄:än
NoopLine
internalRolelines"@              # ICU prefers `a && b || c` over `(a && b) || c`.
*€:äb
NoopLine
internalRolelines"4              # ICU has some `unsigned < 0` checks.
*‹:äo
NoopLine
internalRolelines"A              # uresdata.c has switch(RES_GET_TYPE(x)) code. The
*›:ä{
NoopLine
internalRolelines"M              # RES_GET_TYPE macro returns an UResType enum, but some switch
*ﬁ:äv
NoopLine
internalRolelines"H              # statement contains case values that aren't part of that
*ﬂ:äz
NoopLine
internalRolelines"L              # enum (e.g. URES_TABLE32 which is in UResInternalType). This
*‡:äM
NoopLine
internalRolelines"              # is on purpose.
*·:ä*À:å"
conditions*—:y~u
List
ctxLoad
internalRolevalues>
StringLiteral
internalRoleelts"toolchain.gypi*!:y*!:sªè
Dict
internalRolevalues;
StringLiteral
internalRolekeys"
component%*#:y~=
StringLiteral
internalRolekeys"clang_xcode%*$:y~D
StringLiteral
internalRolekeys"msan_track_origins%*(:y~<
StringLiteral
internalRolekeys"visibility%*):y~E
StringLiteral
internalRolekeys"v8_enable_backtrace%**:y~H
StringLiteral
internalRolekeys"v8_enable_i18n_support%*+:y~H
StringLiteral
internalRolekeys"v8_deprecation_warnings*,:y~Q
StringLiteral
internalRolekeys" v8_imminent_deprecation_warnings*-:y~I
StringLiteral
internalRolekeys"msvs_multi_core_compile%*.:y~G
StringLiteral
internalRolekeys"mac_deployment_target%*/:y~F
StringLiteral
internalRolekeys"release_extra_cflags%*0:y~E
StringLiteral
internalRolekeys"v8_enable_inspector%*1:y~:
StringLiteral
internalRolekeys"	variables*2:y~;
StringLiteral
internalRolekeys"	base_dir%*ª:y~<
StringLiteral
internalRolekeys"
clang_dir%*º:y~A
StringLiteral
internalRolekeys"make_clang_dir%*Ω:y~<
StringLiteral
internalRolekeys"
host_arch%*æ:y~=
StringLiteral
internalRolekeys"host_clang%*ø:y~>
StringLiteral
internalRolekeys"target_arch%*¿:y~A
StringLiteral
internalRolekeys"v8_target_arch%*¡:y~9
StringLiteral
internalRolekeys"werror%*¬:y~;
StringLiteral
internalRolekeys"	use_goma%*√:y~:
StringLiteral
internalRolekeys"gomadir%*ƒ:y~7
StringLiteral
internalRolekeys"asan%*≈:y~7
StringLiteral
internalRolekeys"lsan%*∆:y~7
StringLiteral
internalRolekeys"msan%*«:y~7
StringLiteral
internalRolekeys"tsan%*»:y~E
StringLiteral
internalRolekeys"sanitizer_coverage%*…:y~V
StringLiteral
internalRolekeys"$use_prebuilt_instrumented_libraries%* :y~D
StringLiteral
internalRolekeys"use_custom_libcxx%*À:y~I
StringLiteral
internalRolekeys"linux_use_bundled_gold%*Ã:y~:
StringLiteral
internalRolekeys"use_lto%*Õ:y~;
StringLiteral
internalRolekeys"	cfi_vptr%*Œ:y~;
StringLiteral
internalRolekeys"	cfi_diag%*œ:y~@
StringLiteral
internalRolekeys"cfi_blacklist%*–:y~F
StringLiteral
internalRolekeys"test_isolation_mode%*—:y~<
StringLiteral
internalRolekeys"
fastbuild%*“:y~;
StringLiteral
internalRolekeys"	coverage%*”:y~:
StringLiteral
internalRolekeys"sysroot%*‘:y~I
StringLiteral
internalRolekeys"icu_use_data_file_flag%*’:y~H
StringLiteral
internalRolekeys"v8_extra_library_files*ÿ:y~U
StringLiteral
internalRolekeys"#v8_experimental_extra_library_files*Ÿ:y~:
StringLiteral
internalRolekeys"v8_code%*ﬂ:y~E
StringLiteral
internalRolekeys"v8_optimized_debug%*Î:y~O
StringLiteral
internalRolekeys"v8_use_external_startup_data%*Ò:y~>
StringLiteral
internalRolekeys"icu_gyp_path*Ù:y~D
StringLiteral
internalRolekeys"inspector_gyp_path*˜:y~<
StringLiteral
internalRolekeys"
conditions*˘:y~>
StringLiteral
internalRolekeys"arm_version%*∑:y~:
StringLiteral
internalRolekeys"arm_fpu%*∏:y~@
StringLiteral
internalRolekeys"arm_float_abi%*π:y~;
StringLiteral
internalRolekeys"	arm_thumb*∫:y~D
StringLiteral
internalRolekeys"mips_arch_variant%*Ω:y~@
StringLiteral
internalRolekeys"mips_fpu_mode%*ƒ:y~A
StringLiteral
internalRolevalues"static_library*#:yA

NumLiteral
NumTypeint
internalRolevalues"0*$:vA

NumLiteral
NumTypeint
internalRolevalues"2*(:v9
StringLiteral
internalRolevalues"hidden*):yA

NumLiteral
NumTypeint
internalRolevalues"0**:vA

NumLiteral
internalRolevalues
NumTypeint"1*+ :vA

NumLiteral
NumTypeint
internalRolevalues"1*, :vA

NumLiteral
internalRolevalues
NumTypeint"1*-):v4
StringLiteral
internalRolevalues"1*.!:y7
StringLiteral
internalRolevalues"10.7*/:y1
StringLiteral
internalRolevalues*0:yA

NumLiteral
NumTypeint
internalRolevalues"0*1:vÑF
Dict
internalRolevalues:
StringLiteral
internalRolekeys"	variables*3:y~:
StringLiteral
internalRolekeys"	base_dir%*o:y~;
StringLiteral
internalRolekeys"
host_arch%*p:y~=
StringLiteral
internalRolekeys"target_arch%*q:y~@
StringLiteral
internalRolekeys"v8_target_arch%*r:y~:
StringLiteral
internalRolekeys"	coverage%*s:y~9
StringLiteral
internalRolekeys"sysroot%*t:y~6
StringLiteral
internalRolekeys"asan%*u:y~6
StringLiteral
internalRolekeys"lsan%*v:y~6
StringLiteral
internalRolekeys"msan%*w:y~6
StringLiteral
internalRolekeys"tsan%*x:y~D
StringLiteral
internalRolekeys"sanitizer_coverage%*|:y~V
StringLiteral
internalRolekeys"$use_prebuilt_instrumented_libraries%*Å:y~D
StringLiteral
internalRolekeys"use_custom_libcxx%*Ü:y~<
StringLiteral
internalRolekeys"
clang_dir%*à:y~A
StringLiteral
internalRolekeys"make_clang_dir%*â:y~:
StringLiteral
internalRolekeys"use_lto%*ã:y~;
StringLiteral
internalRolekeys"	cfi_vptr%*è:y~;
StringLiteral
internalRolekeys"	cfi_diag%*ê:y~@
StringLiteral
internalRolekeys"cfi_blacklist%*í:y~<
StringLiteral
internalRolekeys"
fastbuild%*ñ:y~;
StringLiteral
internalRolekeys"	use_goma%*õ:y~:
StringLiteral
internalRolekeys"gomadir%*ú:y~F
StringLiteral
internalRolekeys"test_isolation_mode%*û:y~I
StringLiteral
internalRolekeys"icu_use_data_file_flag%*°:y~<
StringLiteral
internalRolekeys"
conditions*£:y~ú
Dict
internalRolevalues:
StringLiteral
internalRolekeys"	variables*4	:y~;
StringLiteral
internalRolekeys"
host_arch%*N	:y~=
StringLiteral
internalRolekeys"target_arch%*O	:y~=
StringLiteral
internalRolekeys"use_sysroot%*P	:y~:
StringLiteral
internalRolekeys"	base_dir%*Q	:y~:
StringLiteral
internalRolekeys"	coverage%*V	:y~9
StringLiteral
internalRolekeys"sysroot%*Y	:y~;
StringLiteral
internalRolekeys"
conditions*[	:y~ª	
Dict
internalRolevalues:
StringLiteral
internalRolekeys"	variables*5:y~;
StringLiteral
internalRolekeys"
host_arch%*E:y~=
StringLiteral
internalRolekeys"target_arch%*F:y~=
StringLiteral
internalRolekeys"use_sysroot%*L:y~‘
Dict
internalRolevalues;
StringLiteral
internalRolekeys"
conditions*6:y~Ï
List
ctxLoad
internalRolevalues¥
List
ctxLoad
internalRoleelts£
StringLiteral
internalRoleelts"uOS=="linux" or OS=="freebsd" or OS=="openbsd" or                  OS=="netbsd" or OS=="mac" or OS=="qnx" or OS=="aix"*8:yª
Dict
internalRoleelts;
StringLiteral
internalRolekeys"
host_arch%*=:y~W
StringLiteral
internalRolevalues"$<!pymod_do_main(detect_v8_host_arch)*=:y*8H:tõ
Dict
internalRoleelts;
StringLiteral
internalRolekeys"
host_arch%*A:y~7
StringLiteral
internalRolevalues"ia32*A:y*>:t*7:s*6:s*5:t?
StringLiteral
internalRolevalues"<(host_arch)*E:y?
StringLiteral
internalRolevalues"<(host_arch)*F:yA

NumLiteral
NumTypeint
internalRolevalues"1*L:v*4:t?
StringLiteral
internalRolevalues"<(host_arch)*N:yA
StringLiteral
internalRolevalues"<(target_arch)*O:yA
StringLiteral
internalRolevalues"<(use_sysroot)*P:yn
StringLiteral
internalRolevalues";<!(cd <(DEPTH) && python -c "import os; print os.getcwd()")*Q:yA

NumLiteral
internalRolevalues
NumTypeint"0*V:v1
StringLiteral
internalRolevalues*Y:yü
List
ctxLoad
internalRolevaluesÁ
List
ctxLoad
internalRoleeltsN
StringLiteral
internalRoleelts"OS=="linux" and use_sysroot==1*]:y‚
Dict
internalRoleelts;
StringLiteral
internalRolekeys"
conditions*^:y~˝

List
internalRolevalues
ctxLoadÕ
List
ctxLoad
internalRoleeltsB
StringLiteral
internalRoleelts"target_arch=="arm"*_:y‘
Dict
internalRoleelts9
StringLiteral
internalRolekeys"sysroot%*`:y~r
StringLiteral
internalRolevalues"?<!(cd <(DEPTH) && pwd -P)/build/linux/debian_wheezy_arm-sysroot*`:y*_&:t*_:sœ
List
ctxLoad
internalRoleeltsB
StringLiteral
internalRoleelts"target_arch=="x64"*b:y÷
Dict
internalRoleelts9
StringLiteral
internalRolekeys"sysroot%*c:y~t
StringLiteral
internalRolevalues"A<!(cd <(DEPTH) && pwd -P)/build/linux/debian_wheezy_amd64-sysroot*c:y*b&:t*b:sœ
List
ctxLoad
internalRoleeltsC
StringLiteral
internalRoleelts"target_arch=="ia32"*e:y’
Dict
internalRoleelts9
StringLiteral
internalRolekeys"sysroot%*f:y~s
StringLiteral
internalRolevalues"@<!(cd <(DEPTH) && pwd -P)/build/linux/debian_wheezy_i386-sysroot*f:y*e':t*e:s—
List
ctxLoad
internalRoleeltsE
StringLiteral
internalRoleelts"target_arch=="mipsel"*h:y’
Dict
internalRoleelts9
StringLiteral
internalRolekeys"sysroot%*i:y~s
StringLiteral
internalRolevalues"@<!(cd <(DEPTH) && pwd -P)/build/linux/debian_wheezy_mips-sysroot*i:y*h):t*h:s*^:s*].:t*]:s*[:s*3:t>
StringLiteral
internalRolevalues"<(base_dir)*o:y?
StringLiteral
internalRolevalues"<(host_arch)*p:yA
StringLiteral
internalRolevalues"<(target_arch)*q:yA
StringLiteral
internalRolevalues"<(target_arch)*r:y>
StringLiteral
internalRolevalues"<(coverage)*s:y=
StringLiteral
internalRolevalues"
<(sysroot)*t:yA

NumLiteral
NumTypeint
internalRolevalues"0*u:vA

NumLiteral
NumTypeint
internalRolevalues"0*v:vA

NumLiteral
NumTypeint
internalRolevalues"0*w:vA

NumLiteral
NumTypeint
internalRolevalues"0*x:vA

NumLiteral
NumTypeint
internalRolevalues"0*|:vB

NumLiteral
NumTypeint
internalRolevalues"0*Å/:vB

NumLiteral
NumTypeint
internalRolevalues"0*Ü:vf
StringLiteral
internalRolevalues"2<(base_dir)/third_party/llvm-build/Release+Asserts*à:yf
StringLiteral
internalRolevalues"2<(base_dir)/third_party/llvm-build/Release+Asserts*â:yB

NumLiteral
NumTypeint
internalRolevalues"0*ã:vB

NumLiteral
NumTypeint
internalRolevalues"0*è:vB

NumLiteral
internalRolevalues
NumTypeint"0*ê:vW
StringLiteral
internalRolevalues"#<(base_dir)/tools/cfi/blacklist.txt*í:yB

NumLiteral
NumTypeint
internalRolevalues"0*ñ:vB

NumLiteral
NumTypeint
internalRolevalues"0*õ:v2
StringLiteral
internalRolevalues*ú:y8
StringLiteral
internalRolevalues"noop*û:yB

NumLiteral
internalRolevalues
NumTypeint"1*°":vº
List
ctxLoad
internalRolevalues–
List
ctxLoad
internalRoleelts:
StringLiteral
internalRoleelts"	OS=="win"*•
:yß
Dict
internalRoleelts9
StringLiteral
internalRolekeys"gomadir*¶:y~D
StringLiteral
internalRolevalues"c:\goma\goma-win*¶:y*•:t¥
Dict
internalRoleelts9
StringLiteral
internalRolekeys"gomadir*®:y~Q
StringLiteral
internalRolevalues"<!(/bin/echo -n ${HOME}/goma)*®:y*ß:t*•	:s¨
List
internalRoleelts
ctxLoadû
StringLiteral
internalRoleelts"mhost_arch!="ppc" and host_arch!="ppc64" and host_arch!="ppc64le" and host_arch!="s390" and host_arch!="s390x"*™
:y©
Dict
internalRoleelts=
StringLiteral
internalRolekeys"host_clang%*´:y~B

NumLiteral
NumTypeint
internalRolevalues"1*´:v*™{:t©
Dict
internalRoleelts=
StringLiteral
internalRolekeys"host_clang%*≠:y~B

NumLiteral
NumTypeint
internalRolevalues"0*≠:v*¨:t*™	:sÅ
List
ctxLoad
internalRoleelts⁄
StringLiteral
internalRoleelts"®((OS=="linux" or OS=="android") and (target_arch=="x64" or target_arch=="arm" or (target_arch=="ia32" and host_arch=="x64"))) or (OS=="linux" and target_arch=="mipsel")*¥
:y∂
Dict
internalRoleeltsI
StringLiteral
internalRolekeys"linux_use_bundled_gold%*µ:y~B

NumLiteral
NumTypeint
internalRolevalues"1*µ&:v*¥∂:tµ
Dict
internalRoleeltsI
StringLiteral
internalRolekeys"linux_use_bundled_gold%*∑:y~B

NumLiteral
internalRolevalues
NumTypeint"0*∑&:v*∂:t*¥	:s*£:s*2:t?
StringLiteral
internalRolevalues"<(base_dir)*ª:y@
StringLiteral
internalRolevalues"<(clang_dir)*º:yE
StringLiteral
internalRolevalues"<(make_clang_dir)*Ω:y@
StringLiteral
internalRolevalues"<(host_arch)*æ:yA
StringLiteral
internalRolevalues"<(host_clang)*ø:yB
StringLiteral
internalRolevalues"<(target_arch)*¿:yE
StringLiteral
internalRolevalues"<(v8_target_arch)*¡:y;
StringLiteral
internalRolevalues"-Werror*¬:y?
StringLiteral
internalRolevalues"<(use_goma)*√:y>
StringLiteral
internalRolevalues"
<(gomadir)*ƒ:y;
StringLiteral
internalRolevalues"<(asan)*≈:y;
StringLiteral
internalRolevalues"<(lsan)*∆:y;
StringLiteral
internalRolevalues"<(msan)*«:y;
StringLiteral
internalRolevalues"<(tsan)*»:yI
StringLiteral
internalRolevalues"<(sanitizer_coverage)*…:yZ
StringLiteral
internalRolevalues"&<(use_prebuilt_instrumented_libraries)* -:yH
StringLiteral
internalRolevalues"<(use_custom_libcxx)*À:yM
StringLiteral
internalRolevalues"<(linux_use_bundled_gold)*Ã :y>
StringLiteral
internalRolevalues"
<(use_lto)*Õ:y?
StringLiteral
internalRolevalues"<(cfi_vptr)*Œ:y?
StringLiteral
internalRolevalues"<(cfi_diag)*œ:yD
StringLiteral
internalRolevalues"<(cfi_blacklist)*–:yJ
StringLiteral
internalRolevalues"<(test_isolation_mode)*—:y@
StringLiteral
internalRolevalues"<(fastbuild)*“:y?
StringLiteral
internalRolevalues"<(coverage)*”:y>
StringLiteral
internalRolevalues"
<(sysroot)*‘:yM
StringLiteral
internalRolevalues"<(icu_use_data_file_flag)*’ :yÖ
List
ctxLoad
internalRolevaluesM
StringLiteral
internalRoleelts"../test/cctest/test-extra.js*ÿ :y*ÿ:sí
List
internalRolevalues
ctxLoadZ
StringLiteral
internalRoleelts")../test/cctest/test-experimental-extra.js*Ÿ-:y*Ÿ,:sB

NumLiteral
NumTypeint
internalRolevalues"0*ﬂ:vB

NumLiteral
NumTypeint
internalRolevalues"0*Î:vB

NumLiteral
internalRolevalues
NumTypeint"1*Ò&:vN
StringLiteral
internalRolevalues"../third_party/icu/icu.gyp*Ù:yU
StringLiteral
internalRolevalues"!../src/v8-inspector/inspector.gyp*˜:y‹ê
List
ctxLoad
internalRolevalues§
List
ctxLoad
internalRoleelts¯
StringLiteral
internalRoleelts"»(v8_target_arch=="arm" and host_arch!="arm") or         (v8_target_arch=="arm64" and host_arch!="arm64") or         (v8_target_arch=="mipsel" and host_arch!="mipsel") or         (v8_target_arch=="mips64el" and host_arch!="mips64el") or         (v8_target_arch=="x64" and host_arch!="x64") or         (OS=="android" or OS=="qnx")*ˇ:y∏
Dict
internalRoleeltsL
StringLiteral
internalRolekeys"want_separate_host_toolset*Ä	:y~B

NumLiteral
NumTypeint
internalRolevalues"1*Ä':v*ˇ(:t∏
Dict
internalRoleeltsL
StringLiteral
internalRolekeys"want_separate_host_toolset*Ç	:y~B

NumLiteral
NumTypeint
internalRolevalues"0*Ç':v*Å
:t*˙:s≤
List
ctxLoad
internalRoleelts
StringLiteral
internalRoleelts"¿(v8_target_arch=="arm" and host_arch!="arm") or         (v8_target_arch=="arm64" and host_arch!="arm64") or         (v8_target_arch=="mipsel" and host_arch!="mipsel") or         (v8_target_arch=="mips64el" and host_arch!="mips64el") or         (v8_target_arch=="mips" and host_arch!="mips") or         (v8_target_arch=="mips64" and host_arch!="mips64") or         (v8_target_arch=="x64" and host_arch!="x64") or         (OS=="android" or OS=="qnx")*ã:y√
Dict
internalRoleeltsW
StringLiteral
internalRolekeys"%want_separate_host_toolset_mkpeephole*å	:y~B

NumLiteral
NumTypeint
internalRolevalues"1*å2:v*ã(:t√
Dict
internalRoleeltsW
StringLiteral
internalRolekeys"%want_separate_host_toolset_mkpeephole*é	:y~B

NumLiteral
NumTypeint
internalRolevalues"0*é2:v*ç
:t*Ñ:s≈
List
ctxLoad
internalRoleelts<
StringLiteral
internalRoleelts"OS == "win"*ê:yß
Dict
internalRoleelts;
StringLiteral
internalRolekeys"	os_posix%*ë	:y~B

NumLiteral
internalRolevalues
NumTypeint"0*ë:v*ê:tß
Dict
internalRoleelts;
StringLiteral
internalRolekeys"	os_posix%*ì	:y~B

NumLiteral
NumTypeint
internalRolevalues"1*ì:v*í
:t*ê:s≤
List
ctxLoad
internalRoleeltsJ
StringLiteral
internalRoleelts"OS=="win" and use_goma==1*ï:y∞
Dict
internalRoleeltsB
StringLiteral
internalRolekeys"chromium_win_pch*ó	:y~<
StringLiteral
internalRolekeys"
fastbuild%*ô	:y~B

NumLiteral
NumTypeint
internalRolevalues"0*ó:vB

NumLiteral
NumTypeint
internalRolevalues"1*ô:v*ï%:t*ï:sÍ
List
internalRoleelts
ctxLoad–
StringLiteral
internalRoleelts"†((v8_target_arch=="ia32" or v8_target_arch=="x64" or v8_target_arch=="x87") and         (OS=="linux" or OS=="mac")) or (v8_target_arch=="ppc64" and OS=="linux")*ú:yØ
Dict
internalRoleeltsC
StringLiteral
internalRolekeys"v8_enable_gdbjit%*ù	:y~B

NumLiteral
NumTypeint
internalRolevalues"1*ù:v*úT:tØ
Dict
internalRoleeltsC
StringLiteral
internalRolekeys"v8_enable_gdbjit%*ü	:y~B

NumLiteral
NumTypeint
internalRolevalues"0*ü:v*û
:t*õ:sº
List
ctxLoad
internalRoleelts∏
StringLiteral
internalRoleelts"à(OS=="linux" or OS=="mac") and (target_arch=="ia32" or target_arch=="x64") and         (v8_target_arch!="x87" and v8_target_arch!="x32")*¢:y§
Dict
internalRoleelts8
StringLiteral
internalRolekeys"clang%*£	:y~B

NumLiteral
NumTypeint
internalRolevalues"1*£:v*¢=:t§
Dict
internalRoleelts8
StringLiteral
internalRolekeys"clang%*•	:y~B

NumLiteral
internalRolevalues
NumTypeint"0*•:v*§
:t*°:s±
List
ctxLoad
internalRoleeltsY
StringLiteral
internalRoleelts"(asan==1 or lsan==1 or msan==1 or tsan==1*ß:y†
Dict
internalRoleelts8
StringLiteral
internalRolekeys"clang%*®	:y~@
StringLiteral
internalRolekeys"use_allocator%*©	:y~B

NumLiteral
internalRolevalues
NumTypeint"1*®:v8
StringLiteral
internalRolevalues"none*©:y*ß4:t*ß:s∞
List
ctxLoad
internalRoleeltsH
StringLiteral
internalRoleelts"asan==1 and OS=="linux"*´:y∞
Dict
internalRoleeltsD
StringLiteral
internalRolekeys"use_custom_libcxx%*¨	:y~B

NumLiteral
NumTypeint
internalRolevalues"1*¨:v*´#:t*´:s†
List
ctxLoad
internalRoleelts8
StringLiteral
internalRoleelts"tsan==1*Æ:y∞
Dict
internalRoleeltsD
StringLiteral
internalRolekeys"use_custom_libcxx%*Ø	:y~B

NumLiteral
NumTypeint
internalRolevalues"1*Ø:v*Æ:t*Æ:s†
List
internalRoleelts
ctxLoad8
StringLiteral
internalRoleelts"msan==1*±:y∞
Dict
internalRoleeltsD
StringLiteral
internalRolekeys"use_custom_libcxx%*µ	:y~B

NumLiteral
internalRolevalues
NumTypeint"1*µ:v*±:t*±:sö
List
ctxLoad
internalRoleelts<
StringLiteral
internalRoleelts"cfi_vptr==1*∑:y¶
Dict
internalRoleelts:
StringLiteral
internalRolekeys"use_lto%*∏	:y~B

NumLiteral
NumTypeint
internalRolevalues"1*∏:v*∑:t*∑:sÊ[
List
ctxLoad
internalRoleelts>
StringLiteral
internalRoleelts"OS=="android"*∫:yZ
Dict
internalRoleelts;
StringLiteral
internalRolekeys"	variables*º	:y~F
StringLiteral
internalRolekeys"android_ndk_version%*˜	:y~F
StringLiteral
internalRolekeys"android_target_arch%*¯	:y~J
StringLiteral
internalRolekeys"android_target_platform%*˘	:y~D
StringLiteral
internalRolekeys"android_toolchain%*˙	:y~>
StringLiteral
internalRolekeys"arm_version%*˚	:y~:
StringLiteral
internalRolekeys"host_os%*¸	:y~H
StringLiteral
internalRolekeys"v8_android_log_stdout%*ˇ	:y~<
StringLiteral
internalRolekeys"
conditions*Å	:y~H
StringLiteral
internalRolekeys"android_libcpp_library*¶	:y~∞1
Dict
internalRolevalues;
StringLiteral
internalRolekeys"	variables*Ω:y~C
StringLiteral
internalRolekeys"android_ndk_root%*…:y~F
StringLiteral
internalRolekeys"android_ndk_version%* :y~:
StringLiteral
internalRolekeys"host_os%*À:y~A
StringLiteral
internalRolekeys"os_folder_name%*Ã:y~<
StringLiteral
internalRolekeys"
conditions*Œ:y~ 
Dict
internalRolevaluesC
StringLiteral
internalRolekeys"android_ndk_root%*¿:y~D
StringLiteral
internalRolekeys"android_host_arch%*¡:y~F
StringLiteral
internalRolekeys"android_ndk_version%*√:y~:
StringLiteral
internalRolekeys"host_os%*ƒ:y~A
StringLiteral
internalRolekeys"os_folder_name%*≈:y~^
StringLiteral
internalRolevalues"*<(base_dir)/third_party/android_tools/ndk/*¿":y\
StringLiteral
internalRolevalues"(<!(uname -m | sed -e 's/i[3456]86/x86/')*¡#:y8
StringLiteral
internalRolevalues"r12b*√%:yh
StringLiteral
internalRolevalues"4<!(uname -s | sed -e 's/Linux/linux/;s/Darwin/mac/')*ƒ:yk
StringLiteral
internalRolevalues"7<!(uname -s | sed -e 's/Linux/linux/;s/Darwin/darwin/')*≈ :y*Ω:tG
StringLiteral
internalRolevalues"<(android_ndk_root)*… :yJ
StringLiteral
internalRolevalues"<(android_ndk_version)* #:y>
StringLiteral
internalRolevalues"
<(host_os)*À:yE
StringLiteral
internalRolevalues"<(os_folder_name)*Ã:yî%
List
ctxLoad
internalRolevalues˝
List
ctxLoad
internalRoleeltsF
StringLiteral
internalRoleelts"target_arch == "ia32"*œ:yˇ
Dict
internalRoleeltsD
StringLiteral
internalRolekeys"android_toolchain%*–:y~F
StringLiteral
internalRolekeys"android_target_arch%*—:y~J
StringLiteral
internalRolekeys"android_target_platform%*“:y~>
StringLiteral
internalRolekeys"arm_version%*”:y~é
StringLiteral
internalRolevalues"Z<(android_ndk_root)/toolchains/x86-4.9/prebuilt/<(os_folder_name)-<(android_host_arch)/bin*–%:y7
StringLiteral
internalRolevalues"x86*—':y6
StringLiteral
internalRolevalues"16*“+:y;
StringLiteral
internalRolevalues"default*”:y*œ':t*œ:sÇ
List
internalRoleelts
ctxLoadE
StringLiteral
internalRoleelts"target_arch == "x64"*’:yÖ
Dict
internalRoleeltsD
StringLiteral
internalRolekeys"android_toolchain%*÷:y~F
StringLiteral
internalRolekeys"android_target_arch%*◊:y~J
StringLiteral
internalRolekeys"android_target_platform%*ÿ:y~>
StringLiteral
internalRolekeys"arm_version%*Ÿ:y~ë
StringLiteral
internalRolevalues"]<(android_ndk_root)/toolchains/x86_64-4.9/prebuilt/<(os_folder_name)-<(android_host_arch)/bin*÷%:y:
StringLiteral
internalRolevalues"x86_64*◊':y6
StringLiteral
internalRolevalues"21*ÿ+:y;
StringLiteral
internalRolevalues"default*Ÿ:y*’&:t*’:sì
List
ctxLoad
internalRoleeltsC
StringLiteral
internalRoleelts"target_arch=="arm"*€:yò
Dict
internalRoleeltsD
StringLiteral
internalRolekeys"android_toolchain%*‹:y~F
StringLiteral
internalRolekeys"android_target_arch%*›:y~J
StringLiteral
internalRolekeys"android_target_platform%*ﬁ:y~>
StringLiteral
internalRolekeys"arm_version%*ﬂ:y~†
StringLiteral
internalRolevalues"l<(android_ndk_root)/toolchains/arm-linux-androideabi-4.9/prebuilt/<(os_folder_name)-<(android_host_arch)/bin*‹%:y7
StringLiteral
internalRolevalues"arm*›':y6
StringLiteral
internalRolevalues"16*ﬁ+:yB

NumLiteral
NumTypeint
internalRolevalues"7*ﬂ:v*€$:t*€:sí
List
ctxLoad
internalRoleeltsG
StringLiteral
internalRoleelts"target_arch == "arm64"*·:yì
Dict
internalRoleeltsD
StringLiteral
internalRolekeys"android_toolchain%*‚:y~F
StringLiteral
internalRolekeys"android_target_arch%*„:y~J
StringLiteral
internalRolekeys"android_target_platform%*‰:y~>
StringLiteral
internalRolekeys"arm_version%*Â:y~†
StringLiteral
internalRolevalues"l<(android_ndk_root)/toolchains/aarch64-linux-android-4.9/prebuilt/<(os_folder_name)-<(android_host_arch)/bin*‚%:y9
StringLiteral
internalRolevalues"arm64*„':y6
StringLiteral
internalRolevalues"21*‰+:y;
StringLiteral
internalRolevalues"default*Â:y*·(:t*·:së
List
ctxLoad
internalRoleeltsH
StringLiteral
internalRoleelts"target_arch == "mipsel"*Á:yë
Dict
internalRoleeltsD
StringLiteral
internalRolekeys"android_toolchain%*Ë:y~F
StringLiteral
internalRolekeys"android_target_arch%*È:y~J
StringLiteral
internalRolekeys"android_target_platform%*Í:y~>
StringLiteral
internalRolekeys"arm_version%*Î:y~ü
StringLiteral
internalRolevalues"k<(android_ndk_root)/toolchains/mipsel-linux-android-4.9/prebuilt/<(os_folder_name)-<(android_host_arch)/bin*Ë%:y8
StringLiteral
internalRolevalues"mips*È':y6
StringLiteral
internalRolevalues"16*Í+:y;
StringLiteral
internalRolevalues"default*Î:y*Á):t*Á:só
List
ctxLoad
internalRoleeltsJ
StringLiteral
internalRoleelts"target_arch == "mips64el"*Ì:yï
Dict
internalRoleeltsD
StringLiteral
internalRolekeys"android_toolchain%*Ó:y~F
StringLiteral
internalRolekeys"android_target_arch%*Ô:y~J
StringLiteral
internalRolekeys"android_target_platform%*:y~>
StringLiteral
internalRolekeys"arm_version%*Ò:y~°
StringLiteral
internalRolevalues"m<(android_ndk_root)/toolchains/mips64el-linux-android-4.9/prebuilt/<(os_folder_name)-<(android_host_arch)/bin*Ó%:y:
StringLiteral
internalRolevalues"mips64*Ô':y6
StringLiteral
internalRolevalues"21*+:y;
StringLiteral
internalRolevalues"default*Ò:y*Ì+:t*Ì:s*Œ:s*º:tJ
StringLiteral
internalRolevalues"<(android_ndk_version)*˜!:yJ
StringLiteral
internalRolevalues"<(android_target_arch)*¯!:yN
StringLiteral
internalRolevalues"<(android_target_platform)*˘%:yH
StringLiteral
internalRolevalues"<(android_toolchain)*˙:yB
StringLiteral
internalRolevalues"<(arm_version)*˚:y>
StringLiteral
internalRolevalues"
<(host_os)*¸:yB

NumLiteral
NumTypeint
internalRolevalues"1*ˇ#:v≠
List
internalRolevalues
ctxLoadÙ
List
ctxLoad
internalRoleeltsE
StringLiteral
internalRoleelts"android_ndk_root==""*Ç:y€
Dict
internalRoleelts;
StringLiteral
internalRolekeys"	variables*É:y~<
StringLiteral
internalRolekeys"
conditions*á:y~H
StringLiteral
internalRolekeys"android_libcpp_include*é:y~L
StringLiteral
internalRolekeys"android_libcpp_abi_include*è:y~E
StringLiteral
internalRolekeys"android_libcpp_libs*ê:y~I
StringLiteral
internalRolekeys"android_support_include*ë:y~A
StringLiteral
internalRolekeys"android_sysroot*í:y~Ÿ
Dict
internalRolevaluesA
StringLiteral
internalRolekeys"android_sysroot*Ñ:y~=
StringLiteral
internalRolekeys"android_stl*Ö:y~Q
StringLiteral
internalRolevalues"<(android_toolchain)/sysroot/*Ñ":yY
StringLiteral
internalRolevalues"%<(android_toolchain)/sources/cxx-stl/*Ö:y*É:t£
List
internalRolevalues
ctxLoadÍ
List
ctxLoad
internalRoleeltsC
StringLiteral
internalRoleelts"target_arch=="x64"*à:y∑
Dict
internalRoleelts=
StringLiteral
internalRolekeys"android_lib*â:y~P
StringLiteral
internalRolevalues"<(android_sysroot)/usr/lib64*â :y*à&:tµ
Dict
internalRoleelts=
StringLiteral
internalRolekeys"android_lib*ã:y~N
StringLiteral
internalRolevalues"<(android_sysroot)/usr/lib*ã :y*ä:t*à:s*á:s]
StringLiteral
internalRolevalues")<(android_stl)/llvm-libc++/libcxx/include*é':yc
StringLiteral
internalRolevalues"/<(android_stl)/llvm-libc++abi/libcxxabi/include*è+:yS
StringLiteral
internalRolevalues"<(android_stl)/llvm-libc++/libs*ê$:yh
StringLiteral
internalRolevalues"4<(android_toolchain)/sources/android/support/include*ë(:yF
StringLiteral
internalRolevalues"<(android_sysroot)*í :y*Ç$:tô
Dict
internalRoleelts;
StringLiteral
internalRolekeys"	variables*î:y~<
StringLiteral
internalRolekeys"
conditions*ò:y~H
StringLiteral
internalRolekeys"android_libcpp_include*ü:y~L
StringLiteral
internalRolekeys"android_libcpp_abi_include*†:y~E
StringLiteral
internalRolekeys"android_libcpp_libs*°:y~I
StringLiteral
internalRolekeys"android_support_include*¢:y~A
StringLiteral
internalRolekeys"android_sysroot*£:y~ò
Dict
internalRolevaluesA
StringLiteral
internalRolekeys"android_sysroot*ï:y~=
StringLiteral
internalRolekeys"android_stl*ñ:y~ê
StringLiteral
internalRolevalues"\<(android_ndk_root)/platforms/android-<(android_target_platform)/arch-<(android_target_arch)*ï":yX
StringLiteral
internalRolevalues"$<(android_ndk_root)/sources/cxx-stl/*ñ:y*î:t£
List
internalRolevalues
ctxLoadÍ
List
ctxLoad
internalRoleeltsC
StringLiteral
internalRoleelts"target_arch=="x64"*ô:y∑
Dict
internalRoleelts=
StringLiteral
internalRolekeys"android_lib*ö:y~P
StringLiteral
internalRolevalues"<(android_sysroot)/usr/lib64*ö :y*ô&:tµ
Dict
internalRoleelts=
StringLiteral
internalRolekeys"android_lib*ú:y~N
StringLiteral
internalRolevalues"<(android_sysroot)/usr/lib*ú :y*õ:t*ô:s*ò:s]
StringLiteral
internalRolevalues")<(android_stl)/llvm-libc++/libcxx/include*ü':yc
StringLiteral
internalRolevalues"/<(android_stl)/llvm-libc++abi/libcxxabi/include*†+:yS
StringLiteral
internalRolevalues"<(android_stl)/llvm-libc++/libs*°$:yg
StringLiteral
internalRolevalues"3<(android_ndk_root)/sources/android/support/include*¢(:yF
StringLiteral
internalRolevalues"<(android_sysroot)*£ :y*ì:t*Ç:s*Å:s>
StringLiteral
internalRolevalues"
c++_static*¶#:y*∫:t*∫:sÎ	
List
ctxLoad
internalRoleelts>
StringLiteral
internalRoleelts"host_clang==1*®:yœ
Dict
internalRoleelts<
StringLiteral
internalRolekeys"
conditions*©	:y~9
StringLiteral
internalRolekeys"host_cc*Ø	:y~:
StringLiteral
internalRolekeys"host_cxx*∞	:y~◊
List
ctxLoad
internalRolevaluesû
List
internalRoleelts
ctxLoad>
StringLiteral
internalRoleelts"OS=="android"*™:y®
Dict
internalRoleelts9
StringLiteral
internalRolekeys"host_ld*´:y~=
StringLiteral
internalRolekeys"host_ranlib*¨:y~@
StringLiteral
internalRolevalues"<!(which ld)*´:yD
StringLiteral
internalRolevalues"<!(which ranlib)*¨:y*™:t*™:s*©:sJ
StringLiteral
internalRolevalues"<(clang_dir)/bin/clang*Ø:yL
StringLiteral
internalRolevalues"<(clang_dir)/bin/clang++*∞:y*®:t£
Dict
internalRoleelts9
StringLiteral
internalRolekeys"host_cc*≤	:y~:
StringLiteral
internalRolekeys"host_cxx*≥	:y~A
StringLiteral
internalRolevalues"<!(which gcc)*≤:yA
StringLiteral
internalRolevalues"<!(which g++)*≥:y*±
:t*®:s*˘:s;
StringLiteral
internalRolevalues"default*∑:y9
StringLiteral
internalRolevalues"vfpv3*∏:y;
StringLiteral
internalRolevalues"default*π:y;
StringLiteral
internalRolevalues"default*∫:y6
StringLiteral
internalRolevalues"r2*Ω:y8
StringLiteral
internalRolevalues"fp32*ƒ:y*":t‚I
Dict
internalRolevalues;
StringLiteral
internalRolekeys"	variables*«:y~:
StringLiteral
internalRolekeys"includes*÷:y~G
StringLiteral
internalRolekeys"default_configuration*◊:y~@
StringLiteral
internalRolekeys"configurations*ÿ:y~<
StringLiteral
internalRolekeys"
conditions*˘:y~C
StringLiteral
internalRolekeys"target_conditions*ú:y~ñ
Dict
internalRolevalues:
StringLiteral
internalRolekeys"v8_code%*»:y~E
StringLiteral
internalRolekeys"clang_warning_flags*…:y~<
StringLiteral
internalRolekeys"
conditions*–:y~>
StringLiteral
internalRolevalues"
<(v8_code)*»:yï
List
ctxLoad
internalRolevalues?
StringLiteral
internalRoleelts"-Wsign-compare* 	:yL
StringLiteral
internalRoleelts"-Wno-undefined-var-template*Ã	:yN
StringLiteral
internalRoleelts"-Wno-nonportable-include-path*Œ	:y*…:s—
List
ctxLoad
internalRolevaluesò
List
ctxLoad
internalRoleelts>
StringLiteral
internalRoleelts"OS=="android"*—
:y¢
Dict
internalRoleelts:
StringLiteral
internalRolekeys"host_os%*“:y~>
StringLiteral
internalRolevalues"
<(host_os)*“:y*—:t*—	:s*–:s*«:tÖ
List
internalRolevalues
ctxLoadM
StringLiteral
internalRoleelts"set_clang_warning_flags.gypi*÷:y*÷:s9
StringLiteral
internalRolevalues"Debug*◊:yö
Dict
internalRolevaluesA
StringLiteral
internalRolekeys"DebugBaseCommon*Ÿ:y~:
StringLiteral
internalRolekeys"Optdebug*‚:y~7
StringLiteral
internalRolekeys"Debug*Â:y~9
StringLiteral
internalRolekeys"Release*Ë:y~<
StringLiteral
internalRolekeys"
conditions*Î:y~⁄
Dict
internalRolevalues<
StringLiteral
internalRolekeys"
conditions*⁄	:y~
List
ctxLoad
internalRolevalues∑
List
ctxLoad
internalRoleelts:
StringLiteral
internalRoleelts"	OS=="aix"*€:yæ
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*‹:y~€
List
ctxLoad
internalRolevalues3
StringLiteral
internalRoleelts"-g*‹:y4
StringLiteral
internalRoleelts"-Og*‹:y8
StringLiteral
internalRoleelts"-gxcoff*‹&:y*‹:s*€:tÑ
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*ﬁ:y~°
List
internalRolevalues
ctxLoad3
StringLiteral
internalRoleelts"-g*ﬁ:y4
StringLiteral
internalRoleelts"-O0*ﬁ:y*ﬁ:s*›:t*€:s*⁄:s*Ÿ:t°
Dict
internalRolevalues>
StringLiteral
internalRolekeys"inherit_from*„	:y~µ
List
ctxLoad
internalRolevalues@
StringLiteral
internalRoleelts"DebugBaseCommon*„:y;
StringLiteral
internalRoleelts"
DebugBase1*„.:y*„:s*‚:t)
Dict
internalRolevalues*Â:tË
Dict
internalRolevalues9
StringLiteral
internalRolekeys"cflags+*È	:y~Å
List
ctxLoad
internalRolevaluesI
StringLiteral
internalRoleelts"<@(release_extra_cflags)*È:y*È:s*Ë:t¶
List
ctxLoad
internalRolevaluesÌ
List
ctxLoad
internalRoleelts:
StringLiteral
internalRoleelts"	OS=="win"*Ï
:y˚
Dict
internalRoleelts>
StringLiteral
internalRolekeys"Optdebug_x64*Ì:y~;
StringLiteral
internalRolekeys"	Debug_x64*:y~=
StringLiteral
internalRolekeys"Release_x64*Û:y~‹
Dict
internalRolevalues>
StringLiteral
internalRolekeys"inherit_from*Ó:y~q
List
internalRolevalues
ctxLoad9
StringLiteral
internalRoleelts"Optdebug*Ó:y*Ó:s*Ì:tŸ
Dict
internalRolevalues>
StringLiteral
internalRolekeys"inherit_from*Ò:y~n
List
internalRolevalues
ctxLoad6
StringLiteral
internalRoleelts"Debug*Ò:y*Ò:s*:t€
Dict
internalRolevalues>
StringLiteral
internalRolekeys"inherit_from*Ù:y~p
List
internalRolevalues
ctxLoad8
StringLiteral
internalRoleelts"Release*Ù:y*Ù:s*Û:t*Ï:t*Ï	:s*Î:s*ÿ:tÌ
List
ctxLoad
internalRolevaluesœ
List
ctxLoad
internalRoleelts9
StringLiteral
internalRoleelts"clang==0*˙:yﬁ
Dict
internalRoleelts9
StringLiteral
internalRolekeys"cflags+*˚	:y~{
List
ctxLoad
internalRolevaluesC
StringLiteral
internalRoleelts"-Wno-uninitialized*¸:y*˚:s*˙:t*˙:s§
List
ctxLoad
internalRoleeltsJ
StringLiteral
internalRoleelts"clang==1 or host_clang==1*ˇ:y¢
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*Ö	:y~æ
List
ctxLoad
internalRolevaluesÖ
StringLiteral
internalRoleelts"TCR_CLANG_REVISION=<!(python <(DEPTH)/tools/clang/scripts/update.py --print-revision)*Ö:y*Ö:s*ˇ%:t*ˇ:s™
List
ctxLoad
internalRoleeltsQ
StringLiteral
internalRoleelts" clang==1 and target_arch=="ia32"*á:y°
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*à	:y~æ
List
ctxLoad
internalRolevaluesE
StringLiteral
internalRoleelts"-mstack-alignment=16*à:y?
StringLiteral
internalRoleelts"-mstackrealign*à,:y*à:s*á,:t*á:sé
List
ctxLoad
internalRoleelts=
StringLiteral
internalRoleelts"fastbuild!=0*ä:yô
Dict
internalRoleelts<
StringLiteral
internalRolekeys"
conditions*ã	:y~≤
List
internalRolevalues
ctxLoad˘
List
ctxLoad
internalRoleeltsK
StringLiteral
internalRoleelts"OS=="win" and fastbuild==1*å:yˆ
Dict
internalRoleelts?
StringLiteral
internalRolekeys"msvs_settings*ç:y~å
Dict
internalRolevalues>
StringLiteral
internalRolekeys"VCLinkerTool*é:y~B
StringLiteral
internalRolekeys"VCCLCompilerTool*ì:y~Ø
Dict
internalRolevaluesJ
StringLiteral
internalRolekeys"GenerateDebugInformation*ë:y~8
StringLiteral
internalRolevalues"true*ë-:y*é:t™
Dict
internalRolevaluesH
StringLiteral
internalRolekeys"DebugInformationFormat*ï:y~5
StringLiteral
internalRolevalues"0*ï+:y*ì#:t*ç:t*å*:t*å:s*ã:s*ä:t*ä:s*˘:s∆
List
ctxLoad
internalRolevaluesç
List
ctxLoad
internalRoleelts=
StringLiteral
internalRoleelts"v8_code == 0*ù:yò
Dict
internalRoleelts:
StringLiteral
internalRolekeys"defines!*û	:y~<
StringLiteral
internalRolekeys"
conditions*°	:y~n
List
ctxLoad
internalRolevalues6
StringLiteral
internalRoleelts"DEBUG*ü:y*û:sÖ
List
internalRolevalues
ctxLoadÓ	
List
ctxLoad
internalRoleeltsN
StringLiteral
internalRoleelts"os_posix == 1 and OS != "mac"*¢:yË
Dict
internalRoleelts9
StringLiteral
internalRolekeys"cflags!*•:y~9
StringLiteral
internalRolekeys"cflags+*¨:y~<
StringLiteral
internalRolekeys"
cflags_cc!*Ω:y~„
List
ctxLoad
internalRolevalues:
StringLiteral
internalRoleelts"	-pedantic*¶:y6
StringLiteral
internalRoleelts"-Wall*ß:y8
StringLiteral
internalRoleelts"-Werror*®:y8
StringLiteral
internalRoleelts"-Wextra*©:yC
StringLiteral
internalRoleelts"-Wshorten-64-to-32*™:y*•:s®
List
ctxLoad
internalRolevaluesI
StringLiteral
internalRoleelts"-Wno-deprecated-register*Ø:yM
StringLiteral
internalRoleelts"-Wno-deprecated-declarations*±:yL
StringLiteral
internalRoleelts"-Wno-logical-op-parentheses*≥:yJ
StringLiteral
internalRoleelts"-Wno-tautological-compare*µ:y<
StringLiteral
internalRoleelts"-Wno-switch*ª:y*¨:s{
List
internalRolevalues
ctxLoadC
StringLiteral
internalRoleelts"-Wnon-virtual-dtor*æ:y*Ω:s*¢-:t*¢:sÁ
List
ctxLoad
internalRoleelts<
StringLiteral
internalRoleelts"OS == "mac"*¡:yÛ
Dict
internalRoleelts@
StringLiteral
internalRolekeys"xcode_settings*¬:y~à
Dict
internalRolevalues§
StringLiteral
internalRolekeysT
SameLineNoops
col_end64
internalRolenoops_sameline"	# -Werror*√7:ä"GCC_TREAT_WARNINGS_AS_ERRORS*√:y~6
StringLiteral
internalRolevalues"NO*√/:y*¬:t*¡:t*¡:sÒ
List
ctxLoad
internalRoleelts<
StringLiteral
internalRoleelts"OS == "win"*∆:y˝
Dict
internalRoleelts?
StringLiteral
internalRolekeys"msvs_settings*«:y~ì
Dict
internalRolevaluesB
StringLiteral
internalRolekeys"VCCLCompilerTool*»:y~£
Dict
internalRolevalues=
StringLiteral
internalRolekeys"WarnAsError*…:y~9
StringLiteral
internalRolevalues"false*… :y*»#:t*«:t*∆:t*∆:s*°:s*ù:t*ù:s*ú:s*∆:t≈¨
List
ctxLoad
internalRolevaluesÖO
List
ctxLoad
internalRoleeltsJ
StringLiteral
internalRoleelts"os_posix==1 and OS!="mac"*“:yÉN
Dict
internalRoleeltsA
StringLiteral
internalRolekeys"target_defaults*”:y~óM
Dict
internalRolevalues<
StringLiteral
internalRolekeys"
conditions*‘	:y~≠L
List
ctxLoad
internalRolevalues“	
List
ctxLoad
internalRoleeltsï
StringLiteral
internalRoleelts™
PreviousNoops

end_lineno598
internalRolenoops_previousn
NoopLine
internalRolelines"@          # Common options for AddressSanitizer, LeakSanitizer,
*’:äk
NoopLine
internalRolelines"=          # ThreadSanitizer, MemorySanitizer and CFI builds.
*÷:ä*’:å"7asan==1 or lsan==1 or tsan==1 or msan==1 or cfi_vptr==1*◊:yÑ
Dict
internalRoleeltsC
StringLiteral
internalRolekeys"target_conditions*ÿ:y~ñ
List
ctxLoad
internalRolevalues›
List
internalRoleelts
ctxLoadC
StringLiteral
internalRoleelts"_toolset=="target"*Ÿ:y‚
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*⁄:y~9
StringLiteral
internalRolekeys"cflags!*ﬁ:y~≈
List
ctxLoad
internalRolevaluesH
StringLiteral
internalRoleelts"-fno-omit-frame-pointer*€:yC
StringLiteral
internalRoleelts"-gline-tables-only*‹:y*⁄:s}
List
ctxLoad
internalRolevaluesE
StringLiteral
internalRoleelts"-fomit-frame-pointer*ﬂ:y*ﬁ:s*Ÿ&:t*Ÿ:s*ÿ":s*◊G:t*◊:sﬁ
List
ctxLoad
internalRoleelts8
StringLiteral
internalRoleelts"asan==1*‰:yÓ
Dict
internalRoleeltsC
StringLiteral
internalRolekeys"target_conditions*Â:y~Ä
List
ctxLoad
internalRolevalues«
List
ctxLoad
internalRoleeltsC
StringLiteral
internalRoleelts"_toolset=="target"*Ê:yÃ
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*Á:y~9
StringLiteral
internalRolekeys"ldflags*Í:y~9
StringLiteral
internalRolekeys"defines*Ì:y~{
List
ctxLoad
internalRolevaluesC
StringLiteral
internalRoleelts"-fsanitize=address*Ë:y*Á:s{
List
ctxLoad
internalRolevaluesC
StringLiteral
internalRoleelts"-fsanitize=address*Î:y*Í:sz
List
ctxLoad
internalRolevaluesB
StringLiteral
internalRoleelts"ADDRESS_SANITIZER*Ó:y*Ì:s*Ê&:t*Ê:s*Â":s*‰:t*‰:s’
List
ctxLoad
internalRoleelts8
StringLiteral
internalRoleelts"lsan==1*Û:yÂ
Dict
internalRoleeltsC
StringLiteral
internalRolekeys"target_conditions*Ù:y~˜
List
ctxLoad
internalRolevaluesæ
List
ctxLoad
internalRoleeltsC
StringLiteral
internalRoleelts"_toolset=="target"*ı:y√
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*ˆ:y~9
StringLiteral
internalRolekeys"ldflags*˘:y~9
StringLiteral
internalRolekeys"defines*¸:y~x
List
ctxLoad
internalRolevalues@
StringLiteral
internalRoleelts"-fsanitize=leak*˜:y*ˆ:sx
List
ctxLoad
internalRolevalues@
StringLiteral
internalRoleelts"-fsanitize=leak*˙:y*˘:sw
List
ctxLoad
internalRolevalues?
StringLiteral
internalRoleelts"LEAK_SANITIZER*˝:y*¸:s*ı&:t*ı:s*Ù":s*Û:t*Û:s€
List
ctxLoad
internalRoleelts8
StringLiteral
internalRoleelts"tsan==1*Ç:yÎ
Dict
internalRoleeltsC
StringLiteral
internalRolekeys"target_conditions*É:y~˝
List
ctxLoad
internalRolevaluesƒ
List
ctxLoad
internalRoleeltsC
StringLiteral
internalRoleelts"_toolset=="target"*Ñ:y…
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*Ö:y~9
StringLiteral
internalRolekeys"ldflags*à:y~9
StringLiteral
internalRolekeys"defines*ã:y~z
List
internalRolevalues
ctxLoadB
StringLiteral
internalRoleelts"-fsanitize=thread*Ü:y*Ö:sz
List
ctxLoad
internalRolevaluesB
StringLiteral
internalRoleelts"-fsanitize=thread*â:y*à:sy
List
ctxLoad
internalRolevaluesA
StringLiteral
internalRoleelts"THREAD_SANITIZER*å:y*ã:s*Ñ&:t*Ñ:s*É":s*Ç:t*Ç:s¥	
List
internalRoleelts
ctxLoad8
StringLiteral
internalRoleelts"msan==1*ë:yƒ
Dict
internalRoleeltsC
StringLiteral
internalRolekeys"target_conditions*í:y~÷
List
ctxLoad
internalRolevaluesù
List
internalRoleelts
ctxLoadC
StringLiteral
internalRoleelts"_toolset=="target"*ì:y¢
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*î:y~9
StringLiteral
internalRolekeys"ldflags*ô:y~9
StringLiteral
internalRolekeys"defines*ù:y~ö
List
ctxLoad
internalRolevaluesB
StringLiteral
internalRoleelts"-fsanitize=memory*ï:yf
StringLiteral
internalRoleelts"5-fsanitize-memory-track-origins=<(msan_track_origins)*ñ:y6
StringLiteral
internalRoleelts"-fPIC*ó:y*î:s±
List
internalRolevalues
ctxLoadB
StringLiteral
internalRoleelts"-fsanitize=memory*ö:y5
StringLiteral
internalRoleelts"-pie*õ:y*ô:sy
List
internalRolevalues
ctxLoadA
StringLiteral
internalRoleelts"MEMORY_SANITIZER*û:y*ù:s*ì&:t*ì:s*í":s*ë:t*ë:s»
List
ctxLoad
internalRoleeltsW
StringLiteral
internalRoleelts"&use_prebuilt_instrumented_libraries==1*£:yπ
Dict
internalRoleelts>
StringLiteral
internalRolekeys"dependencies*§:y~–
List
ctxLoad
internalRolevaluesó
StringLiteral
internalRoleelts"f<(DEPTH)/third_party/instrumented_libraries/instrumented_libraries.gyp:prebuilt_instrumented_libraries*•:y*§:s*£6:t*£:sç
List
internalRoleelts
ctxLoadE
StringLiteral
internalRoleelts"use_custom_libcxx==1*®:yê
Dict
internalRoleelts>
StringLiteral
internalRolekeys"dependencies*©:y~ß
List
ctxLoad
internalRolevalueso
StringLiteral
internalRoleelts"><(DEPTH)/buildtools/third_party/libc++/libc++.gyp:libcxx_proxy*™:y*©:s*®$:t*®:sÕ
List
ctxLoad
internalRoleeltsF
StringLiteral
internalRoleelts"sanitizer_coverage!=0*≠:yœ
Dict
internalRoleeltsC
StringLiteral
internalRolekeys"target_conditions*Æ:y~·
List
ctxLoad
internalRolevalues®
List
ctxLoad
internalRoleeltsC
StringLiteral
internalRoleelts"_toolset=="target"*Ø:y≠
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*∞:y~9
StringLiteral
internalRolekeys"defines*≥:y~í
List
ctxLoad
internalRolevaluesZ
StringLiteral
internalRoleelts")-fsanitize-coverage=<(sanitizer_coverage)*±:y*∞:s{
List
internalRolevalues
ctxLoadC
StringLiteral
internalRoleelts"SANITIZER_COVERAGE*¥:y*≥:s*Ø&:t*Ø:s*Æ":s*≠%:t*≠:s˝
List
ctxLoad
internalRoleeltsl
StringLiteral
internalRoleelts";linux_use_bundled_gold==1 and not (clang==0 and use_lto==1)*π:yŸ
Dict
internalRoleeltsÒ
StringLiteral
internalRolekeysµ
PreviousNoops

end_lineno705
internalRolenoops_previous~
NoopLine
internalRolelines"P            # Put our binutils, which contains gold in the search path. We pass
*∫:ä~
NoopLine
internalRolelines"P            # the path to gold to the compiler. gyp leaves unspecified what the
*ª:ä}
NoopLine
internalRolelines"O            # cwd is when running the compiler, so the normal gyp path-munging
*º:äe
NoopLine
internalRolelines"7            # fails us. This hack gets the right path.
*Ω:ä<
NoopLine
internalRolelines"            #
*æ:ä|
NoopLine
internalRolelines"N            # Disabled when using GCC LTO because GCC also uses the -B search
*ø:äz
NoopLine
internalRolelines"L            # path at link time to find "as", and our bundled "as" can only
*¿:äH
NoopLine
internalRolelines"            # target x86.
*¡:ä*∫:å"ldflags*¬:y~º
List
ctxLoad
internalRolevaluesÉ
StringLiteral
internalRoleeltsó
PreviousNoops

end_lineno708
internalRolenoops_previous}
NoopLine
internalRolelines"O              # Note, Chromium allows ia32 host arch as well, we limit this to
*√:äI
NoopLine
internalRolelines"              # x64 in v8.
*ƒ:ä*√:å"8-B<(base_dir)/third_party/binutils/Linux_x64/Release/bin*≈:y*¬:s*πK:t*π:s¶
List
internalRoleelts
ctxLoadI
StringLiteral
internalRoleelts"sysroot!="" and clang==1*»:y•
Dict
internalRoleeltsC
StringLiteral
internalRolekeys"target_conditions*…:y~∑
List
ctxLoad
internalRolevalues˛
List
internalRoleelts
ctxLoadC
StringLiteral
internalRoleelts"_toolset=="target"* :yÉ
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*À:y~9
StringLiteral
internalRolekeys"ldflags*Œ:y~}
List
ctxLoad
internalRolevaluesE
StringLiteral
internalRoleelts"--sysroot=<(sysroot)*Ã:y*À:sÊ
List
ctxLoad
internalRolevaluesE
StringLiteral
internalRoleelts"--sysroot=<(sysroot)*œ:yg
StringLiteral
internalRoleelts"6<!(<(DEPTH)/build/linux/sysroot_ld_path.sh <(sysroot))*–:y*Œ:s* &:t* :s*…":s*»(:t*»:s*‘:s*”:t*“#:t*“:s∂
List
ctxLoad
internalRoleelts:
StringLiteral
internalRoleelts"	OS=="mac"*◊:yƒ
Dict
internalRoleeltsA
StringLiteral
internalRolekeys"target_defaults*ÿ:y~ÿ
Dict
internalRolevalues<
StringLiteral
internalRolekeys"
conditions*Ÿ:y~Ó
List
internalRolevalues
ctxLoadÂ
List
ctxLoad
internalRoleelts8
StringLiteral
internalRoleelts"asan==1*⁄:yı
Dict
internalRoleelts@
StringLiteral
internalRolekeys"xcode_settings*€:y~ã
StringLiteral
internalRolekeys 
PreviousNoops
internalRolenoops_previous

end_lineno732{
NoopLine
internalRolelines"M              # FIXME(machenbach): This is outdated compared to common.gypi.
*‹:ä*‹:å"dependencies*Í:y~C
StringLiteral
internalRolekeys"target_conditions*Ì:y~ä
Dict
internalRolevalues?
StringLiteral
internalRolekeys"OTHER_CFLAGS+*›:y~?
StringLiteral
internalRolekeys"OTHER_CFLAGS!*„:y~9
StringLiteral
internalRolekeys"defines*Ê:y~¶
List
internalRolevalues
ctxLoadH
StringLiteral
internalRoleelts"-fno-omit-frame-pointer*ﬁ:yC
StringLiteral
internalRoleelts"-gline-tables-only*ﬂ:yC
StringLiteral
internalRoleelts"-fsanitize=address*‡:yô
StringLiteral
internalRoleeltsd
SameLineNoops
internalRolenoops_sameline
col_end48"# http://crbug.com/162783*·:ä"-w*·:y*› :s}
List
ctxLoad
internalRolevaluesE
StringLiteral
internalRoleelts"-fomit-frame-pointer*‰:y*„ :sz
List
internalRolevalues
ctxLoadB
StringLiteral
internalRoleelts"ADDRESS_SANITIZER*Á:y*Ê:s*€:tú
List
ctxLoad
internalRolevaluesd
StringLiteral
internalRoleelts"3<(DEPTH)/gypfiles/mac/asan.gyp:asan_dynamic_runtime*Î:y*Í:sã
List
ctxLoad
internalRolevalues“
List
ctxLoad
internalRoleeltsH
StringLiteral
internalRoleelts"_type!="static_library"*Ó:y“
Dict
internalRoleelts@
StringLiteral
internalRolekeys"xcode_settings*Ô:y~Á
Dict
internalRolevalues?
StringLiteral
internalRolekeys"OTHER_LDFLAGS*Ô$:y~{
List
ctxLoad
internalRolevaluesC
StringLiteral
internalRoleelts"-fsanitize=address*Ô6:y*Ô5:s*Ô#:t*Ó+:t*Ó:s*Ì":s*⁄:t*⁄:sÕ
List
ctxLoad
internalRoleeltsF
StringLiteral
internalRoleelts"sanitizer_coverage!=0*Û:yœ
Dict
internalRoleeltsC
StringLiteral
internalRolekeys"target_conditions*Ù:y~·
List
ctxLoad
internalRolevalues®
List
ctxLoad
internalRoleeltsC
StringLiteral
internalRoleelts"_toolset=="target"*ı:y≠
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*ˆ:y~9
StringLiteral
internalRolekeys"defines*˘:y~í
List
internalRolevalues
ctxLoadZ
StringLiteral
internalRoleelts")-fsanitize-coverage=<(sanitizer_coverage)*˜:y*ˆ:s{
List
ctxLoad
internalRolevaluesC
StringLiteral
internalRoleelts"SANITIZER_COVERAGE*˙:y*˘:s*ı&:t*ı:s*Ù":s*Û%:t*Û:s*Ÿ:s*ÿ:t*◊:t*◊:sâ%
List
ctxLoad
internalRoleeltsë
StringLiteral
internalRoleelts"bOS=="linux" or OS=="freebsd" or OS=="openbsd" or OS=="solaris"        or OS=="netbsd" or OS=="aix"*É:yø#
Dict
internalRoleeltsA
StringLiteral
internalRolekeys"target_defaults*Ñ:y~”"
Dict
internalRolevalues8
StringLiteral
internalRolekeys"cflags*Ö	:y~;
StringLiteral
internalRolekeys"	cflags_cc*é	:y~9
StringLiteral
internalRolekeys"ldflags*î	:y~<
StringLiteral
internalRolekeys"
conditions*ï	:y~ë
List
ctxLoad
internalRolevalues6
StringLiteral
internalRoleelts"-Wall*Ü:y:
StringLiteral
internalRoleelts"	<(werror)*á:yF
StringLiteral
internalRoleelts"-Wno-unused-parameter*à:y9
StringLiteral
internalRoleelts"-pthread*â:y:
StringLiteral
internalRoleelts"	-pedantic*ä:yM
StringLiteral
internalRoleelts"-Wmissing-field-initializers*ã:yW
StringLiteral
internalRoleelts"&-Wno-gnu-zero-variadic-macro-arguments*å:y*Ö:s∏
List
internalRolevalues
ctxLoadC
StringLiteral
internalRoleelts"-Wnon-virtual-dtor*è:y@
StringLiteral
internalRoleelts"-fno-exceptions*ê:y:
StringLiteral
internalRoleelts"	-fno-rtti*ë:y=
StringLiteral
internalRoleelts"-std=gnu++11*í:y*é:sq
List
internalRolevalues
ctxLoad9
StringLiteral
internalRoleelts"-pthread*î:y*î:sı
List
ctxLoad
internalRolevaluesÉ
List
ctxLoad
internalRoleelts◊
StringLiteral
internalRoleeltsõ
PreviousNoops

end_lineno792
internalRolenoops_previous~
NoopLine
internalRolelines"P          # Don't warn about TRACE_EVENT_* macros with zero arguments passed to
*ñ:ä~
NoopLine
internalRolelines"P          # ##__VA_ARGS__. C99 strict mode prohibits having zero variadic macro
*ó:äL
NoopLine
internalRolelines"          # arguments in gcc.
*ò:ä*ñ:å"clang==0*ô:yÛ
Dict
internalRoleelts9
StringLiteral
internalRolekeys"cflags!*ö:y~è
List
ctxLoad
internalRolevalues:
StringLiteral
internalRoleelts"	-pedantic*õ:yö
StringLiteral
internalRoleelts¿
PreviousNoops

end_lineno796
internalRolenoops_previousq
NoopLine
internalRolelines"C              # Don't warn about unrecognized command line option.
*ú:ä*ú:å"&-Wno-gnu-zero-variadic-macro-arguments*ù:y*ö:s*ô:t*ô:sÆ
List
ctxLoad
internalRoleeltsò
StringLiteral
internalRoleelts"iclang==1 and (v8_target_arch=="x64" or v8_target_arch=="arm64"             or v8_target_arch=="mips64el")*°:y›
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*¢:y~{
List
ctxLoad
internalRolevaluesC
StringLiteral
internalRoleelts"-Wshorten-64-to-32*¢:y*¢:s*°.:t*†:s·
List
ctxLoad
internalRoleeltsQ
StringLiteral
internalRoleelts" host_arch=="ppc64" and OS!="aix"*§:yÿ
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*•:y~v
List
ctxLoad
internalRolevalues>
StringLiteral
internalRoleelts"-mminimal-toc*•:y*•:s*§1:t*§:sˆ
List
ctxLoad
internalRoleelts`
StringLiteral
internalRoleelts"/visibility=="hidden" and v8_enable_backtrace==0*ß:yﬁ
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*®:y~|
List
ctxLoad
internalRolevaluesD
StringLiteral
internalRoleelts"-fvisibility=hidden*®:y*®:s*ß@:t*ß:s‘
List
ctxLoad
internalRoleeltsL
StringLiteral
internalRoleelts"component=="shared_library"*™:y–
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*´:y~n
List
ctxLoad
internalRolevalues6
StringLiteral
internalRoleelts"-fPIC*´:y*´:s*™,:t*™:s—
List
ctxLoad
internalRoleeltsI
StringLiteral
internalRoleelts"clang==0 and coverage==1*≠:y–
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*Æ:y~9
StringLiteral
internalRolekeys"ldflags*Ø:y~π
List
ctxLoad
internalRolevalues?
StringLiteral
internalRoleelts"-fprofile-arcs*Æ:y@
StringLiteral
internalRoleelts"-ftest-coverage*Æ+:y*Æ:sw
List
ctxLoad
internalRolevalues?
StringLiteral
internalRoleelts"-fprofile-arcs*Ø:y*Ø:s*≠):t*≠:s*ï:s*Ñ:t*É':t*Ç:sò
List
ctxLoad
internalRoleelts»
StringLiteral
internalRoleeltsã
PreviousNoops
internalRolenoops_previous

end_lineno821t
NoopLine
internalRolelines"F    # 'OS=="linux" or OS=="freebsd" or OS=="openbsd" or OS=="solaris"
*¥:äF
NoopLine
internalRolelines"    #  or OS=="netbsd"'
*µ:ä*¥:å"	OS=="qnx"*∂:yó
Dict
internalRoleeltsA
StringLiteral
internalRolekeys"target_defaults*∑:y~´
Dict
internalRolevalues8
StringLiteral
internalRolekeys"cflags*∏	:y~ä
StringLiteral
internalRolekeysÃ
PreviousNoops

end_lineno828
internalRolenoops_previous}
NoopLine
internalRolelines"O          # Don't warn about the "struct foo f = {0};" initialization pattern.
*º:ä*º:å"	cflags_cc*¿	:y~<
StringLiteral
internalRolekeys"
conditions*∆	:y~C
StringLiteral
internalRolekeys"target_conditions*Œ	:y~ù
List
ctxLoad
internalRolevalues6
StringLiteral
internalRoleelts"-Wall*π:y:
StringLiteral
internalRoleelts"	<(werror)*∫:yF
StringLiteral
internalRoleelts"-Wno-unused-parameter*ª:yP
StringLiteral
internalRoleelts"-Wno-missing-field-initializers*Ω:yW
StringLiteral
internalRoleelts"&-Wno-gnu-zero-variadic-macro-arguments*æ:y*∏:s∏
List
ctxLoad
internalRolevaluesC
StringLiteral
internalRoleelts"-Wnon-virtual-dtor*¡:y@
StringLiteral
internalRoleelts"-fno-exceptions*¬:y:
StringLiteral
internalRoleelts"	-fno-rtti*√:y=
StringLiteral
internalRoleelts"-std=gnu++11*ƒ:y*¿:sÎ
List
ctxLoad
internalRolevalues€
List
ctxLoad
internalRoleeltsE
StringLiteral
internalRoleelts"visibility=="hidden"*«:yﬁ
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*»:y~|
List
internalRolevalues
ctxLoadD
StringLiteral
internalRoleelts"-fvisibility=hidden*»:y*»:s*«%:t*«:s‘
List
internalRoleelts
ctxLoadL
StringLiteral
internalRoleelts"component=="shared_library"* :y–
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*À:y~n
List
ctxLoad
internalRolevalues6
StringLiteral
internalRoleelts"-fPIC*À:y*À:s* ,:t* :s*∆:sÏ

List
ctxLoad
internalRolevaluesª
List
ctxLoad
internalRoleeltsV
StringLiteral
internalRoleelts"%_toolset=="host" and host_os=="linux"*œ:y≠
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*–:y~9
StringLiteral
internalRolekeys"ldflags*—:y~;
StringLiteral
internalRolekeys"	libraries*“:y~q
List
ctxLoad
internalRolevalues9
StringLiteral
internalRoleelts"-pthread*–:y*–:sq
List
ctxLoad
internalRolevalues9
StringLiteral
internalRoleelts"-pthread*—:y*—:sm
List
ctxLoad
internalRolevalues5
StringLiteral
internalRoleelts"-lrt*“:y*“:s*œ6:t*œ:sı
List
ctxLoad
internalRoleeltsC
StringLiteral
internalRoleelts"_toolset=="target"*‘:y˙
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*’:y~;
StringLiteral
internalRolekeys"	libraries*÷:y~s
List
ctxLoad
internalRolevalues;
StringLiteral
internalRoleelts"
-Wno-psabi*’:y*’:sÂ
List
ctxLoad
internalRolevalues<
StringLiteral
internalRoleelts"-lbacktrace*÷:y9
StringLiteral
internalRoleelts"-lsocket*÷+:y4
StringLiteral
internalRoleelts"-lm*÷7:y*÷:s*‘#:t*‘:s*Œ:s*∑:t*∂:t*∂:s„†
List
ctxLoad
internalRoleelts:
StringLiteral
internalRoleelts"	OS=="win"*€:yü
Dict
internalRoleeltsA
StringLiteral
internalRolekeys"target_defaults*‹:y~Éü
Dict
internalRolevalues9
StringLiteral
internalRolekeys"defines*›	:y~<
StringLiteral
internalRolekeys"
conditions*‚	:y~B
StringLiteral
internalRolekeys"msvs_cygwin_dirs*È	:y~H
StringLiteral
internalRolekeys"msvs_disabled_warnings*Í	:y~Ï,
StringLiteral
internalRolekeys™,
PreviousNoops
internalRolenoops_previous

end_lineno949x
NoopLine
internalRolelines"J          # C4091: 'typedef ': ignored on left of 'X' when no variable is
*Î:äW
NoopLine
internalRolelines")          #                    declared.
*Ï:äm
NoopLine
internalRolelines"?          # This happens in a number of Windows headers. Dumb.
*Ì:ä/
NoopLine
internalRolelines"
*Ó:äd
NoopLine
internalRolelines"6          # C4127: conditional expression is constant
*Ô:ä}
NoopLine
internalRolelines"O          # This warning can in theory catch dead code and other problems, but
*:äy
NoopLine
internalRolelines"K          # triggers in far too many desirable cases where the conditional
*Ò:ä|
NoopLine
internalRolelines"N          # expression is either set by macros or corresponds some legitimate
*Ú:ä{
NoopLine
internalRolelines"M          # compile-time constant expression (due to constant template args,
*Û:ä
NoopLine
internalRolelines"Q          # conditionals comparing the sizes of different types, etc.).  Some of
*Ù:äm
NoopLine
internalRolelines"?          # these can be worked around, but it's not worth it.
*ı:ä/
NoopLine
internalRolelines"
*ˆ:äy
NoopLine
internalRolelines"K          # C4351: new behavior: elements of array 'array' will be default
*˜:äM
NoopLine
internalRolelines"          #        initialized
*¯:ä|
NoopLine
internalRolelines"N          # This is a silly "warning" that basically just alerts you that the
*˘:ä{
NoopLine
internalRolelines"M          # compiler is going to actually follow the language spec like it's
*˙:ä{
NoopLine
internalRolelines"M          # supposed to, instead of not following it like old buggy versions
*˚:än
NoopLine
internalRolelines"@          # did.  There's absolutely no reason to turn this on.
*¸:ä/
NoopLine
internalRolelines"
*˝:än
NoopLine
internalRolelines"@          # C4355: 'this': used in base member initializer list
*˛:äu
NoopLine
internalRolelines"G          # It's commonly useful to pass |this| to objects in a class'
*ˇ:ä}
NoopLine
internalRolelines"O          # initializer list.  While this warning can catch real bugs, most of
*Ä:ä~
NoopLine
internalRolelines"P          # the time the constructors in question don't attempt to call methods
*Å:ä}
NoopLine
internalRolelines"O          # on the passed-in pointer (until later), and annotating every legit
*Ç:äy
NoopLine
internalRolelines"K          # usage of this is simply more hassle than the warning is worth.
*É:ä/
NoopLine
internalRolelines"
*Ñ:äx
NoopLine
internalRolelines"J          # C4503: 'identifier': decorated name length exceeded, name was
*Ö:äK
NoopLine
internalRolelines"          #        truncated
*Ü:ä}
NoopLine
internalRolelines"O          # This only means that some long error messages might have truncated
*á:ä~
NoopLine
internalRolelines"P          # identifiers in the presence of lots of templates.  It has no effect
*à:äz
NoopLine
internalRolelines"L          # on program correctness and there's no real reason to waste time
*â:äP
NoopLine
internalRolelines""          # trying to prevent it.
*ä:ä/
NoopLine
internalRolelines"
*ã:äu
NoopLine
internalRolelines"G          # Warning C4589 says: "Constructor of abstract class ignores
*å:ä
NoopLine
internalRolelines"Q          # initializer for virtual base class." Disable this warning because it
*ç:äu
NoopLine
internalRolelines"G          # is flaky in VS 2015 RTM. It triggers on compiler generated
*é:ä[
NoopLine
internalRolelines"-          # copy-constructors in some cases.
*è:ä/
NoopLine
internalRolelines"
*ê:ä~
NoopLine
internalRolelines"P          # C4611: interaction between 'function' and C++ object destruction is
*ë:äN
NoopLine
internalRolelines"           #        non-portable
*í:ä|
NoopLine
internalRolelines"N          # This warning is unavoidable when using e.g. setjmp/longjmp.  MSDN
*ì:ä{
NoopLine
internalRolelines"M          # suggests using exceptions instead of setjmp/longjmp for C++, but
*î:ä
NoopLine
internalRolelines"Q          # Chromium code compiles without exception support.  We therefore have
*ï:ä{
NoopLine
internalRolelines"M          # to use setjmp/longjmp for e.g. JPEG decode error handling, which
*ñ:ä{
NoopLine
internalRolelines"M          # means we have to turn off this warning (and be careful about how
*ó:äe
NoopLine
internalRolelines"7          # object destruction happens in such cases).
*ò:ä/
NoopLine
internalRolelines"
*ô:äx
NoopLine
internalRolelines"J          # TODO(jochen): These warnings are level 4. They will be slowly
*ö:äT
NoopLine
internalRolelines"&          # removed as code is fixed.
*õ:ä/
NoopLine
internalRolelines"
*ú:ä{
NoopLine
internalRolelines"M          # These are variable shadowing warnings that are new in VS2015. We
*ù:ä~
NoopLine
internalRolelines"P          # should work through these at some point -- they may be removed from
*û:äZ
NoopLine
internalRolelines",          # the RTM release in the /W4 set.
*ü:ä*Î:å"msvs_settings*∏	:y~í
List
ctxLoad
internalRolevaluesI
StringLiteral
internalRoleelts"_CRT_SECURE_NO_DEPRECATE*ﬁ:yJ
StringLiteral
internalRoleelts"_CRT_NONSTDC_NO_DEPRECATE*ﬂ:yC
StringLiteral
internalRoleelts"_USING_V110_SDK71_*‡:y*›:sö
List
ctxLoad
internalRolevalues·
List
ctxLoad
internalRoleeltsL
StringLiteral
internalRoleelts"component=="static_library"*„:y›
Dict
internalRoleelts9
StringLiteral
internalRolekeys"defines*‰:y~z
List
ctxLoad
internalRolevaluesB
StringLiteral
internalRoleelts"_HAS_EXCEPTIONS=0*Â:y*‰:s*„+:t*„:s*‚:sÑ
List
ctxLoad
internalRolevaluesL
StringLiteral
internalRoleelts"<(DEPTH)/third_party/cygwin*È:y*È:s≥
List
ctxLoad
internalRolevaluesB

NumLiteral
internalRoleelts
NumTypeint"4091*Ó:vB

NumLiteral
internalRoleelts
NumTypeint"4127*˜:vB

NumLiteral
NumTypeint
internalRoleelts"4351*ˇ:vB

NumLiteral
NumTypeint
internalRoleelts"4355*á:vB

NumLiteral
internalRoleelts
NumTypeint"4503*è:vB

NumLiteral
NumTypeint
internalRoleelts"4589*ï:vB

NumLiteral
internalRoleelts
NumTypeint"4611*ü:vÆ

NumLiteral
NumTypeint
internalRoleeltsj
SameLineNoops
col_end47
internalRolenoops_sameline"# Unreferenced formal parameter*£:ä"4100*£:vø

NumLiteral
internalRoleelts
NumTypeint{
SameLineNoops
col_end64
internalRolenoops_sameline"0# Alignment of a member was sensitive to packing*§:ä"4121*§:vÀ

NumLiteral
NumTypeint
internalRoleeltsÜ
SameLineNoops
col_end75
internalRolenoops_sameline";# Conversion from 'type1' to 'type2', possible loss of data*•:ä"4244*•:vµ

NumLiteral
NumTypeint
internalRoleeltsq
SameLineNoops
col_end54
internalRolenoops_sameline"&# Truncation from 'type 1' to 'type 2'*¶:ä"4302*¶:v≠

NumLiteral
NumTypeint
internalRoleeltsi
SameLineNoops
col_end46
internalRolenoops_sameline"# Truncation of constant value*ß:ä"4309*ß:vπ

NumLiteral
NumTypeint
internalRoleeltsu
SameLineNoops
col_end58
internalRolenoops_sameline"*# Pointer truncation from 'type' to 'type'*®:ä"4311*®:v√

NumLiteral
NumTypeint
internalRoleelts
SameLineNoops
col_end68
internalRolenoops_sameline"4# Conversion from 'type1' to 'type2' of greater size*©:ä"4312*©:vΩ

NumLiteral
internalRoleelts
NumTypeinty
SameLineNoops
col_end62
internalRolenoops_sameline".# Unreferenced local function has been removed*™:ä"4505*™:vª

NumLiteral
NumTypeint
internalRoleeltsw
SameLineNoops
col_end60
internalRolenoops_sameline",# Default constructor could not be generated*´:ä"4510*´:vª

NumLiteral
internalRoleelts
NumTypeintw
SameLineNoops
col_end60
internalRolenoops_sameline",# Assignment operator could not be generated*¨:ä"4512*¨:v±

NumLiteral
NumTypeint
internalRoleeltsm
SameLineNoops
col_end50
internalRolenoops_sameline""# Object can never be instantiated*≠:ä"4610*≠:vß

NumLiteral
NumTypeint
internalRoleeltsc
SameLineNoops
internalRolenoops_sameline
col_end40"# Forcing value to bool.*Æ:ä"4800*Æ:v«

NumLiteral
NumTypeint
internalRoleeltsÇ
SameLineNoops
col_end71
internalRolenoops_sameline"7# Narrowing conversion. Doesn't seem to be very useful.*Ø:ä"4838*Ø:vª

NumLiteral
NumTypeint
internalRoleeltsw
SameLineNoops
col_end60
internalRolenoops_sameline",# 'X': name was marked as #pragma deprecated*∞:ä"4995*∞:v¡

NumLiteral
NumTypeint
internalRoleelts}
SameLineNoops
internalRolenoops_sameline
col_end66"2# 'X': was declared deprecated (for GetVersionEx).*±:ä"4996*±:vB

NumLiteral
NumTypeint
internalRoleelts"4456*∂:vB

NumLiteral
NumTypeint
internalRoleelts"4457*∂:vB

NumLiteral
NumTypeint
internalRoleelts"4458*∂:vB

NumLiteral
internalRoleelts
NumTypeint"4459*∂:v*Í#:sÚL
Dict
internalRolevaluesB
StringLiteral
internalRolekeys"VCCLCompilerTool*π:y~A
StringLiteral
internalRolekeys"VCLibrarianTool*Õ:y~>
StringLiteral
internalRolekeys"VCLinkerTool*◊:y~’
StringLiteral
internalRolekeysñ
PreviousNoops

end_lineno1001
internalRolenoops_previousT
NoopLine
internalRolelines"&            # LinkIncremental values:
*ﬂ:äK
NoopLine
internalRolelines"            #   0 == default
*‡:äS
NoopLine
internalRolelines"%            #   1 == /INCREMENTAL:NO
*·:äP
NoopLine
internalRolelines""            #   2 == /INCREMENTAL
*‚:äN
NoopLine
internalRolelines"             # SubSystem values:
*„:äK
NoopLine
internalRolelines"            #   0 == not set
*‰:äV
NoopLine
internalRolelines"(            #   1 == /SUBSYSTEM:CONSOLE
*Â:äV
NoopLine
internalRolelines"(            #   2 == /SUBSYSTEM:WINDOWS
*Ê:ä/
NoopLine
internalRolelines"
*Á:ä*ﬂ:å"
conditions*˘:y~°
Dict
internalRolevalues@
StringLiteral
internalRolekeys"MinimalRebuild*∫:y~E
StringLiteral
internalRolekeys"BufferSecurityCheck*ª:y~L
StringLiteral
internalRolekeys"EnableFunctionLevelLinking*º:y~A
StringLiteral
internalRolekeys"RuntimeTypeInfo*Ω:y~>
StringLiteral
internalRolekeys"WarningLevel*æ:y~=
StringLiteral
internalRolekeys"WarnAsError*ø:y~H
StringLiteral
internalRolekeys"DebugInformationFormat*¿:y~P
StringLiteral
internalRolekeys"Detect64BitPortabilityProblems*¡:y~<
StringLiteral
internalRolekeys"
conditions*¬:y~9
StringLiteral
internalRolevalues"false*∫:y8
StringLiteral
internalRolevalues"true*ª$:y8
StringLiteral
internalRolevalues"true*º+:y9
StringLiteral
internalRolevalues"false*Ω :y5
StringLiteral
internalRolevalues"3*æ:y8
StringLiteral
internalRolevalues"true*ø:y5
StringLiteral
internalRolevalues"3*¿':y9
StringLiteral
internalRolevalues"false*¡/:yµ
List
ctxLoad
internalRolevaluesŸ
List
internalRoleelts
ctxLoadH
StringLiteral
internalRoleelts"msvs_multi_core_compile*√:yŸ
Dict
internalRoleeltsC
StringLiteral
internalRolekeys"AdditionalOptions*ƒ:y~l
List
ctxLoad
internalRolevalues4
StringLiteral
internalRoleelts"/MP*ƒ':y*ƒ&:s*√,:t*√:s†
List
ctxLoad
internalRoleeltsL
StringLiteral
internalRoleelts"component=="shared_library"*∆:y˜
Dict
internalRoleeltsó
StringLiteral
internalRolekeysR
SameLineNoops
col_end50
internalRolenoops_sameline"# /EHsc*«+:ä"ExceptionHandling*«:y~5
StringLiteral
internalRolevalues"1*«&:y*∆/:t¢
Dict
internalRoleeltsC
StringLiteral
internalRolekeys"ExceptionHandling*…:y~5
StringLiteral
internalRolevalues"0*…&:y*»:t*∆:s*¬:s*π:tƒ
Dict
internalRolevaluesC
StringLiteral
internalRolekeys"AdditionalOptions*Œ:y~<
StringLiteral
internalRolekeys"
conditions*œ:y~u
List
ctxLoad
internalRolevalues=
StringLiteral
internalRoleelts"/ignore:4221*Œ#:y*Œ":sû
List
ctxLoad
internalRolevaluesÂ
List
ctxLoad
internalRoleeltsF
StringLiteral
internalRoleelts"v8_target_arch=="x64"*–:yÚ
Dict
internalRoleeltsë
StringLiteral
internalRolekeysP
SameLineNoops
col_end45
internalRolenoops_sameline"# x64*—(:ä"TargetMachine*—:y~6
StringLiteral
internalRolevalues"17*—":y*–):tÚ
Dict
internalRoleeltsí
StringLiteral
internalRolekeysQ
SameLineNoops
col_end45
internalRolenoops_sameline"# ia32*”':ä"TargetMachine*”:y~5
StringLiteral
internalRolevalues"1*”":y*“:t*–:s*œ:s*Õ:tˇ
Dict
internalRolevaluesH
StringLiteral
internalRolekeys"AdditionalDependencies*ÿ:y~J
StringLiteral
internalRolekeys"GenerateDebugInformation*€:y~=
StringLiteral
internalRolekeys"MapFileName*‹:y~?
StringLiteral
internalRolekeys"ImportLibrary*›:y~B
StringLiteral
internalRolekeys"FixedBaseAddress*ﬁ:y~A
StringLiteral
internalRolekeys"LinkIncremental*„:y~;
StringLiteral
internalRolekeys"	SubSystem*Ë:y~<
StringLiteral
internalRolekeys"
conditions*Í:y~s
List
ctxLoad
internalRolevalues;
StringLiteral
internalRoleelts"
ws2_32.lib*Ÿ:y*ÿ':s8
StringLiteral
internalRolevalues"true*€):yO
StringLiteral
internalRolevalues"$(OutDir)\$(TargetName).map*‹:yS
StringLiteral
internalRolevalues"$(OutDir)\lib\$(TargetName).lib*›:y5
StringLiteral
internalRolevalues"1*ﬁ!:y5
StringLiteral
internalRolevalues"1*„ :y5
StringLiteral
internalRolevalues"1*Ë:y¡
List
ctxLoad
internalRolevaluesÈ
List
ctxLoad
internalRoleeltsJ
StringLiteral
internalRoleelts"v8_enable_i18n_support==1*Î:yÁ
Dict
internalRoleeltsH
StringLiteral
internalRolekeys"AdditionalDependencies*Ï:y~u
List
ctxLoad
internalRolevalues=
StringLiteral
internalRoleelts"advapi32.lib*Ì:y*Ï+:s*Î-:t*Î:sú
List
ctxLoad
internalRoleeltsF
StringLiteral
internalRoleelts"v8_target_arch=="x64"*:y“
Dict
internalRoleelts£
StringLiteral
internalRolekeysY
SameLineNoops
col_end65
internalRolenoops_sameline"# Server 2003.*Ò3:ä"MinimumRequiredVersion*Ò:y~ë
StringLiteral
internalRolekeysP
SameLineNoops
col_end45
internalRolenoops_sameline"# x64*Ú(:ä"TargetMachine*Ú:y~8
StringLiteral
internalRolevalues"5.02*Ò+:y6
StringLiteral
internalRolevalues"17*Ú":y*):t…
Dict
internalRoleeltsö
StringLiteral
internalRolekeysP
SameLineNoops
internalRolenoops_sameline
col_end56"# XP.*Ù3:ä"MinimumRequiredVersion*Ù:y~í
StringLiteral
internalRolekeysQ
SameLineNoops
col_end45
internalRolenoops_sameline"# ia32*ı':ä"TargetMachine*ı:y~8
StringLiteral
internalRolevalues"5.01*Ù+:y5
StringLiteral
internalRolevalues"1*ı":y*Û:t*:s*Í:s*◊:t∫
List
ctxLoad
internalRolevalues≥
List
ctxLoad
internalRoleelts9
StringLiteral
internalRoleelts"clang==1*˙:y¬
Dict
internalRoleeltsB
StringLiteral
internalRolekeys"VCCLCompilerTool*˚:y~’
Dict
internalRolevaluesC
StringLiteral
internalRolekeys"AdditionalOptions*¸:y~‰
List
internalRolevalues
ctxLoadÙ
StringLiteral
internalRoleelts´
PreviousNoops

end_lineno1022
internalRolenoops_previouso
NoopLine
internalRolelines"A                  # Don't warn about unused function parameters.
*˝:äj
NoopLine
internalRolelines"<                  # (This is also used on other platforms.)
*˛:ä*˝:å"-Wno-unused-parameter*ˇ:yÏ
StringLiteral
internalRoleeltsô
PreviousNoops

end_lineno1025
internalRolenoops_previous|
NoopLine
internalRolelines"N                  # Don't warn about the "struct foo f = {0};" initialization
*Ä:äK
NoopLine
internalRolelines"                  # pattern.
*Å:ä*Ä:å"-Wno-missing-field-initializers*Ç:y∑
StringLiteral
internalRoleeltsã
PreviousNoops

end_lineno1028
internalRolenoops_previous/
NoopLine
internalRolelines"
*É:äâ
NoopLine
internalRolelines"[                  # TODO(hans): Make this list shorter eventually, http://crbug.com/504657
*Ñ:ä*É:åd
SameLineNoops
col_end66
internalRolenoops_sameline"# http://crbug.com/504658*Ö):ä"-Qunused-arguments*Ö:y∞
StringLiteral
internalRoleeltsd
SameLineNoops
col_end73
internalRolenoops_sameline"# http://crbug.com/505296*Ü0:ä"-Wno-microsoft-enum-value*Ü:y´
StringLiteral
internalRoleeltsd
SameLineNoops
col_end68
internalRolenoops_sameline"# http://crbug.com/505314*á+:ä"-Wno-unknown-pragmas*á:y™
StringLiteral
internalRoleeltsd
SameLineNoops
col_end67
internalRolenoops_sameline"# http://crbug.com/550065*à*:ä"-Wno-microsoft-cast*à:y*¸&:s*˚#:t*˙:t*˙:s‰
List
ctxLoad
internalRoleeltsT
StringLiteral
internalRoleelts"#clang==1 and MSVS_VERSION == "2013"*å:yÿ
Dict
internalRoleeltsB
StringLiteral
internalRolekeys"VCCLCompilerTool*ç:y~Î
Dict
internalRolevaluesC
StringLiteral
internalRolekeys"AdditionalOptions*é:y~{
List
ctxLoad
internalRolevaluesC
StringLiteral
internalRoleelts"-fmsc-version=1800*è:y*é&:s*ç#:t*å5:t*å:s‰
List
internalRoleelts
ctxLoadT
StringLiteral
internalRoleelts"#clang==1 and MSVS_VERSION == "2015"*ì:yÿ
Dict
internalRoleeltsB
StringLiteral
internalRolekeys"VCCLCompilerTool*î:y~Î
Dict
internalRolevaluesC
StringLiteral
internalRolekeys"AdditionalOptions*ï:y~{
List
internalRolevalues
ctxLoadC
StringLiteral
internalRoleelts"-fmsc-version=1900*ñ:y*ï&:s*î#:t*ì5:t*ì:s*˘:s*∏:t*‹:t*€:t*€:sÚ@
List
ctxLoad
internalRoleelts:
StringLiteral
internalRoleelts"	OS=="mac"*û:yÄ@
Dict
internalRoleelts@
StringLiteral
internalRolekeys"xcode_settings*ü:y~A
StringLiteral
internalRolekeys"target_defaults*£:y~§
Dict
internalRolevalues9
StringLiteral
internalRolekeys"SDKROOT*†	:y~9
StringLiteral
internalRolekeys"SYMROOT*°	:y~:
StringLiteral
internalRolevalues"macosx*†:yG
StringLiteral
internalRolevalues"<(DEPTH)/xcodebuild*°:y*ü:t´<
Dict
internalRolevalues@
StringLiteral
internalRolekeys"xcode_settings*§	:y~˚
StringLiteral
internalRolekeysº
PreviousNoops
internalRolenoops_previous

end_lineno1086z
NoopLine
internalRolelines"L                                                    # (Equivalent to -fPIC)
*©:ä}
NoopLine
internalRolelines"O          # GCC_INLINES_ARE_PRIVATE_EXTERN maps to -fvisibility-inlines-hidden
*™:äp
NoopLine
internalRolelines"B          # MACOSX_DEPLOYMENT_TARGET maps to -mmacosx-version-min
*´:ä
NoopLine
internalRolelines"Q            # Don't warn about the "struct foo f = {0};" initialization pattern.
*¨:ä*©:å"
conditions*√	:y~C
StringLiteral
internalRolekeys"target_conditions*›	:y~»
Dict
internalRolevaluesJ
StringLiteral
internalRolekeys"ALWAYS_SEARCH_USER_PATHS*•:y~†
StringLiteral
internalRolekeysU
SameLineNoops
col_end62
internalRolenoops_sameline"
# -std=c99*¶4:ä"GCC_C_LANGUAGE_STANDARD*¶:y~°
StringLiteral
internalRolekeys\
SameLineNoops
internalRolenoops_sameline
col_end69"# No -fasm-blocks*ß4:ä"GCC_CW_ASM_SYNTAX*ß:y~¶
StringLiteral
internalRolekeys`
SameLineNoops
col_end73
internalRolenoops_sameline"# No -mdynamic-no-pic*®4:ä"GCC_DYNAMIC_NO_PIC*®:y~©
StringLiteral
internalRolekeys\
SameLineNoops
internalRolenoops_sameline
col_end69"# -fno-exceptions*™4:ä"GCC_ENABLE_CPP_EXCEPTIONS*™:y~ù
StringLiteral
internalRolekeysV
SameLineNoops
internalRolenoops_sameline
col_end63"# -fno-rtti*´4:ä"GCC_ENABLE_CPP_RTTI*´:y~≠
StringLiteral
internalRolekeys`
SameLineNoops
col_end73
internalRolenoops_sameline"# No -mpascal-strings*¨4:ä"GCC_ENABLE_PASCAL_STRINGS*¨:y~P
StringLiteral
internalRolekeys"GCC_INLINES_ARE_PRIVATE_EXTERN*Æ:y~Æ
StringLiteral
internalRolekeys`
SameLineNoops
col_end73
internalRolenoops_sameline"# -fvisibility=hidden*Ø4:ä"GCC_SYMBOLS_PRIVATE_EXTERN*Ø:y~Æ
StringLiteral
internalRolekeysd
SameLineNoops
col_end77
internalRolenoops_sameline"# -fno-threadsafe-statics*∞4:ä"GCC_THREADSAFE_STATICS*∞:y~≤
StringLiteral
internalRolekeys_
SameLineNoops
internalRolenoops_sameline
col_end72"# -Wnon-virtual-dtor*±4:ä"GCC_WARN_NON_VIRTUAL_DESTRUCTOR*±:y~J
StringLiteral
internalRolekeys"MACOSX_DEPLOYMENT_TARGET*≥:y~ö
StringLiteral
internalRolekeys\
SameLineNoops
internalRolenoops_sameline
col_end69"# No -Wl,-prebind*¥4:ä"
PREBINDING*¥:y~9
StringLiteral
internalRolekeys"SYMROOT*µ:y~?
StringLiteral
internalRolekeys"USE_HEADERMAP*∂:y~>
StringLiteral
internalRolekeys"OTHER_CFLAGS*∑:y~@
StringLiteral
internalRolekeys"WARNING_CFLAGS*∫:y~6
StringLiteral
internalRolevalues"NO*•':y7
StringLiteral
internalRolevalues"c99*¶&:y6
StringLiteral
internalRolevalues"NO*ß :y6
StringLiteral
internalRolevalues"NO*®!:y6
StringLiteral
internalRolevalues"NO*™(:y6
StringLiteral
internalRolevalues"NO*´":y6
StringLiteral
internalRolevalues"NO*¨(:y7
StringLiteral
internalRolevalues"YES*Æ-:y7
StringLiteral
internalRolevalues"YES*Ø):y6
StringLiteral
internalRolevalues"NO*∞%:y7
StringLiteral
internalRolevalues"YES*±.:yL
StringLiteral
internalRolevalues"<(mac_deployment_target)*≥':y6
StringLiteral
internalRolevalues"NO*¥:yG
StringLiteral
internalRolevalues"<(DEPTH)/xcodebuild*µ:y6
StringLiteral
internalRolevalues"NO*∂:y}
List
internalRolevalues
ctxLoadE
StringLiteral
internalRoleelts"-fno-strict-aliasing*∏:y*∑:s¢
List
ctxLoad
internalRolevalues6
StringLiteral
internalRoleelts"-Wall*ª:y?
StringLiteral
internalRoleelts"-Wendif-labels*º:yF
StringLiteral
internalRoleelts"-Wno-unused-parameter*Ω:yP
StringLiteral
internalRoleelts"-Wno-missing-field-initializers*ø:yW
StringLiteral
internalRoleelts"&-Wno-gnu-zero-variadic-macro-arguments*¿:y*∫:s*§:tõ
List
ctxLoad
internalRolevaluesØ
List
ctxLoad
internalRoleelts;
StringLiteral
internalRoleelts"
werror==""*ƒ:yú
Dict
internalRoleelts@
StringLiteral
internalRolekeys"xcode_settings*≈:y~±
Dict
internalRolevaluesN
StringLiteral
internalRolekeys"GCC_TREAT_WARNINGS_AS_ERRORS*≈ :y~6
StringLiteral
internalRolevalues"NO*≈@:y*≈:t*ƒ:tù
Dict
internalRoleelts@
StringLiteral
internalRolekeys"xcode_settings*«:y~≤
Dict
internalRolevaluesN
StringLiteral
internalRolekeys"GCC_TREAT_WARNINGS_AS_ERRORS*« :y~7
StringLiteral
internalRolevalues"YES*«@:y*«:t*∆:t*ƒ:s∞
List
ctxLoad
internalRoleelts9
StringLiteral
internalRoleelts"clang==1*…:yø
Dict
internalRoleelts@
StringLiteral
internalRolekeys"xcode_settings* :y~<
StringLiteral
internalRolekeys"
conditions*Œ:y~§
Dict
internalRolevalues=
StringLiteral
internalRolekeys"GCC_VERSION*À:y~¶
StringLiteral
internalRolekeysW
SameLineNoops
col_end67
internalRolenoops_sameline"# -std=c++11*Ã7:ä"CLANG_CXX_LANGUAGE_STANDARD*Ã:y~V
StringLiteral
internalRolevalues""com.apple.compilers.llvm.clang.1_0*À:y9
StringLiteral
internalRolevalues"c++11*Ã.:y* :tÔ	
List
internalRolevalues
ctxLoadö
List
ctxLoad
internalRoleelts?
StringLiteral
internalRoleelts"clang_xcode==0*œ:y£
Dict
internalRoleelts@
StringLiteral
internalRolekeys"xcode_settings*–:y~∏
Dict
internalRolevalues4
StringLiteral
internalRolekeys"CC*—:y~<
StringLiteral
internalRolekeys"
LDPLUSPLUS*“:y~C
StringLiteral
internalRolekeys"CLANG_CXX_LIBRARY*”:y~J
StringLiteral
internalRolevalues"<(clang_dir)/bin/clang*—:yL
StringLiteral
internalRolevalues"<(clang_dir)/bin/clang++*“!:y:
StringLiteral
internalRolevalues"libc++*”(:y*–#:t*œ":t*œ:sô
List
internalRoleelts
ctxLoadç
StringLiteral
internalRoleelts"^v8_target_arch=="x64" or v8_target_arch=="arm64"                 or v8_target_arch=="mips64el"*◊:y”
Dict
internalRoleelts@
StringLiteral
internalRolekeys"xcode_settings*ÿ:y~Ë
Dict
internalRolevalues@
StringLiteral
internalRolekeys"WARNING_CFLAGS*ÿ$:y~{
List
ctxLoad
internalRolevaluesC
StringLiteral
internalRoleelts"-Wshorten-64-to-32*ÿ7:y*ÿ6:s*ÿ#:t*◊1:t*÷:s*Œ:s*…:t*…:s*√:së
List
ctxLoad
internalRolevaluesÿ
List
internalRoleelts
ctxLoadH
StringLiteral
internalRoleelts"_type!="static_library"*ﬁ:yÿ
Dict
internalRoleelts@
StringLiteral
internalRolekeys"xcode_settings*ﬂ:y~Ì
Dict
internalRolevalues?
StringLiteral
internalRolekeys"OTHER_LDFLAGS*ﬂ :y~Ä
List
ctxLoad
internalRolevaluesH
StringLiteral
internalRoleelts"-Wl,-search_paths_first*ﬂ2:y*ﬂ1:s*ﬂ:t*ﬁ':t*ﬁ:s*›:s*£:t*û:t*û:séy
List
ctxLoad
internalRoleelts>
StringLiteral
internalRoleelts"OS=="android"*‰:yòx
Dict
internalRoleeltsA
StringLiteral
internalRolekeys"target_defaults*Â:y~¨w
Dict
internalRolevalues9
StringLiteral
internalRolekeys"defines*Ê	:y~@
StringLiteral
internalRolekeys"configurations*È	:y~8
StringLiteral
internalRolekeys"cflags*	:y~;
StringLiteral
internalRolekeys"	cflags_cc*Ò	:y~C
StringLiteral
internalRolekeys"target_conditions*Û	:y~p
List
ctxLoad
internalRolevalues8
StringLiteral
internalRoleelts"ANDROID*Á:y*Ê:s…
Dict
internalRolevalues9
StringLiteral
internalRolekeys"Release*Í:y~‚
Dict
internalRolevalues8
StringLiteral
internalRolekeys"cflags*Î:y~}
List
ctxLoad
internalRolevaluesE
StringLiteral
internalRoleelts"-fomit-frame-pointer*Ï:y*Î:s*Í:t*È:t¶
List
ctxLoad
internalRolevalues9
StringLiteral
internalRoleelts"-Wno-abi*:y6
StringLiteral
internalRoleelts"-Wall*!:y3
StringLiteral
internalRoleelts"-W**:yF
StringLiteral
internalRoleelts"-Wno-unused-parameter*0:y*:s∏
List
ctxLoad
internalRolevaluesC
StringLiteral
internalRoleelts"-Wnon-virtual-dtor*Ò:y:
StringLiteral
internalRoleelts"	-fno-rtti*Ò.:y@
StringLiteral
internalRoleelts"-fno-exceptions*Ò;:y=
StringLiteral
internalRoleelts"-std=gnu++11*Ú:y*Ò:s•l
List
ctxLoad
internalRolevalues®c
List
ctxLoad
internalRoleeltsC
StringLiteral
internalRoleelts"_toolset=="target"*Ù:y≠b
Dict
internalRoleelts9
StringLiteral
internalRolekeys"cflags!*ı:y~8
StringLiteral
internalRolekeys"cflags*¯:y~;
StringLiteral
internalRolekeys"	cflags_cc*Å	:y~9
StringLiteral
internalRolekeys"defines*Ü	:y~ı
StringLiteral
internalRolekeys∏
PreviousNoops

end_lineno1160
internalRolenoops_previoush
NoopLine
internalRolelines":              #'__GNU_SOURCE=1',  # Necessary for clone()
*à	:ä*à	:å"ldflags!*é	:y~9
StringLiteral
internalRolekeys"ldflags*ë	:y~<
StringLiteral
internalRolekeys"
libraries!*ñ	:y~≠
StringLiteral
internalRolekeysÔ
PreviousNoops

end_lineno1179
internalRolenoops_previousd
NoopLine
internalRolelines"6                # Not supported by Android toolchain.
*ò	:ät
NoopLine
internalRolelines"F                # Where do these come from?  Can't find references in
*ô	:äu
NoopLine
internalRolelines"G                # any Chromium gyp or gypi file.  Maybe they come from
*ö	:äL
NoopLine
internalRolelines"                # gyp itself?
*õ	:ä*ò	:å"	libraries*û	:y~à
StringLiteral
internalRolekeys…
PreviousNoops
internalRolenoops_previous

end_lineno1185y
NoopLine
internalRolelines"K                # Manually link the libgcc.a that the cross compiler uses.
*°	:ä*°	:å"
conditions*ß	:y~ä
StringLiteral
internalRolekeysƒ
PreviousNoops

end_lineno1236
internalRolenoops_previousp
NoopLine
internalRolelines"B                  # Enable identical code folding to reduce size.
*™	:ä
NoopLine
internalRolelines"Q                # The x86 toolchain currently has problems with stack-protector.
*´	:äÄ
NoopLine
internalRolelines"R                # The mips toolchain currently has problems with stack-protector.
*¨	:ä*™	:å"target_conditions*È	:y~‰
List
ctxLoad
internalRolevalues´
StringLiteral
internalRoleeltsp
SameLineNoops
col_end64
internalRolenoops_sameline"%# Not supported by Android toolchain.*ˆ:ä"-pthread*ˆ:y*ı:sú
List
internalRolevalues
ctxLoadD
StringLiteral
internalRoleelts"-ffunction-sections*˘:y@
StringLiteral
internalRoleelts"-funwind-tables*˙:yB
StringLiteral
internalRoleelts"-fstack-protector*˚:yA
StringLiteral
internalRoleelts"-fno-short-enums*¸:yB
StringLiteral
internalRoleelts"-finline-limit=64*˝:yB
StringLiteral
internalRoleelts"-Wa,--noexecstack*˛:yM
StringLiteral
internalRoleelts"--sysroot=<(android_sysroot)*ˇ:y*¯:s∑
List
ctxLoad
internalRolevaluesR
StringLiteral
internalRoleelts"!-isystem<(android_libcpp_include)*Ç	:yV
StringLiteral
internalRoleelts"%-isystem<(android_libcpp_abi_include)*É	:yS
StringLiteral
internalRoleelts""-isystem<(android_support_include)*Ñ	:y*Å	:sç
List
ctxLoad
internalRolevalues8
StringLiteral
internalRoleelts"ANDROID*á	:y=
StringLiteral
internalRoleelts"HAVE_OFF64_T*â	:y?
StringLiteral
internalRoleelts"HAVE_SYS_UIO_H*ä	:yΩ
StringLiteral
internalRoleeltsv
SameLineNoops
internalRolenoops_sameline
col_end81"+# Enable temporary hacks to reduce binsize.*ã	&:ä"ANDROID_BINSIZE_HACK*ã	:y[
StringLiteral
internalRoleelts"*ANDROID_NDK_VERSION=<(android_ndk_version)*å	:y*Ü	:s‰
List
ctxLoad
internalRolevalues´
StringLiteral
internalRoleeltsp
SameLineNoops
internalRolenoops_sameline
col_end64"%# Not supported by Android toolchain.*è	:ä"-pthread*è	:y*é	:sÜ
List
internalRolevalues
ctxLoadC
StringLiteral
internalRoleelts"-Wl,--no-undefined*í	:yM
StringLiteral
internalRoleelts"--sysroot=<(android_sysroot)*ì	:y:
StringLiteral
internalRoleelts"	-nostdlib*î	:y*ë	:sÚ
List
internalRolevalues
ctxLoadü
StringLiteral
internalRoleeltsh
SameLineNoops
col_end54
internalRolenoops_sameline"# librt is built into Bionic.*ó	:ä"-lrt*ó	:y:
StringLiteral
internalRoleelts"	-lpthread*ú	:y7
StringLiteral
internalRoleelts"-lnss3*ú	:y;
StringLiteral
internalRoleelts"
-lnssutil3*ú	(:y9
StringLiteral
internalRoleelts"-lsmime3*ú	6:y8
StringLiteral
internalRoleelts"-lplds4*ú	B:y7
StringLiteral
internalRoleelts"-lplc4*ú	M:y8
StringLiteral
internalRoleelts"-lnspr4*ú	W:y*ñ	:sÀ
List
ctxLoad
internalRolevaluesL
StringLiteral
internalRoleelts"-l<(android_libcpp_library)*ü	:y9
StringLiteral
internalRoleelts"-latomic*†	:yg
StringLiteral
internalRoleelts"6<!(<(android_toolchain)/*-gcc -print-libgcc-file-name)*¢	:y4
StringLiteral
internalRoleelts"-lc*£	:y5
StringLiteral
internalRoleelts"-ldl*§	:y4
StringLiteral
internalRoleelts"-lm*•	:y*û	:sá"
List
ctxLoad
internalRolevalues◊
List
ctxLoad
internalRoleeltsE
StringLiteral
internalRoleelts"target_arch == "arm"*®	:y⁄
Dict
internalRoleelts9
StringLiteral
internalRolekeys"ldflags*©	:y~w
List
ctxLoad
internalRolevalues?
StringLiteral
internalRoleelts"-Wl,--icf=safe*´	:y*©	:s*®	(:t*®	:s≥
List
ctxLoad
internalRoleeltsV
StringLiteral
internalRoleelts"%target_arch=="arm" and arm_version==7*Æ	:y•
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*Ø	:y~9
StringLiteral
internalRolekeys"ldflags*¥	:y~˜
List
internalRolevalues
ctxLoad?
StringLiteral
internalRoleelts"-march=armv7-a*∞	:yA
StringLiteral
internalRoleelts"-mtune=cortex-a8*±	:y;
StringLiteral
internalRoleelts"
-mfpu=vfp3*≤	:y*Ø	:sç
List
ctxLoad
internalRolevaluesU
StringLiteral
internalRoleelts"$-L<(android_libcpp_libs)/armeabi-v7a*µ	:y*¥	:s*Æ	9:t*Æ	:s¸
List
ctxLoad
internalRoleeltsW
StringLiteral
internalRoleelts"&target_arch=="arm" and arm_version < 7*∏	:yÌ
Dict
internalRoleelts9
StringLiteral
internalRolekeys"ldflags*π	:y~â
List
ctxLoad
internalRolevaluesQ
StringLiteral
internalRoleelts" -L<(android_libcpp_libs)/armeabi*∫	:y*π	:s*∏	::t*∏	:sÁ
List
ctxLoad
internalRoleeltsC
StringLiteral
internalRoleelts"target_arch=="x64"*Ω	:yÏ
Dict
internalRoleelts9
StringLiteral
internalRolekeys"ldflags*æ	:y~à
List
ctxLoad
internalRolevaluesP
StringLiteral
internalRoleelts"-L<(android_libcpp_libs)/x86_64*ø	:y*æ	:s*Ω	&:t*Ω	:sÏ
List
ctxLoad
internalRoleeltsE
StringLiteral
internalRoleelts"target_arch=="arm64"*¬	:yÔ
Dict
internalRoleelts9
StringLiteral
internalRolekeys"ldflags*√	:y~ã
List
ctxLoad
internalRolevaluesS
StringLiteral
internalRoleelts""-L<(android_libcpp_libs)/arm64-v8a*ƒ	:y*√	:s*¬	(:t*¬	:sÎ
List
ctxLoad
internalRoleeltsZ
StringLiteral
internalRoleelts")target_arch=="ia32" or target_arch=="x87"*«	:yŸ
Dict
internalRoleelts9
StringLiteral
internalRolekeys"cflags!*…	:y~8
StringLiteral
internalRolekeys"cflags*Ã	:y~9
StringLiteral
internalRolekeys"ldflags*œ	:y~z
List
internalRolevalues
ctxLoadB
StringLiteral
internalRoleelts"-fstack-protector* 	:y*…	:s}
List
ctxLoad
internalRolevaluesE
StringLiteral
internalRoleelts"-fno-stack-protector*Õ	:y*Ã	:sÖ
List
ctxLoad
internalRolevaluesM
StringLiteral
internalRoleelts"-L<(android_libcpp_libs)/x86*–	:y*œ	:s*«	=:t*«	:só
List
ctxLoad
internalRoleeltsF
StringLiteral
internalRoleelts"target_arch=="mipsel"*”	:yô
Dict
internalRoleelts9
StringLiteral
internalRolekeys"cflags!*’	:y~8
StringLiteral
internalRolekeys"cflags*Ÿ	:y~9
StringLiteral
internalRolekeys"ldflags*‹	:y~∏
List
internalRolevalues
ctxLoadB
StringLiteral
internalRoleelts"-fstack-protector*÷	:y<
StringLiteral
internalRoleelts"-U__linux__*◊	:y*’	:s}
List
ctxLoad
internalRolevaluesE
StringLiteral
internalRoleelts"-fno-stack-protector*⁄	:y*Ÿ	:sÜ
List
internalRolevalues
ctxLoadN
StringLiteral
internalRoleelts"-L<(android_libcpp_libs)/mips*›	:y*‹	:s*”	):t*”	:sﬁ
List
ctxLoad
internalRoleelts™
StringLiteral
internalRoleelts"y(target_arch=="arm" or target_arch=="arm64" or target_arch=="x64" or target_arch=="ia32") and component!="shared_library"*‡	:y˚
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*·	:y~9
StringLiteral
internalRolekeys"ldflags*‰	:y~n
List
ctxLoad
internalRolevalues6
StringLiteral
internalRoleelts"-fPIE*‚	:y*·	:sm
List
ctxLoad
internalRolevalues5
StringLiteral
internalRoleelts"-pie*Â	:y*‰	:s*‡	ç:t*‡	:s*ß	:s—
List
ctxLoad
internalRolevalues∞
List
ctxLoad
internalRoleeltsD
StringLiteral
internalRoleelts"_type=="executable"*Í	:y¥
Dict
internalRoleelts<
StringLiteral
internalRolekeys"
conditions*Î	:y~9
StringLiteral
internalRolekeys"ldflags*ˆ	:y~á
StringLiteral
internalRolekeys…
PreviousNoops
internalRolenoops_previous

end_lineno1273y
NoopLine
internalRolelines"K                  # crtbegin_dynamic.o should be the last item in ldflags.
*˘	:ä*˘	:å"	libraries*¸	:y~∑
List
ctxLoad
internalRolevalues˛
List
ctxLoad
internalRoleelts[
StringLiteral
internalRoleelts"*target_arch=="arm64" or target_arch=="x64"*Ï	:yı
Dict
internalRoleelts9
StringLiteral
internalRolekeys"ldflags*Ì	:y~ë
List
ctxLoad
internalRolevaluesY
StringLiteral
internalRoleelts"(-Wl,-dynamic-linker,/system/bin/linker64*Ó	:y*Ì	 :s*Ï	B:tÛ
Dict
internalRoleelts9
StringLiteral
internalRolekeys"ldflags*Ò	:y~è
List
internalRolevalues
ctxLoadW
StringLiteral
internalRoleelts"&-Wl,-dynamic-linker,/system/bin/linker*Ú	:y*Ò	 :s*	:t*Ï	:s*Î	:sã
List
ctxLoad
internalRolevalues:
StringLiteral
internalRoleelts"	-Bdynamic*˜	:yC
StringLiteral
internalRoleelts"-Wl,-z,nocopyreloc*¯	:yR
StringLiteral
internalRoleelts"!<(android_lib)/crtbegin_dynamic.o*˙	:y*ˆ	:s¿
List
ctxLoad
internalRolevaluesá
StringLiteral
internalRoleelts¥
PreviousNoops
internalRolenoops_previous

end_lineno1278{
NoopLine
internalRolelines"M                  # crtend_android.o needs to be the last item in libraries.
*˝	:äg
NoopLine
internalRolelines"9                  # Do not add any libraries after this!
*˛	:ä*˝	:å"<(android_lib)/crtend_android.o*ˇ	:y*¸	:s*Í	':t*Í	:s≤
List
ctxLoad
internalRoleeltsH
StringLiteral
internalRoleelts"_type=="shared_library"*Ç
:y≤
Dict
internalRoleelts9
StringLiteral
internalRolekeys"ldflags*É
:y~Œ
List
ctxLoad
internalRolevaluesG
StringLiteral
internalRoleelts"-Wl,-shared,-Bsymbolic*Ñ
:yM
StringLiteral
internalRoleelts"<(android_lib)/crtbegin_so.o*Ö
:y*É
:s*Ç
+:t*Ç
:s∞
List
ctxLoad
internalRoleeltsH
StringLiteral
internalRoleelts"_type=="static_library"*à
:y∞
Dict
internalRoleelts9
StringLiteral
internalRolekeys"ldflags*â
:y~Ã
List
internalRolevalues
ctxLoadì
StringLiteral
internalRoleelts…
PreviousNoops

end_lineno1290
internalRolenoops_previousy
NoopLine
internalRolelines"K                  # Don't export symbols from statically linked libraries.
*ä
:ä*ä
:å"-Wl,--exclude-libs=ALL*ã
:y*â
:s*à
+:t*à
:s*È	":s*Ù":t*Ù:s¡
List
ctxLoad
internalRoleeltsç
StringLiteral
internalRoleelts…
PreviousNoops

end_lineno1296
internalRolenoops_previousy
NoopLine
internalRolelines"K          # Settings for building host targets using the system toolchain.
*ê
:ä*ê
:å"_toolset=="host"*ë
:y˚
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*í
:y~9
StringLiteral
internalRolekeys"ldflags*ì
:y~:
StringLiteral
internalRolekeys"ldflags!*î
:y~q
List
ctxLoad
internalRolevalues9
StringLiteral
internalRoleelts"-pthread*í
:y*í
:sq
List
ctxLoad
internalRolevalues9
StringLiteral
internalRoleelts"-pthread*ì
:y*ì
:sª
List
ctxLoad
internalRolevaluesC
StringLiteral
internalRoleelts"-Wl,-z,noexecstack*ï
:yB
StringLiteral
internalRoleelts"-Wl,--gc-sections*ñ
:y8
StringLiteral
internalRoleelts"-Wl,-O1*ó
:y@
StringLiteral
internalRoleelts"-Wl,--as-needed*ò
:y*î
:s*ë
 :t*ë
:s*Û:s*Â:t*‰:t*‰:s»
List
ctxLoad
internalRoleeltsK
StringLiteral
internalRoleelts"OS=="android" and clang==0*û
:y≈
Dict
internalRoleeltsÏ
StringLiteral
internalRolekeys£
PreviousNoops

end_lineno1312
internalRolenoops_previousj
NoopLine
internalRolelines"<      # Hardcode the compiler names in the Makefile so that
*ü
:äg
NoopLine
internalRolelines"9      # it won't depend on the environment at make time.
*†
:ä*ü
:å"make_global_settings*°
:y~≠
List
ctxLoad
internalRolevaluesÃ
List
ctxLoad
internalRoleelts3
StringLiteral
internalRoleelts"LD*¢

:yb
StringLiteral
internalRoleelts"1<!(/bin/echo -n <(android_toolchain)/../*/bin/ld)*¢
:y*¢
	:s‘
List
ctxLoad
internalRoleelts7
StringLiteral
internalRoleelts"RANLIB*£

:yf
StringLiteral
internalRoleelts"5<!(/bin/echo -n <(android_toolchain)/../*/bin/ranlib)*£
:y*£
	:s∆
List
ctxLoad
internalRoleelts3
StringLiteral
internalRoleelts"CC*§

:y\
StringLiteral
internalRoleelts"+<!(/bin/echo -n <(android_toolchain)/*-gcc)*§
:y*§
	:s«
List
ctxLoad
internalRoleelts4
StringLiteral
internalRoleelts"CXX*•

:y\
StringLiteral
internalRoleelts"+<!(/bin/echo -n <(android_toolchain)/*-g++)*•
:y*•
	:s™
List
internalRoleelts
ctxLoad8
StringLiteral
internalRoleelts"LD.host*¶

:y;
StringLiteral
internalRoleelts"
<(host_ld)*¶
:y*¶
	:s≤
List
ctxLoad
internalRoleelts<
StringLiteral
internalRoleelts"RANLIB.host*ß

:y?
StringLiteral
internalRoleelts"<(host_ranlib)*ß
:y*ß
	:s™
List
ctxLoad
internalRoleelts8
StringLiteral
internalRoleelts"CC.host*®

:y;
StringLiteral
internalRoleelts"
<(host_cc)*®
:y*®
	:s¨
List
internalRoleelts
ctxLoad9
StringLiteral
internalRoleelts"CXX.host*©

:y<
StringLiteral
internalRoleelts"<(host_cxx)*©
:y*©
	:s*°
:s*û
$:t*û
:sŒ
List
ctxLoad
internalRoleeltsz
StringLiteral
internalRoleelts"Iclang!=1 and host_clang==1 and target_arch!="ia32" and target_arch!="x64"*¨
:yú
Dict
internalRoleeltsF
StringLiteral
internalRolekeys"make_global_settings*≠
:y~´
List
ctxLoad
internalRolevalues∂
List
ctxLoad
internalRoleelts8
StringLiteral
internalRoleelts"CC.host*Æ

:yG
StringLiteral
internalRoleelts"<(clang_dir)/bin/clang*Æ
:y*Æ
	:sπ
List
ctxLoad
internalRoleelts9
StringLiteral
internalRoleelts"CXX.host*Ø

:yI
StringLiteral
internalRoleelts"<(clang_dir)/bin/clang++*Ø
:y*Ø
	:s*≠
:s*¨
S:t*¨
:s¸	
List
ctxLoad
internalRoleeltsz
StringLiteral
internalRoleelts"Iclang==0 and host_clang==1 and target_arch!="ia32" and target_arch!="x64"*≤
:y 
Dict
internalRoleeltsC
StringLiteral
internalRolekeys"target_conditions*≥
:y~A
StringLiteral
internalRolekeys"target_defaults*∏
:y~å
List
ctxLoad
internalRolevalues”
List
ctxLoad
internalRoleeltsA
StringLiteral
internalRoleelts"_toolset=="host"*¥

:y⁄
Dict
internalRoleelts;
StringLiteral
internalRolekeys"	cflags_cc*µ
:y~u
List
ctxLoad
internalRolevalues=
StringLiteral
internalRoleelts"-std=gnu++11*µ
:y*µ
:s*¥
:t*¥
	:s*≥
:sä
Dict
internalRolevaluesC
StringLiteral
internalRolekeys"target_conditions*π
	:y~ô
List
ctxLoad
internalRolevalues‡
List
ctxLoad
internalRoleeltsA
StringLiteral
internalRoleelts"_toolset=="host"*∫
:yÁ
Dict
internalRoleelts9
StringLiteral
internalRolekeys"cflags!*∫
":y~É
List
internalRolevalues
ctxLoadK
StringLiteral
internalRoleelts"-Wno-unused-local-typedefs*∫
/:y*∫
-:s*∫
 :t*∫
:s*π
:s*∏
:t*≤
S:t*≤
:s¨
List
ctxLoad
internalRoleeltsU
StringLiteral
internalRoleelts"$clang==1 and "<(GENERATOR)"=="ninja"*æ
:yü
Dict
internalRoleeltsÊ
StringLiteral
internalRolekeys¢
PreviousNoops

end_lineno1343
internalRolenoops_previousR
NoopLine
internalRolelines"$      # See http://crbug.com/110262
*ø
:ä*ø
:å"target_defaults*¿
:y~ç
Dict
internalRolevalues8
StringLiteral
internalRolekeys"cflags*¡
	:y~@
StringLiteral
internalRolekeys"xcode_settings*¬
	:y~|
List
ctxLoad
internalRolevaluesD
StringLiteral
internalRoleelts"-fcolor-diagnostics*¡
:y*¡
:sÁ
Dict
internalRolevalues>
StringLiteral
internalRolekeys"OTHER_CFLAGS*¬
:y~|
List
ctxLoad
internalRolevaluesD
StringLiteral
internalRoleelts"-fcolor-diagnostics*¬
/:y*¬
-:s*¬
:t*¿
:t*æ
.:t*æ
:s±
List
ctxLoad
internalRoleeltsî
StringLiteral
internalRoleelts"cclang==1 and ((OS!="mac" and OS!="ios") or clang_xcode==0) and OS!="win" and "<(GENERATOR)"=="make"*≈
:y‰
Dict
internalRoleeltsF
StringLiteral
internalRolekeys"make_global_settings*«
:y~Û
List
ctxLoad
internalRolevalues±
List
ctxLoad
internalRoleelts3
StringLiteral
internalRoleelts"CC*»

:yG
StringLiteral
internalRoleelts"<(clang_dir)/bin/clang*»
:y*»
	:s¥
List
ctxLoad
internalRoleelts4
StringLiteral
internalRoleelts"CXX*…

:yI
StringLiteral
internalRoleelts"<(clang_dir)/bin/clang++*…
:y*…
	:s•
List
ctxLoad
internalRoleelts8
StringLiteral
internalRoleelts"CC.host* 

:y6
StringLiteral
internalRoleelts"$(CC)* 
:y* 
	:sß
List
ctxLoad
internalRoleelts9
StringLiteral
internalRoleelts"CXX.host*À

:y7
StringLiteral
internalRoleelts"$(CXX)*À
:y*À
	:s*«
:s*∆
5:t*≈
:s≤
List
ctxLoad
internalRoleeltsï
StringLiteral
internalRoleelts"dclang==1 and ((OS!="mac" and OS!="ios") or clang_xcode==0) and OS!="win" and "<(GENERATOR)"=="ninja"*Œ
:y‰
Dict
internalRoleeltsF
StringLiteral
internalRolekeys"make_global_settings*–
:y~Û
List
ctxLoad
internalRolevalues±
List
ctxLoad
internalRoleelts3
StringLiteral
internalRoleelts"CC*—

:yG
StringLiteral
internalRoleelts"<(clang_dir)/bin/clang*—
:y*—
	:s¥
List
ctxLoad
internalRoleelts4
StringLiteral
internalRoleelts"CXX*“

:yI
StringLiteral
internalRoleelts"<(clang_dir)/bin/clang++*“
:y*“
	:s•
List
internalRoleelts
ctxLoad8
StringLiteral
internalRoleelts"CC.host*”

:y6
StringLiteral
internalRoleelts"$(CC)*”
:y*”
	:sß
List
ctxLoad
internalRoleelts9
StringLiteral
internalRoleelts"CXX.host*‘

:y7
StringLiteral
internalRoleelts"$(CXX)*‘
:y*‘
	:s*–
:s*œ
6:t*Œ
:sù
List
ctxLoad
internalRoleeltsG
StringLiteral
internalRoleelts"clang==1 and OS=="win"*◊
:yû
Dict
internalRoleeltsF
StringLiteral
internalRolekeys"make_global_settings*ÿ
:y~≠
List
ctxLoad
internalRolevaluesÙ
List
ctxLoad
internalRoleeltsÚ
StringLiteral
internalRoleeltsº
PreviousNoops

end_lineno1369
internalRolenoops_previousl
NoopLine
internalRolelines">        # On Windows, gyp's ninja generator only looks at CC.
*Ÿ
:ä*Ÿ
:å"CC*⁄

:yJ
StringLiteral
internalRoleelts"<(clang_dir)/bin/clang-cl*⁄
:y*⁄
	:s*ÿ
:s*◊
 :t*◊
:sÜ
List
ctxLoad
internalRoleeltsë
StringLiteral
internalRoleelts"`OS=="linux" and target_arch=="arm" and host_arch!="arm" and clang==0 and "<(GENERATOR)"=="ninja"*›
:yº	
Dict
internalRoleeltsˇ
StringLiteral
internalRolekeys∂
PreviousNoops

end_lineno1375
internalRolenoops_previousu
NoopLine
internalRolelines"G      # Set default ARM cross tools on linux.  These can be overridden
*ﬁ
:äo
NoopLine
internalRolelines"A      # using CC,CXX,CC.host and CXX.host environment variables.
*ﬂ
:ä*ﬁ
:å"make_global_settings*‡
:y~ë
List
ctxLoad
internalRolevaluesº
List
ctxLoad
internalRoleelts3
StringLiteral
internalRoleelts"CC*·

:yR
StringLiteral
internalRoleelts"!<!(which arm-linux-gnueabihf-gcc)*·
:y*·
	:sΩ
List
ctxLoad
internalRoleelts4
StringLiteral
internalRoleelts"CXX*‚

:yR
StringLiteral
internalRoleelts"!<!(which arm-linux-gnueabihf-g++)*‚
:y*‚
	:s™
List
ctxLoad
internalRoleelts8
StringLiteral
internalRoleelts"CC.host*„

:y;
StringLiteral
internalRoleelts"
<(host_cc)*„
:y*„
	:s¨
List
ctxLoad
internalRoleelts9
StringLiteral
internalRoleelts"CXX.host*‰

:y<
StringLiteral
internalRoleelts"<(host_cxx)*‰
:y*‰
	:s*‡
:s*›
j:t*›
:sÍ#
List
internalRoleelts
ctxLoadŸ
StringLiteral
internalRoleelts
PreviousNoops

end_lineno1385
internalRolenoops_previous`
NoopLine
internalRolelines"2    # TODO(yyanagisawa): supports GENERATOR==make
*Á
:äj
NoopLine
internalRolelines"<    #  make generator doesn't support CC_wrapper without CC
*Ë
:äR
NoopLine
internalRolelines"$    #  in make_global_settings yet.
*È
:ä*Á
:å"5use_goma==1 and ("<(GENERATOR)"=="ninja" or clang==1)*Í
:y≠
Dict
internalRoleelts<
StringLiteral
internalRolekeys"
conditions*Î
:y~∆
List
ctxLoad
internalRolevaluesç
List
ctxLoad
internalRoleelts<
StringLiteral
internalRoleelts"coverage==1*Ï

:y‚	
Dict
internalRoleeltsÙ
StringLiteral
internalRolekeys´
PreviousNoops
internalRolenoops_previous

end_lineno1389[
NoopLine
internalRolelines"-          # Wrap goma with coverage wrapper.
*Ì
:ä*Ì
:å"make_global_settings*Ó
:y~¬
List
internalRolevalues
ctxLoad›
List
ctxLoad
internalRoleelts;
StringLiteral
internalRoleelts"
CC_wrapper*Ô
:yk
StringLiteral
internalRoleelts":<(base_dir)/gypfiles/coverage_wrapper.py <(gomadir)/gomacc*Ô
:y*Ô
:sﬁ
List
ctxLoad
internalRoleelts<
StringLiteral
internalRoleelts"CXX_wrapper*
:yk
StringLiteral
internalRoleelts":<(base_dir)/gypfiles/coverage_wrapper.py <(gomadir)/gomacc*
:y*
:s‚
List
ctxLoad
internalRoleelts@
StringLiteral
internalRoleelts"CC.host_wrapper*Ò
:yk
StringLiteral
internalRoleelts":<(base_dir)/gypfiles/coverage_wrapper.py <(gomadir)/gomacc*Ò
!:y*Ò
:s„
List
ctxLoad
internalRoleeltsA
StringLiteral
internalRoleelts"CXX.host_wrapper*Ú
:yk
StringLiteral
internalRoleelts":<(base_dir)/gypfiles/coverage_wrapper.py <(gomadir)/gomacc*Ú
":y*Ú
:s*Ó
#:s*Ï
:t¥
Dict
internalRoleeltsÍ
StringLiteral
internalRolekeys°
PreviousNoops
internalRolenoops_previous

end_lineno1397Q
NoopLine
internalRolelines"#          # Use only goma wrapper.
*ı
:ä*ı
:å"make_global_settings*ˆ
:y~û
List
ctxLoad
internalRolevalues¥
List
ctxLoad
internalRoleelts;
StringLiteral
internalRoleelts"
CC_wrapper*˜
:yB
StringLiteral
internalRoleelts"<(gomadir)/gomacc*˜
:y*˜
:sµ
List
ctxLoad
internalRoleelts<
StringLiteral
internalRoleelts"CXX_wrapper*¯
:yB
StringLiteral
internalRoleelts"<(gomadir)/gomacc*¯
:y*¯
:sπ
List
ctxLoad
internalRoleelts@
StringLiteral
internalRoleelts"CC.host_wrapper*˘
:yB
StringLiteral
internalRoleelts"<(gomadir)/gomacc*˘
!:y*˘
:s∫
List
ctxLoad
internalRoleeltsA
StringLiteral
internalRoleelts"CXX.host_wrapper*˙
:yB
StringLiteral
internalRoleelts"<(gomadir)/gomacc*˙
":y*˙
:s*ˆ
#:s*Ù
:t*Ï
	:s*Î
:s*Í
?:t®
Dict
internalRoleelts<
StringLiteral
internalRolekeys"
conditions*ˇ
:y~¡

List
ctxLoad
internalRolevaluesà

List
ctxLoad
internalRoleelts<
StringLiteral
internalRoleelts"coverage==1*Ä
:yî	
Dict
internalRoleeltsÓ
StringLiteral
internalRolekeys•
PreviousNoops

end_lineno1409
internalRolenoops_previousU
NoopLine
internalRolelines"'          # Use only coverage wrapper.
*Å:ä*Å:å"make_global_settings*Ç:y~˙
List
internalRolevalues
ctxLoadÀ
List
ctxLoad
internalRoleelts;
StringLiteral
internalRoleelts"
CC_wrapper*É:yY
StringLiteral
internalRoleelts"(<(base_dir)/gypfiles/coverage_wrapper.py*É:y*É:sÃ
List
ctxLoad
internalRoleelts<
StringLiteral
internalRoleelts"CXX_wrapper*Ñ:yY
StringLiteral
internalRoleelts"(<(base_dir)/gypfiles/coverage_wrapper.py*Ñ:y*Ñ:s–
List
ctxLoad
internalRoleelts@
StringLiteral
internalRoleelts"CC.host_wrapper*Ö:yY
StringLiteral
internalRoleelts"(<(base_dir)/gypfiles/coverage_wrapper.py*Ö!:y*Ö:s—
List
internalRoleelts
ctxLoadA
StringLiteral
internalRoleelts"CXX.host_wrapper*Ü:yY
StringLiteral
internalRoleelts"(<(base_dir)/gypfiles/coverage_wrapper.py*Ü":y*Ü:s*Ç#:s*Ä:t*Ä	:s*ˇ
:s*˛
:t*Í
:s‘
List
ctxLoad
internalRoleelts;
StringLiteral
internalRoleelts"
use_lto==1*ã:y·
Dict
internalRoleeltsA
StringLiteral
internalRolekeys"target_defaults*å:y~ı
Dict
internalRolevaluesC
StringLiteral
internalRolekeys"target_conditions*ç	:y~Ñ
List
ctxLoad
internalRolevaluesÀ
List
ctxLoad
internalRoleeltsC
StringLiteral
internalRoleelts"_toolset=="target"*é:y–
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*è:y~n
List
internalRolevalues
ctxLoad6
StringLiteral
internalRoleelts"-flto*ê:y*è:s*é":t*é:s*ç:s*å:t*ã:t*ã:sÌ
List
ctxLoad
internalRoleeltsH
StringLiteral
internalRoleelts"use_lto==1 and clang==0*ñ:yÌ
Dict
internalRoleeltsA
StringLiteral
internalRolekeys"target_defaults*ó:y~Å
Dict
internalRolevaluesC
StringLiteral
internalRolekeys"target_conditions*ò	:y~ê
List
ctxLoad
internalRolevalues◊
List
internalRoleelts
ctxLoadC
StringLiteral
internalRoleelts"_toolset=="target"*ô:y‹
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*ö:y~z
List
ctxLoad
internalRolevaluesB
StringLiteral
internalRoleelts"-ffat-lto-objects*õ:y*ö:s*ô":t*ô:s*ò:s*ó:t*ñ!:t*ñ:sÉ
List
ctxLoad
internalRoleeltsH
StringLiteral
internalRoleelts"use_lto==1 and clang==1*°:yÉ

Dict
internalRoleeltsA
StringLiteral
internalRolekeys"target_defaults*¢:y~ó	
Dict
internalRolevaluesC
StringLiteral
internalRolekeys"target_conditions*£	:y~¶
List
ctxLoad
internalRolevaluesÌ
List
ctxLoad
internalRoleeltsC
StringLiteral
internalRoleelts"_toolset=="target"*§:yÚ
Dict
internalRoleelts9
StringLiteral
internalRolekeys"arflags*•:y~Õ
StringLiteral
internalRolekeysë
PreviousNoops

end_lineno1450
internalRolenoops_previousz
NoopLine
internalRolelines"L            # Apply a lower optimization level with lto. Chromium does this
*®:äz
NoopLine
internalRolelines"L            # for non-official builds only - a differentiation that doesn't
*©:äI
NoopLine
internalRolelines"            # exist in v8.
*™:ä*®:å"ldflags*´:y~¿
List
ctxLoad
internalRolevalues9
StringLiteral
internalRoleelts"--plugin*¶:yM
StringLiteral
internalRoleelts"<(clang_dir)/lib/LLVMgold.so*¶:y*•:s|
List
internalRolevalues
ctxLoadD
StringLiteral
internalRoleelts"-Wl,--plugin-opt,O1*¨:y*´:s*§":t*§:s*£:s*¢:t*°!:t*°:sÂ
List
internalRoleelts
ctxLoadH
StringLiteral
internalRoleelts"use_lto==1 and clang==0*≤:yÂ
Dict
internalRoleeltsA
StringLiteral
internalRolekeys"target_defaults*≥:y~˘
Dict
internalRolevaluesC
StringLiteral
internalRolekeys"target_conditions*¥	:y~à
List
ctxLoad
internalRolevaluesœ
List
ctxLoad
internalRoleeltsC
StringLiteral
internalRoleelts"_toolset=="target"*µ:y‘
Dict
internalRoleelts9
StringLiteral
internalRolekeys"ldflags*∂:y~q
List
ctxLoad
internalRolevalues9
StringLiteral
internalRoleelts"-flto=32*∑:y*∂:s*µ":t*µ:s*¥:s*≥:t*≤!:t*≤:s‚
List
internalRoleelts
ctxLoadH
StringLiteral
internalRoleelts"use_lto==1 and clang==1*Ω:y‚
Dict
internalRoleeltsA
StringLiteral
internalRolekeys"target_defaults*æ:y~ˆ
Dict
internalRolevaluesC
StringLiteral
internalRolekeys"target_conditions*ø	:y~Ö
List
ctxLoad
internalRolevaluesÃ
List
ctxLoad
internalRoleeltsC
StringLiteral
internalRoleelts"_toolset=="target"*¿:y—
Dict
internalRoleelts9
StringLiteral
internalRolekeys"ldflags*¡:y~n
List
ctxLoad
internalRolevalues6
StringLiteral
internalRoleelts"-flto*¬:y*¡:s*¿":t*¿:s*ø:s*æ:t*Ω!:t*Ω:sù
List
internalRoleelts
ctxLoad<
StringLiteral
internalRoleelts"cfi_diag==1*»:y©

Dict
internalRoleeltsA
StringLiteral
internalRolekeys"target_defaults*…:y~Ω	
Dict
internalRolevaluesC
StringLiteral
internalRolekeys"target_conditions* 	:y~Ã
List
ctxLoad
internalRolevaluesì
List
ctxLoad
internalRoleeltsC
StringLiteral
internalRoleelts"_toolset=="target"*À:yò
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*Ã:y~<
StringLiteral
internalRolekeys"
cflags_cc!*–:y~9
StringLiteral
internalRolekeys"cflags!*”:y~9
StringLiteral
internalRolekeys"ldflags*÷:y~À
List
ctxLoad
internalRolevaluesG
StringLiteral
internalRoleelts"-fno-sanitize-trap=cfi*Õ:yJ
StringLiteral
internalRoleelts"-fno-sanitize-recover=cfi*Œ:y*Ã:sr
List
ctxLoad
internalRolevalues:
StringLiteral
internalRoleelts"	-fno-rtti*—:y*–:sr
List
internalRolevalues
ctxLoad:
StringLiteral
internalRoleelts"	-fno-rtti*‘:y*”:sÀ
List
ctxLoad
internalRolevaluesG
StringLiteral
internalRoleelts"-fno-sanitize-trap=cfi*◊:yJ
StringLiteral
internalRoleelts"-fno-sanitize-recover=cfi*ÿ:y*÷:s*À":t*À:s* :s*…:t*»:t*»:s¥

List
internalRoleelts
ctxLoad<
StringLiteral
internalRoleelts"cfi_vptr==1*ﬁ:y¿	
Dict
internalRoleeltsA
StringLiteral
internalRolekeys"target_defaults*ﬂ:y~‘
Dict
internalRolevaluesC
StringLiteral
internalRolekeys"target_conditions*‡	:y~„
List
ctxLoad
internalRolevalues™
List
ctxLoad
internalRoleeltsC
StringLiteral
internalRoleelts"_toolset=="target"*·:yØ
Dict
internalRoleelts8
StringLiteral
internalRolekeys"cflags*‚:y~9
StringLiteral
internalRolekeys"ldflags*Ë:y~Û
List
ctxLoad
internalRolevaluesE
StringLiteral
internalRoleelts"-fsanitize=cfi-vcall*„:yL
StringLiteral
internalRoleelts"-fsanitize=cfi-derived-cast*‰:yN
StringLiteral
internalRoleelts"-fsanitize=cfi-unrelated-cast*Â:yV
StringLiteral
internalRoleelts"%-fsanitize-blacklist=<(cfi_blacklist)*Ê:y*‚:sõ
List
ctxLoad
internalRolevaluesE
StringLiteral
internalRoleelts"-fsanitize=cfi-vcall*È:yL
StringLiteral
internalRoleelts"-fsanitize=cfi-derived-cast*Í:yN
StringLiteral
internalRoleelts"-fsanitize=cfi-unrelated-cast*Î:y*Ë:s*·":t*·:s*‡:s*ﬂ:t*ﬁ:t*ﬁ:s*—:s*:t*:*:$