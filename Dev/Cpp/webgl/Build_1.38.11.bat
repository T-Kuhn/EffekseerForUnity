@echo off

rem Enable Visual Studio 2015 environment
call "%VS140COMNTOOLS% \VsDevCmd.bat"

call emsdk activate sdk-1.38.11-64bit

rem emscripten configuration
call emcmake cmake -G "MinGW Makefiles"

rem build
nmake

copy libEffekseerUnity.bc ..\..\Plugin\Assets\Effekseer\Plugins\WebGL\1.38.11-64bit\