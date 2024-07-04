#include <stdlib.h>
#include <stdio.h>
#include <3ds.h>

int main()
{
  gfxInitDefault();
  consoleInit(GFX_TOP, NULL);

  printf("Hello, World!");

  while (aptMainLoop())
  {
    gspWaitForVBlank();
    gfxSwapBuffers();
    hidScanInput();

    u32 kDown = hidKeysDown();
    if (kDown & KEY_START)
      break; // return to hbmenu
  }

  gfxExit();
  return 0;
}
