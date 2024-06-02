#include <iostream>
#include "SDL2\i686-w64-mingw32\include\SDL2\SDL.h"
#include <complex>

#define MAX_ITERATIONS 1000

const int WIDTH = 800;
const int HEIGHT = 600;

int mandelbrot(std::complex<double> c) {
    std::complex<double> z = 0;
    int iterations = 0;

    while (std::abs(z) <= 2 && iterations < MAX_ITERATIONS) {
        z = z * z + c;
        iterations++;
    }

    return iterations;
}

void renderMandelbrot(SDL_Renderer *renderer) {
    double scale_real = 3.5 / WIDTH;
    double scale_imag = 2.0 / HEIGHT;

    for (int x = 0; x < WIDTH; ++x) {
        for (int y = 0; y < HEIGHT; ++y) {
            std::complex<double> c((x - WIDTH / 2) * scale_real - 0.5, (y - HEIGHT / 2) * scale_imag);

            int iterations = mandelbrot(c);

            // Map the iterations to a color
            int color = 255 * iterations / MAX_ITERATIONS;
            SDL_SetRenderDrawColor(renderer, color, color, color, 255);
            SDL_RenderDrawPoint(renderer, x, y);
        }
    }
}

int main(int argc, char *argv[]) {
    if (SDL_Init(SDL_INIT_EVERYTHING) != 0) {
        std::cout << "SDL_Init Error: " << SDL_GetError() << std::endl;
        return 1;
    }

    SDL_Window *window = SDL_CreateWindow("Mandelbrot Set", SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED, WIDTH, HEIGHT, SDL_WINDOW_ALLOW_HIGHDPI);

    if (window == nullptr) {
        std::cout << "SDL_CreateWindow Error: " << SDL_GetError() << std::endl;
        SDL_Quit();
        return 1;
    }

    SDL_Renderer *renderer = SDL_CreateRenderer(window, -1, SDL_RENDERER_ACCELERATED | SDL_RENDERER_PRESENTVSYNC);

    if (renderer == nullptr) {
        SDL_DestroyWindow(window);
        std::cout << "SDL_CreateRenderer Error: " << SDL_GetError() << std::endl;
        SDL_Quit();
        return 1;
    }

    renderMandelbrot(renderer);

    SDL_RenderPresent(renderer);

    SDL_Event event;
    bool quit = false;
    while (!quit) {
        while (SDL_PollEvent(&event)) {
            if (event.type == SDL_QUIT) {
                quit = true;
            }
        }
    }

    SDL_DestroyRenderer(renderer);
    SDL_DestroyWindow(window);
    SDL_Quit();

    return 0;
}
