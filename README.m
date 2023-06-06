#include <stdio.h>
#include <stdlib.h>             //Para la función system
#include <math.h>

double CCV(double radius, double height)                //punto uno
{
    double volume;
    volume = (M_PI * pow(radius, 2) * height) / 3;
    return volume;
}

double ConvertFtoC(double fahrenheit)                   //punto dos
{
    double celsius;
    celsius = (fahrenheit - 32) * 5 / 9;
    return celsius;
}

void convertTime(int seconds)                           //punto tres
{
    int days, hours, minutes, rest;

    days = seconds / (24 * 60 * 60);  // Convertir a días
    rest = seconds % (24 * 60 * 60);  
    //Toma "resto" como los segundos que no llegan a completar un día entero

    hours = rest / (60 * 60);  // Convertir a horas
    rest = rest % (60 * 60); 
    // Ahora toma "rest" como los segundos que no llegan a completar una hora entera

    minutes = rest / 60;  // Convertir a minutos

    seconds = rest % 60;  // Obtener los segundos restantes

    printf("Días: %d\n", days);
    printf("Horas: %d\n", hours);
    printf("Minutos: %d\n", minutes);
    printf("Segundos: %d\n", seconds);
}

double Eq(double r, double a, double b, double c, double d) //punto cinco
{
    double result;
    result = (4 / (3 * (r + 34))) - (9 * (a + b * c)) + ((3 + d * (2 + a)) / (a + b * d));
    return result;
}

double Eq2(double x, double sigma, double y, double lambda, double alpha) //punto seis
{
    double f_ ;
    f_ = 3*((x+sigma*y)/(x*x-y*y))-lambda*(alpha-13.7);
    return f_ ;
}

void incomeCalc(int ExtraHours, int Soons, int Majors, double baseIncome, double DestineComp, double ChargeComp, double grossIncome, double netIncome)
{
    double irpfpercent;
    double irpf;
    
    grossIncome = baseIncome + DestineComp + ChargeComp + (ExtraHours * 23);
    irpfpercent = 24 - (2 * Soons) - Majors;
    irpf = (grossIncome * irpfpercent) / 100;
    netIncome = grossIncome - irpf;

    printf("\nSueldo bruto: $%.2lf\n", grossIncome);
    printf("Porcentaje de IRPF: %.0lf%%\n", irpfpercent);
    printf("Retención por IRPF: $%.2lf\n", irpf);
    printf("Sueldo neto: $%.2lf\n", netIncome);
}

int main() {
    int option, seconds;
    int ExtraHours, Soons, Majors;
    double fahrenheit, radius, height;
    double r, a, b, c, d;
    double x=12, sigma=2.1836, y=3, lambda=1.11695, alpha=328.67;
    double baseIncome, netIncome, grossIncome, DestineComp, ChargeComp;

    printf("\t\tTALLER TERCER COORTE\n");
    printf("Presentado por Gabriel Andrey Velasco Perafán\n\n");

    do {
        printf("Menú inicial:\n\n");
        printf("\t1. Calcular volumen de un cono\n");
        printf("\t2. Convertir Fahrenheit a Celsius\n");
        printf("\t3. Convertir tiempo en segundos\n");
        printf("\t4. Calcular la nota final de informática\n");
        printf("\t5. Realizar la operación matemática\n");
        printf("\t6. Realizar la segunda ecuación matemática\n");
        printf("\t7. Calcular el sueldo\n");
        printf("\t8. Salir\n");
        printf("\nSeleccione una opción: ");
        scanf("%d", &option);

        //Limpiar la pantalla o consola
        system("clear"); //Para Unix/Linux
        //system("cls"); //Para Windows

        switch (option) {
            case 1:
                printf("\tHa seleccionado hallar el volumen de un cono.\n");
                printf("\n | Tenga en cuenta que para la actividad del taller");
                printf("\n | debe introducir un radio de 14.5 y una altura de 26.79");
                printf("\n\nIngrese el radio de la base del cono: ");
                scanf("%lf", &radius);
                printf("Ingrese la altura del cono: ");
                scanf("%lf", &height);
                double volume = CCV(radius, height);
                printf("\nEl volumen del cono es: %.3lf\n", volume);             //.3 PARA 3 DECIMALES AL FLOAT
                printf("\n | Recuerde siempre que la unidad de medida del resultado,");
                printf("\n | es la misma con la que ingresa los valores del radio y ");
                printf("\n | la altura pero con exponente 2.\n");
                break;
            case 2:
                printf("\tHa seleccionado convertir unidades de temperatura.\n\n");
                printf("Ingrese la temperatura en grados Fahrenheit: ");
                scanf("%lf", &fahrenheit);
                double celsius = ConvertFtoC(fahrenheit);
                printf("\nLa temperatura en grados Celsius es: %.2lf°C\n", celsius);
                break;
            case 3:
                printf("\tHa seleccionado la conversión de tiempo.\n\n");
                printf("Ingrese el tiempo transcurrido en segundos: ");
                scanf("%d", &seconds);
                convertTime(seconds);
                break;
            case 4:
                printf("\tHa seleccionado calcular sus nota final de informática\n");
                printf("\n | Lo sentimos, todavía no sabemos las notas :-¡\n");
                break;
            case 5:
                printf("\tHa seleccionado efectuar la fórmula matemática.\n\n");
                printf("\t     4                       3 + d (2 + a) \n");         			                //
                printf("\t------------ -9 (a + b c) + ---------------\n");           			            //   PARA LA GRÁFICA DE LA ECUACIÓN
                printf("\t 3 (r + 34)                     a + b d  \n\n");        			                //
                printf(" Ingrese el valor de r: ");
                scanf("%lf", &r);
                printf(" Ingrese el valor de a: ");
                scanf("%lf", &a);
                printf(" Ingrese el valor de b: ");
                scanf("%lf", &b);
                printf(" Ingrese el valor de c: ");
                scanf("%lf", &c);
                printf(" Ingrese el valor de d: ");
                scanf("%lf", &d);
                printf("\n\t     4                       3 + %.0lf (2 + %.0lf) \n",           d, a);        //
                printf("\t------------ -9 (%.0lf + %.0lf %.0lf) + ---------------\n",      a, b, c);        //   PARA LA GRÁFICA DE LA ECUACIÓN
                printf("\t 3 (%.0lf + 34)                     %.0lf + %.0lf %.0lf  \n", r, a, b, d);        //
                double result = Eq (r, a, b, c, d);
                printf("\nEl resultado de la operación es: %.3lf\n", result);
                break;
            case 6:
                printf("\tHa seleccionado efectuar la segunda fórmula matemática.\n\n");
                printf("\t        | X + sigma * Y |                         \n");                           //
                printf("\tf = 3 * |---------------| -lambda * (alpha - 13.7)\n");                           //  PARA LA GRÁFICA DE LA SEGUNDA ECUACIÓN
                printf("\t        |   X'2 - Y'2   |                         \n");                           //
                printf("\nPresione Enter para continuar...");
                getchar();
                getchar();
                printf("\n El valor de X es:      %.3lf",       x);
                printf("\n El valor de Sigma es:   %.3lf",  sigma);
                printf("\n El valor de Y es:       %.3lf",      y);
                printf("\n El valor de Lambda es:  %.3lf", lambda);
                printf("\n El valor de Alpha es: %.3lf\n",  alpha);
                printf("\nPresione Enter para continuar...");
                getchar();
                //getchar();
                printf("\n\t        | %.3lf + %.3lf * %.3lf |                 \n", x, sigma, y);             //
                printf("\tf = 3 * |------------------------| -%.3lf * (%.3lf - 13.7)\n", lambda, alpha);     //  PARA LA GRÁFICA DE LA SEGUNDA ECUACIÓN
                printf("\t        |   %.3lf'2 - %.3lf'2   |                   \n", x, y);                    //
                double f_ = Eq2 (x, sigma, y, lambda, alpha);
                printf("\nEl resultado de la operación es: %.4lf\n", f_);
                break;
            case 7:
                printf("\nCálculo de la nómina:\n");
                printf("\nSueldo base: $");
                scanf("%lf", &baseIncome);
                printf("Complemento de destino: $");
                scanf("%lf", &DestineComp);
                printf("Complemento de cargo académico: $");
                scanf("%lf", &ChargeComp);
                printf("Horas extra realizadas: ");
                scanf("%d", &ExtraHours);
                printf("Hijos: ");
                scanf("%d", &Soons);
                printf("Mayores dependientes:");
                scanf("%d", &Majors);
                incomeCalc(ExtraHours, Soons, Majors, baseIncome, DestineComp, ChargeComp, grossIncome, netIncome);
                break;
            case 8:
                printf("\n | Ha finalizado la ejecución del programa.\n");
                printf(" | Presentado por Gabriel Andrey Velasco Perafán.\n | Hasta luego.\n");
                break;
            default:
                printf("\n | Opción no válida. Intente nuevamente.\n");
                break;
        }

        //Pausar la ejecución para mostrar el resultado antes de limpiar la pantalla o consola
        printf("\nPresione Enter para continuar...");
        getchar();
        getchar();

        //Limpiar la pantalla o consola
        system("clear"); //Para Unix/Linux
        //system("cls"); //Para Windows

    } while (option !=8);
    
    printf("\n======================================================");
    printf("\n\t\t ¡Gracias, TOTALES!                               ");
    printf("\n______________________________________________________");

    return 0;
}


