#include <stdio.h>
#include <string.h>

int main(int argc,char *argv[]){
    
    char nombre[] = "Gonzalo (Goncho) ";
    char apellidos[] = "Aguirre Boix";
    
    strcat(nombre,apellidos);
    printf("Mi nombre completo es: %s",nombre);
    
    return 0;
}