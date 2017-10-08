-- premake5.lua
workspace "MOtToolkit"
configurations { "Debug", "Release" }
location "build"

project "glue-fonts"
    kind "ConsoleApp"
    language "C"
    targetdir "bin/%{cfg.buildcfg}"

    files { "glue-fonts/**.h", "glue-fonts/**.c" }

    filter "configurations:Debug"
    defines { "DEBUG" }
    symbols "On"

    filter "configurations:Release"
    defines { "NDEBUG" }
    optimize "On"