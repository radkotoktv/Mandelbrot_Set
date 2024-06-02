#include <iostream>
#include <fstream>
#include <complex>
#include <chrono>

// Function to determine if a complex number is in the Mandelbrot set
int mandelbrot(std::complex<double> c, int max_iterations) {
    std::complex<double> z = 0;
    int iterations = 0;
    while (std::abs(z) < 2.0 && iterations < max_iterations) {
        z = z * z + c;
        iterations++;
    }
    return iterations;
}

// Function to generate the Mandelbrot set and save it to a PPM file
void generate_mandelbrot(const std::string& filename, int width, int height, int max_iterations) {
    std::ofstream file(filename);
    if (!file.is_open()) {
        std::cerr << "Error opening file." << std::endl;
        return;
    }

    // PPM header
    file << "P3\n" << width << " " << height << "\n255\n";

    // Define the complex plane boundaries
    double xmin = -2.5, xmax = 1;
    double ymin = -1, ymax = 1;

    for (int y = 0; y < height; y++) {
        double imag = ymin + (ymax - ymin) * y / height;
        for (int x = 0; x < width; x++) {
            double real = xmin + (xmax - xmin) * x / width;
            std::complex<double> c(real, imag);

            int iterations = mandelbrot(c, max_iterations);

            int r = 0, g = 0, b = 0;  // Default to black for points in the set
            if (iterations < max_iterations) {
                // Gradient for points outside the set
                double t = static_cast<double>(iterations) / max_iterations;
                r = static_cast<int>(255 * t);  // Red gradient
                g = static_cast<int>(255 * (2 * t > 1 ? 1 : 2 * t));
                b = static_cast<int>(255 * (1 - t));  // Blue gradient
            }

            file << r << " " << g << " " << b << " ";  // Write RGB values
        }
        file << "\n";
    }

    file.close();
}

int main() {
    int width = 1920;  // Image width
    int height = 1080;  // Image height
    int max_iterations = 1000;  // Maximum iterations for convergence

    std::string filename = "mandelbrot_filled.ppm";

    // Start timing
    auto start = std::chrono::high_resolution_clock::now();

    // Generate the Mandelbrot set
    generate_mandelbrot(filename, width, height, max_iterations);

    // End timing
    auto end = std::chrono::high_resolution_clock::now();
    std::chrono::duration<double> duration = end - start;

    std::cout << "Filled-in Mandelbrot set image generated: " << filename << std::endl;
    std::cout << "Time taken: " << duration.count() << " seconds" << std::endl;

    return 0;
}
