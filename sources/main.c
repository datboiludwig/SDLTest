#include <stdio.h>

#include <SDL2/SDL.h>
#include <SDL2/SDL_image.h>

#define true 1
#define false 0

typedef enum
{
    MILLY,
    MWEP
} cat;

int main(int argc, char *argv[])
{

    SDL_Init(SDL_INIT_EVERYTHING);
    IMG_Init(IMG_INIT_PNG);

    SDL_Window *window = SDL_CreateWindow("Hello", SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED, 1280, 720, SDL_WINDOW_ALLOW_HIGHDPI);
    SDL_Renderer *renderer = SDL_CreateRenderer(window, -1, SDL_RENDERER_ACCELERATED);

    SDL_Texture *mwep = IMG_LoadTexture(renderer, "assets/mwep.png");
    SDL_Texture *milly = IMG_LoadTexture(renderer, "assets/milly.png");

    cat whichCat = MWEP;

    unsigned char gameRunning = true;
    SDL_Event event;

    while (gameRunning)
    {
        while (SDL_PollEvent(&event))
        {
            if (event.type == SDL_QUIT)
            {
                gameRunning = false;
            }
            if (event.type == SDL_KEYDOWN && event.key.keysym.sym == SDLK_SPACE)
            {
                whichCat = !whichCat;
            }
        }

        SDL_RenderClear(renderer);
        if (whichCat)
            SDL_RenderCopy(renderer, mwep, NULL, NULL);
        else
            SDL_RenderCopy(renderer, milly, NULL, NULL);

        SDL_RenderPresent(renderer);
    }

    SDL_DestroyTexture(mwep);
    SDL_DestroyRenderer(renderer);
    SDL_DestroyWindow(window);
    SDL_Quit();
}