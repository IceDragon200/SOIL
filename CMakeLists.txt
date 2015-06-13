CMAKE_MINIMUM_REQUIRED(VERSION 2.8.5)

include_directories(
  "include"
)

add_library(SOIL
  "src/SOIL.c"
  "src/image_DXT.c"
  "src/image_helper.c"
)
