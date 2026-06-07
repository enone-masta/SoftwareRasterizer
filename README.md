# SoftwareRasterizer

A C++20 software rasterizer focused on rendering fundamentals, debug visualization,
and cross-platform tooling.

## Status

This project is in the early bootstrap stage. The current focus is repository
structure, CMake-based builds, and continuous integration across Windows, Linux,
and macOS.

The renderer itself is intentionally being built step by step as a learning
project.

## Goals

- Build a software rasterizer from scratch in modern C++.
- Keep rendering code separate from platform, windowing, and UI code.
- Use Dear ImGui later as a debug and control interface.
- Maintain a clean public repository suitable for portfolio review.
- Keep the project buildable on Windows, Linux, and macOS.

## Building

Requirements:

- CMake 3.24 or newer
- A C++20 compiler

Configure and build:

```sh
cmake -S . -B build
cmake --build build --config Debug
```

On Windows, the helper scripts can also be used:

```bat
.\!build.bat
.\!run.bat
```

## Roadmap

- CMake project bootstrap
- Application window and Dear ImGui integration
- CPU-owned framebuffer preview
- Color and depth buffers
- Lines and triangles
- Model, view, and projection transforms
- Culling, clipping, and viewport transform
- Attribute interpolation
- Texturing
- Shader-like C++ interfaces
- Debug views for depth, barycentric coordinates, wireframe, and overdraw
- Benchmark and test scene
