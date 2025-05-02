sudo apt update
sudo apt install make g++ libsdl1.2-dev libsdl-ttf2.0-dev libsdl-gfx1.2-dev libsdl-mixer1.2-dev libglew-dev

# apt install curl
# curl -LOJ "https://github.com/zenorogue/hyperrogue/archive/refs/tags/v13.0x.tar.gz"
#tar -xf hyperrogue-13.0x.tar.gz

ls -lah
cd hyperrogue
HYPERROGUE_USE_GLEW=1 HYPERROGUE_USE_PNG=1 make
