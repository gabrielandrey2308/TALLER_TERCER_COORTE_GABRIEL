#include <stdio.h>
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
    printf("Presentado por Gabriel Andrey Velasco Perafán\n");

    do {
        
        printf("\nMenú inicial:\n");
        printf("\n\t1. Convertir Fahrenheit a Celsius\n");
        printf("\t2. Convertir tiempo en segundos\n");
        printf("\t3. Calcular volumen de un cono\n");
        printf("\t4. Salir\n");
        printf("\nSeleccione una opción: ");
        scanf("%d", &opcion);

        switch (opcion) {
            case 1:
                printf("Ingrese la temperatura en grados Fahrenheit: ");
                scanf("%lf", &fahrenheit);
                double celsius = convertirFahrenheitACelsius(fahrenheit);
                printf("La temperatura en grados Celsius es: %.2lf\n", celsius);
                break;
            case 2:
                printf("Ingrese el tiempo transcurrido en segundos: ");
                scanf("%d", &segundos);
                convertirTiempo(segundos);
                break;
            case 3:
                printf("Ingrese el radio de la base del cono: ");
                scanf("%lf", &radio);
                printf("Ingrese la altura del cono: ");
                scanf("%lf", &altura);
                double volumen = calcularVolumenCono(radio, altura);
                printf("El volumen del cono es: %.2lf\n", volumen);
                break;
            case 4:
                printf("¡Hasta luego!\n");
                break;
            default:
                printf("Opción no válida. Intente nuevamente.\n");
                break;
        }
    } while (opcion != 4);

    return 0;
}
