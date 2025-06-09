# lab3-4/CMakeLists.txt

cmake_minimum_required(VERSION 3.10) # Минимальная требуемая версия CMake
project(Lab3 LANGUAGES CXX) # Объявляем проект и указываем язык C++

# Установка стандарта C++ (например, C++17)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED TRUE)
set(CMAKE_POSITION_INDEPENDENT_CODE ON) # Важно для общих библиотек

# Добавляем подкаталоги с библиотеками
add_subdirectory(formatter_lib)
add_subdirectory(formatter_ex_lib)

# Добавляем подкаталоги с приложениями
add_subdirectory(hello_world)
add_subdirectory(solver_lib)
add_subdirectory(solver)

# CPack настройки
set(CPACK_PROJECT_CONFIG_FILE "${PROJECT_SOURCE_DIR}/CPackConfig.cmake")
include(CPack)
