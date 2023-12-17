#include<stdio.h>
#include<string.h>
int main(){
char input[100],i;
printf("Enter the string: ");
scanf("%s",input);
int currentstate=0;
int len=strlen(input);
for(i=0;i<len;i++){
switch(currentstate){
case 0:
if(input[i]=='a'){
currentstate=1;
}
else{
currentstate=4;
}
break;
case 1:
if(input[i]=='b'){
currentstate=2;
}
else{
currentstate=4;
}
break;
case 2:
if(input[i]=='a'){
currentstate=3;
}
else{
currentstate=4;
}
break;
case 3:
currentstate=3;
break;
default:
currentstate=4;
break;
}
}
if(currentstate==3){
printf("string starting with 'aba', STRING ACCEPTED");
}
else{
printf("String does not start with 'aba',STRING REJECTED");
}
return 0;
}
