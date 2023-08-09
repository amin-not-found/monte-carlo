#include "raylib.h"
#include <cmath>
#include <random>
#include <iostream>

int main() {
    // Initialization
    const int screenWidth = 1200;
    const int screenHeight = 800;
    bool pause = false;
    std::random_device dev;
    std::mt19937_64 rng(dev());
    std::uniform_int_distribution<> dist(0, screenHeight);
    int total_count = 0;
    int inside_count = 0;
    double pi{};
    double error_percent{100};

    InitWindow(screenWidth, screenHeight, "Monte Carlo Pi Estimation");

    Vector2 boardSize = {(float) screenWidth - screenHeight, (float) screenHeight};
    Vector2 origin = {.0f, .0f};
    Vector2 center = {boardSize.x + (float) screenHeight / 2, (float) screenHeight / 2};

    //SetTargetFPS(60);

    // Main game loop
    while (!WindowShouldClose())    // Detect window close button or ESC key
    {
        if (IsKeyReleased(KEY_SPACE)) pause = !pause;
        PollInputEvents();
        if (pause) continue;

        std::mt19937::result_type x = dist(rng) + (int) boardSize.x;
        std::mt19937::result_type y = dist(rng);

        double distance = std::sqrt(((double) x - center.x) * ((double) x - center.x) +
                                    ((double) y - center.y) * ((double) y - center.y));

        bool isInside = distance < screenHeight / 2.0;
        if (isInside) inside_count++;
        total_count++;
        Color color = isInside ? GREEN : RED;
        pi = (double) inside_count / (double) total_count * 4.0;
        error_percent = (std::abs(pi - PI)/PI) * 100;

        // Draw
        BeginDrawing();

        DrawCircleV(center, 2.0f, WHITE);

        DrawCircle(x, y, 1.5f, color);

        DrawRectangleV(origin, boardSize, RAYWHITE);

        DrawText(TextFormat("All points: %d", total_count), 10, 10, 20, DARKGRAY);
        DrawText(TextFormat("Points inside: %d", inside_count), 10, 40, 20, DARKGRAY);
        DrawText(TextFormat("Pi estimation: %lf", pi), 10, 80, 20, DARKGRAY);
        DrawText(TextFormat("Error Percentage: %lf%", error_percent), 10, 110, 20, DARKGRAY);
        DrawText(TextFormat("Elapsed Time: %lf%", GetTime()), 10, 150, 20, DARKGRAY);

        EndDrawing();
    }

    CloseWindow();        // Close window and OpenGL context
    return 0;
}