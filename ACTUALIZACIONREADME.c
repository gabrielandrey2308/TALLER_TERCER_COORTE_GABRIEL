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
    
    int result1, result2, result3, a_=1, opt8; 
	double result4, result5, d_=1.0;
	
	double side1, side2, angle, area;

	double capital, AInterest, term;
    double ratio, fee, TPaid, interest, amortization;
    int mnths;
        float parcial1, taller1, quiz1, ejercicio1clase, quiz2, exposicion;
    float definitiva;
    system("clear");
    printf("\n\t\tTALLER TERCER COORTE\n");
    printf("Presentado por Gabriel Andrey Velasco Perafán\n\n");

    do {
        printf("Menú inicial:\n\n");
        printf("\t1.  Calcular volumen de un cono\n");
        printf("\t2.  Convertir Fahrenheit a Celsius\n");
        printf("\t3.  Convertir tiempo en segundos\n");
        printf("\t4.  Calcular la nota final de informática\n");
        printf("\t5.  Realizar la operación matemática\n");
        printf("\t6.  Realizar la segunda ecuación matemática\n");
        printf("\t7.  Calcular el sueldo\n");
        printf("\t8.  Punto 8 del taller (preguntas de lógica)\n");
        printf("\t9.  Calcular el área de un triángulo\n");
        printf("\t10. Calcular préstamo hipotecario\n");
        printf("\t11. Salir\n");
        printf("\nIngrese un número para seleccionar una opción: ");
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
                printf("Parcial PR1: ");
                scanf("%f", &parcial1);
                printf("Taller PR1: ");
                scanf("%f", &taller1);
                printf("Quiz 1: ");
                scanf("%f", &quiz1);                            
                printf("Ejercicio Clase: ");
                scanf("%f", &ejercicio1clase);
                printf("Quiz 2:");
                scanf("%f", &quiz2);
                printf("Exposición: ");
                scanf("%f", &exposicion);
                float nota1 = (parcial1 * 0.8 + taller1 * 0.2 )*0.7;
                float nota2 = (quiz1 * 0.25 + ejercicio1clase * 0.25 + quiz2 * 0.25 + exposicion * 0.25)* 0.3;
                float definitiva = nota1 + nota2;
                printf("La nota final obtenida es: %.2f\n", definitiva);
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
                printf("\tHa seleccionado revisar los resultados del punto 8.\n\n");
                printf("\t1. a = 46 % 9 + 4 * 4 ‐ 2;\n");
                printf("\t2. a = 45 + 43 % 5 * (23 * 3 % 2);\n");
                printf("\t3. a = 45 + 45 * 50 % a‐‐;\n");
                printf("\t4. d = 1.5 * 3 + (++d);\n");
                printf("\t5. d = 1.5 * 3 + d++;\n");
                printf("\t6. a %= 3 / a + 3;\n");
                do{
            	printf("\nSeleccione una opción ingresando su número:\n");
            	scanf("%d", &opt8);
            
            		switch(opt8){
            			case 2:
            				result1 = 46 % 9 + 4 * 4 - 2;
            				printf("La forma 1 da como resultado: %d", result1);
            			break;
            			case 3:
            				result2 = 45 + 43 % 5 * (23 * 3 % 2);
            				printf("La forma 2 da como resultado: %d", result2);
            			break;
            			case 4:
            				result3 = 45 + 45 * 50 % a_--;
            				printf("La forma 3 da como resultado: %d", result3);
            			break;
            			case 5:
            				result4 = 1.5 * 3 + (++d_);
            				printf("La forma 4 da como resultado: %lf", result4);
            			break;
            			case 6:
            				result5 = 1.5 * 3 + d_++;
            				printf("La forma 5 da como resultado: %lf", result5);
            			break;
            			case 1:
            				a_ = a_ % (3 / a_ + 3);
            				printf("La forma 6 da como resultado: %d", a_);
            				printf("\n | Por cuestiones de sintaxis en la lógica del");
            				printf("\n | programa se decidió presentar este ejercicio primero.");
            			break;
            			case 7:
            			    printf("\nVolviendo al menú inicial...");
            			break;
            			default:
            				printf("\nintente otra opción");
            			break;
            			}
            		printf("\n | Presione enter para continuar");
            		getchar();
            		
            	}while(opt8 != 7);
            	break;
            case 9:
                printf("\tHa seleccionado calcular el area del triángulo.\n\n");
                printf("Ingrese el valor del lado 1: ");
                scanf("%lf", &side1);
                printf("Ingrese el valor del lado 2: ");
                scanf("%lf", &side2);
                printf("Ingrese el valor del ángulo (en grados): ");
                scanf("%lf", &angle);
                double rad = angle * (M_PI / 180.0);
                double sen = sin(rad);
                area = 0.5 * side1 * side2 * sen;
                printf("El área del triángulo es: %.2lf\n", area);
                break;
            case 10:
                printf("\tHa seleccionado calcular el préstamo hipotecario.\n\n");
                printf("Ingrese el capital prestado: ");
                scanf("%lf", &capital);
                printf("Ingrese el interés anual: ");
                scanf("%lf", &AInterest);
                printf("Ingrese el plazo en meses: ");
                scanf("%d", &mnths);
                ratio = AInterest / 12;
                fee = (capital * ratio) / (1 - pow((1 + (ratio / 100)), -mnths));
                TPaid = fee * mnths;
                interest = TPaid - capital;
                amortization = capital;
                printf("\nCuota mensual: %.2lf\n", fee);
                printf("\nTotal pagado: %.2lf\n", TPaid);
                printf("\nCantidad de amortización: %.2lf\n", amortization);
                printf("\nCantidad de intereses: %.2lf\n", interest);
                break;
            case 11:
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

    } while (option != 11);
    
    printf("\n======================================================");
    printf("\n\t\t ¡Gracias, TOTALES!                               ");
    printf("\n______________________________________________________");

    return 0;
}
