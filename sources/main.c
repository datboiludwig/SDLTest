#include <stdio.h>

#include <SDL.h>

#define true 1
#define false 0

int main(int argc, char* argv[]) {

    SDL_Init(SDL_INIT_EVERYTHING);

    SDL_Window* window = SDL_CreateWindow("Hello", SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED, 1280, 720, SDL_WINDOW_ALLOW_HIGHDPI);

    unsigned char gameRunning = true;
    SDL_Event event;

    while(gameRunning) {
        while(SDL_PollEvent(&event)) {
            if(event.type == SDL_QUIT) {
                gameRunning = false;
            }
        }
    }

    SDL_DestroyWindow(window);
    SDL_Quit();
}