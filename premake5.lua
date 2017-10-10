-- premake5.lua
workspace "MOtToolkit"
configurations { "Debug", "Release" }
platforms { "x64", "x86" }
location "build"

project "glue-fonts"
    kind "ConsoleApp"
    language "C"
    targetdir "bin/%{cfg.buildcfg}-%{cfg.platform}"

    files { "glue-fonts/**.h", "glue-fonts/**.c" }
    
    filter "system:windows"
        flags { "StaticRuntime" }
    filter {}

    filter "configurations:Debug"
        defines { "DEBUG" }
        symbols "On"
    filter "configurations:Release"
        defines { "NDEBUG" }
        optimize "On"
    filter {}
