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
char *stringify(int intg) {
  char* str;
  asprintf (&str, "%i", intg);
  return str;
}

int main() {
  size_t gigabyte = 1073741824;
  size_t bytes = gigabyte;
  FILE *f;
  int x = 0;
  int h, m, s;
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
  
  
  while (time < 3600) {
    f = fopen("x.log", "a+");
    if (x == 0) {
      fputs(timestamp(), f);
      fputs("\n", f);
        #if __APPLE__
        fputs("device: Apple", f);
      #elif _WIN32
          fputs("device: Windows", f);
      #elif __LINUX__
          fputs("device: Linux", f);
      #elif BSD
          fputs("device: BSD", f);
      #else
          fputs("device: Unknown", f);
      #endif
      fputs("\n", f);
      fputs("\ntest, total, time\n", f);
      x += 1;
    }
    // We aren't going to miss a bitflip by being slow
    sleep(10);

    // Naively walk through and tally all zero bytes
    for (size_t i = 0; i < bytes-1; ++i) {
      total += buffer[i];

    }
    h = (time/3600); 
	
    m = (time -(3600*h))/60;
      
    s = (time -(3600*h)-(m*60));
      
    char* cookie;
    
    fprintf(stderr, "\rTest run # %d", tests);
    fprintf(stderr, "\n# of flips %d", total);
    fprintf(stderr, "\ntime %d", time);
    asprintf (&cookie, "%d:%d:%d\n",h,m,s);

    fputs(stringify(tests), f);
    fputs(",", f);
    fputs(stringify(total), f);
    fputs(",", f);
    fputs(cookie, f);

    fputs("\n", f);
    ++tests;
    time += 10;
    fclose(f);

  }


  
}
