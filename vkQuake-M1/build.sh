SCRIPT_DIR=$(dirname "$0")
PROJECT_DIR=project
EXE=$PROJECT_DIR/build/vkquake
OUT_DIR=$PROJECT_DIR/build/all

#build deps and exe
pushd $PROJECT_DIR
brew install molten-vk vulkan-headers glslang spirv-tools sdl2 libvorbis flac opus opusfile flac mpg123 meson pkgconfig
meson build && ninja -C build
popd

#copy deps and exe
mkdir -p $OUT_DIR
python $SCRIPT_DIR/deps.py $EXE | tee $OUT_DIR/deps.txt | grep "/opt/homebrew/" | while read LINE || [[ -n $line ]];
do
   cp $LINE $OUT_DIR
done
cp $EXE $OUT_DIR