#include <iostream>
#include <F:\SPO\SDL2\i686-w64-mingw32\include\SDL2\SDL.h>
#include <complex>
#include <chrono>
#include <pthread.h>
#include <queue>
#include <vector>

#define MAX_ITERATIONS 255
#define NUM_THREADS 8
#define TILE_SIZE 10

const int WIDTH = 800;
const int HEIGHT = 600;

struct Task {
    int startX, startY, endX, endY;
};

std::queue<Task> taskQueue;
pthread_mutex_t queueMutex;
pthread_cond_t cv;
bool done = false;
std::vector<std::vector<int>> pixelBuffer(HEIGHT, std::vector<int>(WIDTH));

int mandelbrot(std::complex<double> c) {
    std::complex<double> z = 0;
    int iterations = 0;

    while (std::abs(z) <= 2 && iterations < MAX_ITERATIONS) {
        z = z * z + c;
        iterations++;
    }

    return iterations;
}

void* workerFunction(void* arg) {
    int width = WIDTH;
    int height = HEIGHT;
    double scale_real = 3.5 / width;
    double scale_imag = 2.0 / height;

    while (true) {
        Task task;

        pthread_mutex_lock(&queueMutex);
        while (taskQueue.empty() && !done) {
            pthread_cond_wait(&cv, &queueMutex);
        }

        if (done && taskQueue.empty()) {
            pthread_mutex_unlock(&queueMutex);
            return nullptr;
        }

        if (!taskQueue.empty()) {
            task = taskQueue.front();
            taskQueue.pop();
            pthread_mutex_unlock(&queueMutex);

            for (int y = task.startY; y < task.endY; ++y) {
                for (int x = task.startX; x < task.endX; ++x) {
                    std::complex<double> c((x - width / 2) * scale_real - 0.5, (y - height / 2) * scale_imag);
                    int iterations = mandelbrot(c);

                    int color = 255 * iterations / MAX_ITERATIONS;
                    pixelBuffer[y][x] = color;
                }
            }
        } else {
            pthread_mutex_unlock(&queueMutex);
        }
    }
}

void createTasks() {
    for (int y = 0; y < HEIGHT; y += TILE_SIZE) {
        for (int x = 0; x < WIDTH; x += TILE_SIZE) {
            int endX = std::min(x + TILE_SIZE, WIDTH);
            int endY = std::min(y + TILE_SIZE, HEIGHT);
            taskQueue.push({x, y, endX, endY});
        }
    }
}

void renderMandelbrot() {
    createTasks();

    pthread_t workers[NUM_THREADS];
    for (int i = 0; i < NUM_THREADS; ++i) {
        pthread_create(&workers[i], nullptr, workerFunction, nullptr);
    }

    for (int i = 0; i < NUM_THREADS; ++i) {
        pthread_join(workers[i], nullptr);
    }
}

void draw(SDL_Renderer* renderer) {
    for (int y = 0; y < HEIGHT; ++y) {
        for (int x = 0; x < WIDTH; ++x) {
            int color = pixelBuffer[y][x];
            SDL_SetRenderDrawColor(renderer, color, color, color, 255);
            SDL_RenderDrawPoint(renderer, x, y);
        }
    }
}

int main(int argc, char* argv[]) {
    if (SDL_Init(SDL_INIT_EVERYTHING) != 0) {
        std::cout << "SDL_Init Error: " << SDL_GetError() << std::endl;
        return 1;
    }

    SDL_Window* window = SDL_CreateWindow("Mandelbrot Set", SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED, WIDTH, HEIGHT, SDL_WINDOW_ALLOW_HIGHDPI);

    if (window == nullptr) {
        std::cout << "SDL_CreateWindow Error: " << SDL_GetError() << std::endl;
        SDL_Quit();
        return 1;
    }

    SDL_Renderer* renderer = SDL_CreateRenderer(window, -1, SDL_RENDERER_ACCELERATED | SDL_RENDERER_PRESENTVSYNC);

    if (renderer == nullptr) {
        SDL_DestroyWindow(window);
        std::cout << "SDL_CreateRenderer Error: " << SDL_GetError() << std::endl;
        SDL_Quit();
        return 1;
    }

    pthread_mutex_init(&queueMutex, nullptr);
    pthread_cond_init(&cv, nullptr);

    auto start = std::chrono::high_resolution_clock::now();

    renderMandelbrot();

    auto end = std::chrono::high_resolution_clock::now();
    std::chrono::duration<double> elapsed = end - start;
    std::cout << "Time taken to generate Mandelbrot set: " << elapsed.count() << " seconds" << std::endl;

    draw(renderer);
    SDL_RenderPresent(renderer);

    // Signal the worker threads to exit
    pthread_mutex_lock(&queueMutex);
    done = true;
    pthread_mutex_unlock(&queueMutex);
    pthread_cond_broadcast(&cv);

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

    pthread_mutex_destroy(&queueMutex);
    pthread_cond_destroy(&cv);

    return 0;
}
