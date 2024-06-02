all:
	g++ -I SDL2/i686-w64-mingw32/include -L SDL2/i686-w64-mingw32/lib -o main MandelMasterSmallSDL.cpp -lmingw32 -lSDL2main -lSDL2 -lpthread