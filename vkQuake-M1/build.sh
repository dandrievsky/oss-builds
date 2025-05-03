SCRIPT_DIR=$(dirname "$0")
PROJECT_DIR=project

pushd $PROJECT_DIR
brew install molten-vk vulkan-headers glslang spirv-tools sdl2 libvorbis flac opus opusfile flac mpg123 meson pkgconfig
meson build && ninja -C build
popd

#copy dependencies
mkdir $PROJECT_DIR/build/all

python $SCRIPT_DIR/deps.py $PROJECT_DIR/build/vkquake | tee $PROJECT_DIR/build/all/deps.txt | grep "/opt/homebrew/" | while read LINE || [[ -n $line ]];
do
   cp $LINE $PROJECT_DIR/build/all
done