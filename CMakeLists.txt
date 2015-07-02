CMAKE_MINIMUM_REQUIRED(VERSION 2.8.5)

if (NOT SIL_INCLUDE_DIR)
  message(FATAL_ERROR "SIL_INCLUDE_DIR was not set")
endif(NOT SIL_INCLUDE_DIR)

include_directories(
  ${SIL_INCLUDE_DIR}
  "include"
)

add_library(SOIL STATIC
  "src/SOIL.c"
  "include/SOIL.h"
  "src/image_DXT.c"
  "src/image_DXT.h"
  "src/image_helper.c"
  "src/image_helper.h"
  "src/stbi_DDS_aug.h"
  "src/stbi_DDS_aug_c.h"
)
