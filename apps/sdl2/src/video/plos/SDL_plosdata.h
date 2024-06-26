/*
  Simple DirectMedia Layer
  Copyright (C) 2017 BlackBerry Limited

  This software is provided 'as-is', without any express or implied
  warranty.  In no event will the authors be held liable for any damages
  arising from the use of this software.

  Permission is granted to anyone to use this software for any purpose,
  including commercial applications, and to alter it and redistribute it
  freely, subject to the following restrictions:

  1. The origin of this software must not be misrepresented; you must not
     claim that you wrote the original software. If you use this software
     in a product, an acknowledgment in the product documentation would be
     appreciated but is not required.
  2. Altered source versions must be plainly marked as such, and must not be
     misrepresented as being the original software.
  3. This notice may not be removed or altered from any source distribution.
*/

#ifndef __SDL_BOOKOS_H__
#define __SDL_BOOKOS_H__

#include "../SDL_sysvideo.h"
#include <gui.h>

typedef struct {
    int startTextInput;
    window_t wnd;
    SDL_Window *window;
    uint32_t shift;
    uint32_t caps_lock;
    uint32_t ctrl;
    uint32_t alt;
} SDL_VideoData;

typedef struct {
    window_t window;
    unsigned *fb;
    unsigned *fb1;
    SDL_VideoData *deviceData;
} SDL_WindowData;

#endif
