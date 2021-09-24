#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <unistd.h>
#include <sys/mman.h>

// https://stackoverflow.com/questions/9596945/how-to-get-appropriate-timestamp-in-c-for-logs
char *timestamp()
{
  time_t ltime; /* calendar time */
  ltime = time(NULL); /* get current cal time */
  return asctime(localtime(&ltime));
}

int main() {
  size_t gigabyte = 1073741824;
  size_t bytes = gigabyte;
  unsigned int tests = 0;
  unsigned char total = 0;
  int divis = bytes/gigabyte;
  printf("=== Bitflipped ===\n");
  printf("==================\n");
  printf("Allocating a %d gigabytes ...\n", divis);
  unsigned char *buffer = (unsigned char *)calloc(bytes, 1);

  // Ensure the buffer is actually resident in RAM
  mlock(buffer, bytes);
  memset(buffer, 0, bytes);

  printf("Run started: %s\n", timestamp());
  int time = 0;
  fflush(stdout);
  while (total == 0) {
    // We aren't going to miss a bitflip by being slow
    sleep(10);

    // Naively walk through and tally all zero bytes
    for (size_t i = 0; i < bytes; ++i) {
      total += buffer[i];
    }

    // Keep the user sane that it isn't frozen :)
    fprintf(stderr, "\rTest run # %d", tests);
    fprintf(stderr, "\n# of flips %d", total);
    fprintf(stderr, "\ntime %d", time);
    ++tests;
    time += 10;
  }

  printf("--- !!! ---");
  printf("Error detected: %s\n", timestamp());
  printf("Result should be 0 but is %d\n", total);
  printf("Total tests run: %d\n", tests);

}
