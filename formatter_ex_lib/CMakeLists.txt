# lab3-4/formatter_ex_lib/CMakeLists.txt

cmake_minimum_required(VERSION 3.10)
project(FormatterExLib)

# Создаём статическую библиотеку 'formatter_ex'
add_library(formatter_ex STATIC formatter_ex.cpp)

# Линкуем с formatter (если formatter_ex использует его функции)
target_link_libraries(formatter_ex PUBLIC formatter)

# Указываем, где искать заголовочные файлы для этой библиотеки
target_include_directories(formatter_ex PUBLIC
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}>
    $<INSTALL_INTERFACE:include>
)

# Если хотите явно указать, какие заголовочные файлы предоставляются:
set_target_properties(formatter_ex PROPERTIES
    PUBLIC_HEADER "formatter_ex.h"
)
