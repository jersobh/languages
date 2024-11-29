#include "stdio.h"
#include "stdlib.h"
#include "stdint.h"

int main (int argc, char** argv) {
  int u = atoi(argv[1]);               // Get an input number from the command line
  int r = rand() % 10000;              // Get a random integer 0 <= r < 10k
  int32_t a[10000] = {0};              // Array of 10k elements initialized to 0
  for (int i = 0; i < 10000; i++) {    // 10k outer loop iterations
    int32_t temp_sum = 0;               // Temporary variable to hold the sum
    for (int j = 0; j < 100000; j++) { // INNER_LOOP_SIZE inner loop iterations
      temp_sum += j % u;                 // Calculate j % u and accumulate
    }
    a[i] += temp_sum;                    // Update the array with the accumulated sum
    a[i] += r;                            // Add a random value to each element in array
  }
  printf("%d\n", a[r]);                // Print out a single element from the array
}
