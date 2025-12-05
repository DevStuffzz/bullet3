-- Bullet Physics premake5.lua
project "Bullet3"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "off"

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
        "src/BulletCollision/**.cpp",
        "src/BulletCollision/**.h",
        "src/BulletDynamics/**.cpp",
        "src/BulletDynamics/**.h",
        "src/BulletSoftBody/**.cpp",
        "src/BulletSoftBody/**.h",
        "src/LinearMath/**.cpp",
        "src/LinearMath/**.h"
    }

    includedirs
    {
        "src"
    }

    filter "system:windows"
        systemversion "latest"

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"
