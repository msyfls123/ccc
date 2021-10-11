#include <iostream>
#include <cstring>
#include <time.h>
 
using namespace std;
 
int main ()
{
   time_t curr = time(NULL);
   struct tm *info;
   info = localtime(&curr);
   printf("当前是 %d 年 %d 月\n", info->tm_year + 1900, info->tm_mon + 1);
}
