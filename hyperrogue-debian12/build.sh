sudo apt update
sudo apt install make g++ libsdl1.2-dev libsdl-ttf2.0-dev libsdl-gfx1.2-dev libsdl-mixer1.2-dev libglew-dev

cd project
HYPERROGUE_USE_GLEW=1 HYPERROGUE_USE_PNG=1 make
