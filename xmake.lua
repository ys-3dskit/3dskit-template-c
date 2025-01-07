add_repositories("3dskit git@github.com:ys-3dskit/3dskit-repo")

add_requires(
  "libctru ~2.3.1"
--, "citro3d ~1.7.1"
--, "citro2d ~1.6.0"
)

includes("3dskit.lua")

add_rules("mode.debug", "mode.release")

target("your-app-name")
	set_kind("binary")

	add_rules("3ds")
	set_toolchains("devkitarm")

	set_values("3ds.name", "your-app-name")
	set_values("3ds.description", "your app description")
	set_values("3ds.author", "your author name")

	add_files("src/**.c")

	add_packages("libctru")

	set_strip("debug")
