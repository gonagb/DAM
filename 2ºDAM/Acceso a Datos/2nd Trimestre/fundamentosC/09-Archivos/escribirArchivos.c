#include <stdio.h>

int main(int argc,char *argv[]){
    
    FILE *archivo;
    archivo = fopen("agenda.txt","w");
    fprintf(archivo,"Escribo esto un ejemplo en directo \n");
    fclose(archivo);
    return 0;
}