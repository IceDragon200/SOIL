solution "SOIL"
  location "build"
  configurations { "Debug", "Release" }
  project "SIL"
    language "C"
    kind "StaticLib"
    links { "GL" }
    includedirs { "include", "src", "../sil/include" }
    files { "src/*.c" }
    targetdir "build"
    configuration "Debug"
      defines { "DEBUG" }
      flags { "Symbols", "ExtraWarnings"}

    configuration "Release"
      defines { "NDEBUG" }
      flags { "Optimize", "ExtraWarnings"}
