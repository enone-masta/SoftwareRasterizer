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
- vcpkg with `VCPKG_ROOT` set

Dependencies are declared in `vcpkg.json`.

Configure and build with CMake presets:

```sh
cmake --preset dev-config
cmake --build --preset dev
```

Release builds use the `release` preset:

```sh
cmake --preset release-config
cmake --build --preset release
```

On Windows, the helper scripts split configure, build, and run steps:

```bat
.\!configure.bat
.\!build.bat
.\!run.bat
```

The helper scripts read local build settings from `!!core_vars.bat`. Edit
`SR_BUILD_PRESETS` to choose `dev`, `release`, or both.

Run `!configure.bat` again after changing CMake or vcpkg files.

## Roadmap

- [x] CMake project bootstrap
- [x] vcpkg dependency manifest
- [x] Windows helper scripts for configure, build, and run
- [x] Windows, Linux, and macOS build workflow
- [ ] Application window
- [ ] Dear ImGui integration
- [ ] Renderer/application separation
- [ ] CPU-owned framebuffer preview
- [ ] Color and depth buffers
- [ ] Lines and triangles
- [ ] Model, view, and projection transforms
- [ ] Culling, clipping, and viewport transform
- [ ] Attribute interpolation
- [ ] Texturing
- [ ] Shader-like C++ interfaces
- [ ] Debug views for depth, barycentric coordinates, wireframe, and overdraw
- [ ] Benchmark and test scene
