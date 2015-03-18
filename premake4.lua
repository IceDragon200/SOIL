solution "SOIL"
  location "build"
  configurations { "Debug", "Release" }
  project "SOIL"
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

  project "test"
    language "C++"
    kind "ConsoleApp"
    links { "GL", "SOIL" }
    includedirs { "include", "test", "../sil/include" }
    files { "test/test_SOIL.cpp" }
    targetdir "build"
    configuration "Debug"
      defines { "DEBUG" }
      flags { "Symbols", "ExtraWarnings"}

    configuration "Release"
      defines { "NDEBUG" }
      flags { "Optimize", "ExtraWarnings"}
