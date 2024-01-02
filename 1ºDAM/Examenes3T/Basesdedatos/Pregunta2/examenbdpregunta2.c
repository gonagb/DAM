
#include <stdio.h>
#include <string.h>
#define NOMBRE "Coleccion de CDs - Pregunta 2 - Examen de BD \n"
#define VERSION "33"
#define AUTOR "Gonzalo Aguirre Boix"

///Arriba añadimos los includes necesarios (librerias)

int main(int argc, char *argv[]){

    ///Le damos las características que tendrá nuestra agenda
struct RegistroAgenda{
        char TituloCD[50];
        char Artista[50];
        char Fechalanzamiento[50];
        char Genero[50];
    };
    /// Ponemos cada uno de los registros de nuestra agenda
    struct RegistroAgenda agenda[100];
    strcpy(agenda[0].TituloCD,"Certified Lover Boy");
    strcpy(agenda[0].Artista,"Drake");
    strcpy(agenda[0].Fechalanzamiento,"3 de septiembre de 2021");
    strcpy(agenda[0].Genero,"Hip Hop, Funky / Soul \n");
    
    strcpy(agenda[1].TituloCD,"Lost & Found");
    strcpy(agenda[1].Artista,"Jorja Smith");
    strcpy(agenda[1].Fechalanzamiento,"8 de junio de 2018");
    strcpy(agenda[1].Genero,"R&B \n");
    
    strcpy(agenda[2].TituloCD,"3MEN2 KBRN");
    strcpy(agenda[2].Artista,"Eladio Carrion");
    strcpy(agenda[2].Fechalanzamiento,"17 de marzo de 2023");
    strcpy(agenda[2].Genero,"Urban latino \n");
    
    strcpy(agenda[3].TituloCD,"Motomami");
    strcpy(agenda[3].Artista,"Rosalia");
    strcpy(agenda[3].Fechalanzamiento,"18 de marzo de 2022");
    strcpy(agenda[3].Genero,"Pop alternativo \n");



    printf("%s v%s \n",NOMBRE,VERSION);
    printf("Hecho por %s \n",AUTOR);

    printf("Selecciona una opcion \n");
    printf("\t 1 - Listado de registros \n");
    printf("\t 2 - Anyadir un registro \n");
    printf("\t 3 - Eliminar un registro \n");
    printf("\t 4 - Buscar un registro \n");
    printf("\t 5 - Actualizar un registro \n");
    printf("Tu opcion: \n");
    char opcion = getchar();
    switch(opcion){
        case '1': /// creamos un bucle que nos liste o nos devuelva todos los registros de la agenda 
            printf("Aqui tienes un listado de los registros \n");
            for(int i = 0; i < 100; i++) {
                if(strcmp(agenda[i].TituloCD, "") == 0) {
                    break; // Salir del bucle si encontramos un registro vacío
                }
                printf("El nombre del album es: %s\n", agenda[i].TituloCD);
                printf("Salio el dia: %s\n", agenda[i].Fechalanzamiento);
                printf("Hecho por: %s\n", agenda[i].Artista);
                printf("De genero: %s\n", agenda[i].Genero);
            }
            break;
        case '2':
            printf("Dime que registro quieres anyadir");
            break;
        case '3':
            printf("Dime que registro quieres eliminar");
            break;
        case '4':
            printf("Dime que registro quieres buscar");
            break;
        case '5':
            printf("Dime que registro quieres actualizar");
            break;
    }
    return 0;
}
