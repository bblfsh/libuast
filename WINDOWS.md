# Installing libuast on Windows

There are two supported options how to build `libuast` on Windows: using
MinGW or Visual Studio.

## Prerequisites

* [cmake](https://cmake.org/download/)
* [git](http://gitforwindows.org/)

`cmake` and `git` must be in `%PATH%`. The installation prefix
%PREFIX% must be defined, e.g. `SET PREFIX=c:\opt`

### MinGW

You may choose to install everything through [MSYS2](http://www.msys2.org/)
or download just the needed software:

* [tdm-gcc](http://tdm-gcc.tdragon.net)
* [GNU make](http://www.equation.com/servlet/equation.cmd?fa=make)

In the latter case, all the commands are supposed to be run in "MinGW Command Prompt".

### MSVC++

* [MSVC++](https://www.visualstudio.com/vs/cplusplus/)

All the commands are supposed to be run in
[Developer Command Prompt for Visual Studio](https://docs.microsoft.com/en-us/dotnet/framework/tools/developer-command-prompt-for-vs)
which **must** match the host architecture (32 or 64 bit).

## Common steps

Fetch the source code:

```
git clone https://github.com/GNOME/libxml2
git clone https://github.com/bblfsh/libuast
```

## MinGW

### libxml2

```
cd libxml2\win32
cscript configure.js ftp=no http=no c14n=no docb=no iconv=no legacy=no prefix=%PREFIX% compiler=mingw
make -f Makefile.mingw install
cd ..\..
```

### libuast

```
cd libuast
mkdir build
cd build
cmake -G "MinGW Makefiles" -DCMAKE_INSTALL_PREFIX=%PREFIX% -DLIBXML2_LIBRARY=%PREFIX%\lib\libxml2.a -DLIBXML2_INCLUDE_DIR=%PREFIX%\include\libxml2 -DDISABLE_EXAMPLES=1 ..
make install
cd ..\..
```

The resulting DLL will be statically linked to libxml2. If you want to
link dynamically, use `-DLIBXML2_LIBRARY=%PREFIX%\bin\libxml2.dll` instead.
**The path contains `\bin`, not `\lib`.**

## MSVC++

### libxml2

```
cd libxml2\win32
cscript configure.js ftp=no http=no c14n=no docb=no iconv=no legacy=no prefix=%PREFIX%
nmake /f Makefile.msvc install
cd ..\..
```

### libuast

```
cd libuast
mkdir build
cd build
cmake -DCMAKE_GENERATOR_PLATFORM=x64 -DCMAKE_INSTALL_PREFIX=%PREFIX% -DLIBXML2_LIBRARY=%PREFIX%\lib\libxml2.lib -DLIBXML2_INCLUDE_DIR=%PREFIX%\include\libxml2 -DDISABLE_EXAMPLES=1 ..
cmake --build . --target install --config Release
cd ..\..
```