brew install molten-vk vulkan-headers glslang spirv-tools sdl2 libvorbis flac opus opusfile flac mpg123 meson pkgconfig

cd project
meson build && ninja -C build

#copy dependencies
mkdir ./build/all
cp ./build/vkquake ./build/all/
cp /usr/lib/libSystem.B.dylib ./build/all/
cp /opt/homebrew/opt/sdl2/lib/libSDL2-2.0.0.dylib ./build/all/
cp /opt/homebrew/opt/molten-vk/lib/libMoltenVK.dylib ./build/all/
cp /opt/homebrew/opt/mpg123/lib/libmpg123.0.dylib ./build/all/
cp /opt/homebrew/opt/flac/lib/libFLAC.14.dylib ./build/all/
cp /opt/homebrew/opt/libvorbis/lib/libvorbisfile.3.dylib ./build/all/
cp /opt/homebrew/opt/opusfile/lib/libopusfile.0.dylib ./build/all/