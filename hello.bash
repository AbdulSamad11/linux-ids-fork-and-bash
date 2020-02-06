OPERATING SYSTEMS ASSIGNMENT (LAB 2)
TASK 1:-
Bash hello.sh
gcc -o pid pid.c
./pid
echo "........."
echo "real user id"
id -rg
echo "real group id"
id -G
echo "effective user id"
id -u
echo "effective group id"
id –g
hello.sh
………………………………………………………
#include <unistd.h> 
#include <stdio.h>
int main() {   int pid; 
    pid = fork(); 
	pid_t c;
	c=getpid(); pid_t p; p=getppid();
    if (pid == 0){ 
        printf("Process id : %d\n",c); 
        printf("Parent Process with parent id : %d\n",p);} 
    return 0; }
pid.c
TASK 2:-
gcc -o fib fib.c
./fib
#include <stdio.h>
#include <unistd.h>
int main(){
   int a=0, b=1, n=a+b,i,x;
   pid_t pid;
   printf("Enter the number of a Fibonacci Sequence:\n");
   scanf("%d", &x);
      pid = fork();
      if (pid == 0) {
         printf("Child is producing the Fibonacci Sequence...\n");
        printf("%d ", n);
         for (i=0;i<x-1;i++)  {
            n=a+b;
            printf("\n%d",n);
            a=b;
            b=n; }
         printf("\nChild ends\n"); }
      else{
         printf("Parent not due now for child to complete...\n");
         wait();
         printf("Parent ends\n");}
   return 0;}
fib.c
