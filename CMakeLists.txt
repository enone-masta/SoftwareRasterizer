cmake_minimum_required(VERSION 3.24)

# Project metadata and enabled languages.
project(SoftwareRasterizer
    VERSION 0.1.0
    LANGUAGES CXX
)

# Main desktop application executable.
add_executable(SoftwareRasterizer
    app/main.cpp
)

# Require C++20 for this target.
target_compile_features(SoftwareRasterizer PRIVATE cxx_std_20)