#include <iostream>
#include <F:\SPO\SDL2\i686-w64-mingw32\include\SDL2\SDL.h>
#include <complex>
#include <chrono>
#include <thread>
#include <vector>
#include <queue>
#include <mutex>
#include <condition_variable>

#define MAX_ITERATIONS 255

const int WIDTH = 800;
const int HEIGHT = 600;
const int NUM_THREADS = 8;

struct Task {
    int startY, endY;
};

std::queue<Task> taskQueue;
std::mutex queueMutex;
std::condition_variable cv;
bool done = false;

int mandelbrot(std::complex<double> c) {
    std::complex<double> z = 0;
    int iterations = 0;

    while (std::abs(z) <= 2 && iterations < MAX_ITERATIONS) {
        z = z * z + c;
        iterations++;
    }

    return iterations;
}

void workerFunction(SDL_Renderer *renderer, int width, int height) {
    double scale_real = 3.5 / width;
    double scale_imag = 2.0 / height;

    while (true) {
        Task task;

        {
            std::unique_lock<std::mutex> lock(queueMutex);
            cv.wait(lock, [] { return !taskQueue.empty() || done; });

            if (done && taskQueue.empty()) return;

            task = taskQueue.front();
            taskQueue.pop();
        }

        for (int y = task.startY; y < task.endY; ++y) {
            for (int x = 0; x < width; ++x) {
                std::complex<double> c((x - width / 2) * scale_real - 0.5, (y - height / 2) * scale_imag);
                int iterations = mandelbrot(c);

                int color = 255 * iterations / MAX_ITERATIONS;
                SDL_SetRenderDrawColor(renderer, color, color, color, 255);
                SDL_RenderDrawPoint(renderer, x, y);
            }
        }
    }
}

void renderMandelbrot(SDL_Renderer *renderer, int width, int height) {
    const int chunkSize = height / NUM_THREADS;

    for (int i = 0; i < NUM_THREADS; ++i) {
        int startY = i * chunkSize;
        int endY = (i == NUM_THREADS - 1) ? height : startY + chunkSize;
        taskQueue.push({startY, endY});
    }

    std::vector<std::thread> workers;
    for (int i = 0; i < NUM_THREADS; ++i) {
        workers.emplace_back(workerFunction, renderer, width, height);
    }

    for (auto &worker : workers) {
        worker.join();
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

    auto start = std::chrono::high_resolution_clock::now();

    renderMandelbrot(renderer, WIDTH, HEIGHT);

    auto end = std::chrono::high_resolution_clock::now();
    std::chrono::duration<double> elapsed = end - start;
    std::cout << "Time taken to generate Mandelbrot set: " << elapsed.count() << " seconds" << std::endl;

    SDL_RenderPresent(renderer);

    {
        std::unique_lock<std::mutex> lock(queueMutex);
        done = true;
    }
    cv.notify_all();

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
