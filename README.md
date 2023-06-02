#include <stdio.h>
#include <stdlib.h>             //Para la función system
#include <math.h>

double calcularVolumenCono(double radio, double altura) {
    double volumen;
    volumen = (M_PI * pow(radio, 2) * altura) / 3;
    return volumen;
}

double convertirFahrenheitACelsius(double fahrenheit) {
    double celsius;
    celsius = (fahrenheit - 32) * 5 / 9;
    return celsius;
}

void convertirTiempo(int segundos) {
    int dias, horas, minutos, resto;

    dias = segundos / (24 * 60 * 60);  // Convertir a días
    resto = segundos % (24 * 60 * 60);

    horas = resto / (60 * 60);  // Convertir a horas
    resto = resto % (60 * 60);

    minutos = resto / 60;  // Convertir a minutos

    segundos = resto % 60;  // Obtener los segundos restantes

    printf("Días: %d\n", dias);
    printf("Horas: %d\n", horas);
    printf("Minutos: %d\n", minutos);
    printf("Segundos: %d\n", segundos);
}

int main() {
    int opcion, segundos;
    double fahrenheit, radio, altura;

    printf("\t\tTALLER TERCER COORTE\n");
    printf("Presentado por Gabriel Andrey Velasco Perafán\n\n");

    do {
        printf("Menú inicial:\n");
        printf("\n\t1. Calcular volumen de un cono\n");
        printf("\t2. Convertir Fahrenheit a Celsius\n");
        printf("\t3. Convertir tiempo en segundos\n");
        printf("\t4. Realizar operación\n");
        printf("\t5. Salir\n");
        printf("\nSeleccione una opción: ");
        scanf("%d", &opcion);

        //Limpiar la pantalla o consola
        system("clear"); //Para Unix/Linux
        //system("cls"); //Para Windows

        switch (opcion) {
            case 1:
                printf("\tHa seleccionado hallar el volumen de un cono.\n\n");
                printf("Ingrese el radio de la base del cono: ");
                scanf("%lf", &radio);
                printf("Ingrese la altura del cono: ");
                scanf("%lf", &altura);
                double volumen = calcularVolumenCono(radio, altura);
                printf("El volumen del cono es: %.3lf\n", volumen);             //.3 PARA 3 DECIMALES AL FLOAT
                printf("\n | Recuerde siempre que la unidad de medida del resultado,");
                printf("\n | es la misma con la que ingresa los valores del radio y ");
                printf("\n | la altura pero con exponente 2.\n");
                break;
            case 2:
                printf("\tHa seleccionado convertir unidades de temperatura.\n\n");
                printf("\nIngrese la temperatura en grados Fahrenheit: ");
                scanf("%lf", &fahrenheit);
                double celsius = convertirFahrenheitACelsius(fahrenheit);
                printf("La temperatura en grados Celsius es: %.2lf°C\n", celsius);
                break;
            case 3:
                printf("\tHa seleccionado la conversión de tiempo.\n\n");
                printf("\nIngrese el tiempo transcurrido en segundos: ");
                scanf("%d", &segundos);
                convertirTiempo(segundos);
                break;
            case 4:
                double r, a, b, c, d;
                double resultado;
                printf("\tHa seleccionado efectuar la fórmula matemática.\n\n");
                printf("Ingrese el valor de r: ");
                scanf("%lf", &r);
                printf("Ingrese el valor de a: ");
                scanf("%lf", &a);
                printf("Ingrese el valor de b: ");
                scanf("%lf", &b);
                printf("Ingrese el valor de c: ");
                scanf("%lf", &c);
                printf("Ingrese el valor de d: ");
                scanf("%lf", &d);

                resultado = (4 / (3 * (r + 34))) - (9 * (a + b * c)) + ((3 + d * (2 + a)) / (a + b * d));

                printf("El resultado de la operación es: %.2lf\n", resultado);
                break;
            case 5:
                printf("\n | Ha finalizado la ejecución del programa.\n");
                printf(" | Presentado por Gabriel Andrey Velasco Perafán.\n | Gracias por su tiempo.\n");
                break;
            default:
                printf("\n | Opción no válida. Intente nuevamente.\n");
                break;
        }

        // Pausar la ejecución para mostrar el resultado antes de limpiar la pantalla o consola
        printf("\nPresione Enter para continuar...");
        getchar();
        getchar();

        //Limpiar la pantalla o consola
        system("clear"); //Para Unix/Linux
        //system("cls"); //Para Windows

    } while (opcion != 5);
    
    printf("\n=====================================================");
    printf("\n\t\t ¡Gracias, TOTALES!");
    printf("\n_____________________________________________________");

    return 0;
}
