#include <iostream>
#include <F:\SPO\SDL2\i686-w64-mingw32\include\SDL2\SDL.h>
#include <complex>
#include <chrono>
#include <pthread.h>
#include <vector>

#define MAX_ITERATIONS 100

const int WIDTH = 800;
const int HEIGHT = 600;
const int NUM_THREADS = 1;
const int TILE_SIZE = 400;  // Size of the smaller parts

std::vector<std::vector<int>> pixelBuffer(HEIGHT, std::vector<int>(WIDTH));

struct Task {
    int startX, startY, endX, endY;
};

std::vector<Task> tasks;
int currentTaskIndex = 0;
pthread_mutex_t taskMutex = PTHREAD_MUTEX_INITIALIZER;

int mandelbrot(std::complex<double> c) {
    std::complex<double> z = 0;
    int iterations = 0;

    while (std::abs(z) <= 2 && iterations < MAX_ITERATIONS) {
        z = z * z + c;
        iterations++;
    }

    return iterations;
}

void processTask(const Task& task) {
    double scale_real = 3.5 / WIDTH;
    double scale_imag = 2.0 / HEIGHT;

    for (int y = task.startY; y < task.endY; ++y) {
        for (int x = task.startX; x < task.endX; ++x) {
            std::complex<double> c((x - WIDTH / 2) * scale_real - 0.5, (y - HEIGHT / 2) * scale_imag);
            int iterations = mandelbrot(c);

            int color = 255 * iterations / MAX_ITERATIONS;
            pixelBuffer[y][x] = color;
        }
    }
}

void* workerFunction(void* arg) {
    while (true) {
        Task task;

        // Lock and get the next task index
        pthread_mutex_lock(&taskMutex);
        if (currentTaskIndex >= tasks.size()) {
            pthread_mutex_unlock(&taskMutex);
            break;
        }
        task = tasks[currentTaskIndex];
        currentTaskIndex++;
        pthread_mutex_unlock(&taskMutex);

        // Process the task
        processTask(task);
    }

    return nullptr;
}

void createTasks() {
    for (int y = 0; y < HEIGHT; y += TILE_SIZE) {
        for (int x = 0; x < WIDTH; x += TILE_SIZE) {
            Task task;
            task.startX = x;
            task.startY = y;
            task.endX = std::min(x + TILE_SIZE, WIDTH);
            task.endY = std::min(y + TILE_SIZE, HEIGHT);
            tasks.push_back(task);
        }
    }
}

void renderMandelbrot() {
    pthread_t workers[NUM_THREADS];

    // Create initial tasks
    createTasks();

    // Create worker threads
    for (int i = 0; i < NUM_THREADS; ++i) {
        pthread_create(&workers[i], nullptr, workerFunction, nullptr);
    }

    // Wait for all threads to finish
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

    auto start = std::chrono::high_resolution_clock::now();

    renderMandelbrot();

    auto end = std::chrono::high_resolution_clock::now();
    std::chrono::duration<double> elapsed = end - start;
    std::cout << "Time taken to generate Mandelbrot set: " << elapsed.count() << " seconds" << std::endl;

    draw(renderer);
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
