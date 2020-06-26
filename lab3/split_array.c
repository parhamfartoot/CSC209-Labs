#include <stdio.h>
#include <stdlib.h>

/* Return a pointer to an array of two dynamically allocated arrays of ints.
   The first array contains the elements of the input array s that are
   at even indices.  The second array contains the elements of the input
   array s that are at odd indices.

   Do not allocate any more memory than necessary.
*/
int **split_array(const int *s, int length) {

    int **Split = malloc (sizeof (int*) * 2);

    int max = 0;
    int max1 = 0;
    int end1 = 0;
    int end2 = 0;
    Split[0] = malloc(max * sizeof(int));
    Split[1] = malloc(max1 * sizeof(int));
    for (int i = 0; i < length; i++) {


        if (i % 2 == 0){
            if (end1 >= max) {
                int new_max = max +1;
                int *temp = realloc(Split[0], sizeof(int) * new_max);
                max = new_max;
                Split[0] = temp;
            }
            Split[0][end1] = s[i];
            end1++;

        }
        else{

            if (end2 >= max1) {
                int new_max1 = max1 +1;
                int *temp1 = realloc(Split[1], sizeof(int) * new_max1);
                max1 = new_max1;
                Split[1] = temp1;
            }

            Split[1][end2] = s[i];

            end2++;
        }

    }
    return Split;

}

/* Return a pointer to an array of ints with size elements.
   - strs is an array of strings where each element is the string
     representation of an integer.
   - size is the size of the array
 */

int *build_array(char **strs, int size) {

    int *Array_int;
    Array_int = malloc(size * sizeof(int));
    for (int i = 0; i < size; i++) {
    Array_int[i] = atoi((strs)[i+1]);
    }

    return Array_int;


}


int main(int argc, char **argv) {
    /* Replace the comments in the next two lines with the appropriate
       arguments.  Do not add any additional lines of code to the main
       function or make other changes.
     */
    int *full_array = build_array(argv,argc - 1);
    int **result = split_array(full_array, argc-1);

    printf("Original array:\n");
    for (int i = 0; i < argc - 1; i++) {
        printf("%d ", full_array[i]);
    }
    printf("\n");

    printf("result[0]:\n");
    for (int i = 0; i < argc/2; i++) {
        printf("%d ", result[0][i]);
    }
    printf("\n");

    printf("result[1]:\n");
    for (int i = 0; i < (argc - 1)/2; i++) {
        printf("%d ", result[1][i]);
    }
    printf("\n");
    free(full_array);
    free(result[0]);
    free(result[1]);
    free(result);
    return 0;
}
