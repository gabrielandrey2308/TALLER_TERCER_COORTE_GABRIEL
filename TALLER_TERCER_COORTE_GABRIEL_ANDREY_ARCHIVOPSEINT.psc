Algoritmo Taller_tercer_corte
    Definir radius, height, fahrenheit, celsius, seconds, option, ExtraHours, Soons, Majors, baseIncome, DestineComp, ChargeComp, grossIncome, netIncome, r, a, b, c, d, x, sigma, lambda, alpha, volume, result, f_ Como real
    Definir days, hours, minutes, rest Como Enteros
    Definir irpfpercent, irpf Como Enteros
	Definir y_ Como Entero
	Definir opt8, side1, side2, angle, n, i Como Entero
    Definir a2, d2 Como Real
    Definir result1, result2, result3, result4, result5, sum, sumSquared Como Real
    Definir mean, variance, stdDeviation Como Real
    
    Escribir "\t\tTALLER TERCER COORTE"
    Escribir "Presentado por Gabriel Andrey Velasco Perafán"
    
    Repetir
        Escribir "Menú inicial:"
        Escribir ""
        Escribir "  1. Calcular volumen de un cono"
        Escribir "  2. Convertir Fahrenheit a Celsius"
        Escribir "  3. Convertir tiempo en segundos"
        Escribir "  4. Calcular la nota final de informática"
        Escribir "  5. Realizar la operación matemática"
        Escribir "  6. Realizar la segunda ecuación matemática"
        Escribir "  7. Calcular el sueldo"
		Escribir "  8. Revisar los resultados del punto 8"
		Escribir "  9. Calcular el área del triángulo"
		Escribir "  10.Calcular el préstamo hipotecario "
        Escribir "  11. Salir"
        Escribir ""
        Escribir "Seleccione una opción: "
        Leer option
        
		Según option Hacer
	Caso 1:
		Escribir "       Ha seleccionado hallar el volumen de un cono."
		Escribir ""
		Escribir " | Tenga en cuenta que para la actividad del taller"
		Escribir " | debe introducir un radio de 14.5 y una altura de 26.79"
		Escribir ""
		Escribir "Ingrese el radio de la base del cono: "
		Leer radius
		Escribir "Ingrese la altura del cono: "
		Leer height
		volume <- (PI * (radio*radio) * height) / 3
		Escribir ""
		Escribir "El volumen del cono es: " volume
		Escribir ""
		Escribir " | Recuerde siempre que la unidad de medida del resultado,"
		Escribir " | es la misma con la que ingresa los valores del radio y"
		Escribir " | la altura pero con exponente 2."
	Caso 2:
		Escribir "       Ha seleccionado convertir unidades de temperatura."
		Escribir ""
		Escribir "Ingrese la temperatura en grados Fahrenheit: "
		Leer fahrenheit
		celsius <- (fahrenheit - 32) * 5 / 9
		Escribir ""
		Escribir "La temperatura en grados Celsius es: " celsius "°C"
	Caso 3:
		Escribir "       Ha seleccionado la conversión de tiempo."
		Escribir ""
		Escribir "Ingrese el tiempo transcurrido en segundos: "
		Leer seconds
		days <- seconds / (24 * 60 * 60)
		rest <- seconds % (24 * 60 * 60)
		hours <- rest / (60 * 60)
		rest <- rest % (60 * 60)
		minutes <- rest / 60
		seconds <- rest % 60
		Escribir ""
		Escribir "Días: " days
		Escribir "Horas: " hours
		Escribir "Minutos: " minutes
		Escribir "Segundos: " seconds
	Caso 4:
		Escribir "       Ha seleccionado calcular sus nota final de informática"
		Escribir ""
		Escribir " | Lo sentimos, todavía no sabemos las notas :-¡"
	Caso 5:
		Escribir "       Ha seleccionado efectuar la fórmula matemática."
		Escribir ""
		Escribir "        4                       3 + d (2 + a)"
		Escribir "   ------------ -9 (a + b c) + ---------------"
		Escribir "    3 (r + 34)                     a + b d"
		Escribir ""
		Escribir "Ingrese el valor de r: "
		Leer r
		Escribir "Ingrese el valor de a: "
		Leer a
		Escribir "Ingrese el valor de b: "
		Leer b
		Escribir "Ingrese el valor de c: "
		Leer c
		Escribir "Ingrese el valor de d: "
		Leer d
		Escribir ""
		Escribir "        4                       3 + " d " (2 + " a ")"
		Escribir "   ------------ -9 (" a " + " b " * " c ") + ---------------"
		Escribir "    3 (" r " + 34)                     " a " + " b " * " d
		result <- (4 / (3 * (r + 34))) - (9 * (a + b * c)) + ((3 + d * (2 + a)) / (a + b * d))
		Escribir ""
		Escribir "El resultado de la operación es: " result
	Caso 6:
		Escribir "       Ha seleccionado efectuar la segunda fórmula matemática."
		Escribir ""
		Escribir "           | X + sigma * Y |"
		Escribir "   f = 3 * |---------------| -lambda * (alpha - 13.7)"
		Escribir "           |   X^2 - Y^2   |"
		Escribir ""
		Escribir "Presione Enter para continuar..."
		Esperar Tecla
		Escribir ""
		x <- 12
		Escribir " El valor de X es:       " x
		sigma <- 2.1836
		Escribir " El valor de Sigma es:   " sigma
		y_ <- 3
		Escribir " El valor de Y es:       " y_
		lambda <- 1.11695
		Escribir " El valor de Lambda es:  " lambda
		alpha <- 328.67
		Escribir " El valor de Alpha es:   " alpha
		Escribir ""
		Escribir "Presione Enter para continuar..."
		Esperar Tecla
		Escribir ""
		Escribir "           | " x " + " sigma " * " y_ " |"
		Escribir "   f = 3 * |------------------------| -" lambda " * (" alpha " - 13.7)"
		Escribir "           |   " x "^2 - " y_ "^2   |"
		f_ <- 3 * ((x + sigma * y_) / (x ^ 2 - y_ ^ 2)) - lambda * (alpha - 13.7)
		Escribir ""
		Escribir "El resultado de la operación es: " f_
	Caso 7:
		Escribir "       Ha seleccionado calcular la nómina."
		Escribir " Cálculo de la nómina:"
		Escribir ""
		Escribir "Sueldo base: $"
		Leer baseIncome
		Escribir "Complemento de destino: $"
		Leer DestineComp
		Escribir "Complemento de cargo académico: $"
		Leer ChargeComp
		Escribir "Horas extra realizadas: "
		Leer ExtraHours
		Escribir "Hijos: "
		Leer Soons
		Escribir "Mayores dependientes:"
		Leer Majors
		grossIncome <- baseIncome + DestineComp + ChargeComp + (ExtraHours * 23)
		irpfpercent <- 24 - (2 * Soons) - Majors
		irpf <- (grossIncome * irpfpercent) / 100
		netIncome <- grossIncome - irpf
		Escribir ""
		Escribir "Sueldo bruto: $" grossIncome
		Escribir "Porcentaje de IRPF: " irpfpercent "%"
		Escribir "Retención por IRPF: $" irpf
		Escribir "Sueldo neto: $" netIncome
	Caso 8:
		a2<-1
		b2<-1.0
		Escribir "Ha seleccionado revisar los resultados del punto 8."
		Escribir ""
		Escribir " | Nota: saldrá luego de escoger una opción"
		Escribir ""
		Escribir "1. a = 46 % 9 + 4 * 4 - 2;"
		Escribir "2. a = 45 + 43 % 5 * (23 * 3 % 2);"
		Escribir "3. a = 45 + 45 * 50 % a??;"
		Escribir "4. d = 1.5 * 3 + (++d);"
		Escribir "5. d = 1.5 * 3 + d++;"
		Escribir "6. a %= 3 / a + 3;"
		Escribir "7. Volver al menú inicial"
		
		Escribir "Seleccione una opción ingresando su número:"
		Leer opt8
		
		Segun opt8 Hacer
			1:
				result1 <- 46 % 9 + 4 * 4 - 2
				Escribir "La forma 1 da como resultado:", result1
			2:
				result2 <- 45 + 43 % 5 * (23 * 3 % 2)
				Escribir "La forma 2 da como resultado:", result2
			3:
				result3 <- 45 + 45 * 50 % a2-1
				Escribir "La forma 3 da como resultado:", result3
			4:
				result4 <- 1.5 * 3 + 1+d2
				Escribir "La forma 4 da como resultado:", result4
			5:
				result5 <- 1.5 * 3 + d2+1
				Escribir "La forma 5 da como resultado:", result5
			6:
				a2 = a2%(3 / a2 + 3)
				Escribir "La forma 6 da como resultado: 0", a_
			7:
				Escribir "Ha finalizado el punto 8"
				Esperar Tecla
			De Otro Modo:
				Escribir "Intente otra opción"
		Fin Segun
		Esperar Tecla
	Caso 9:
		Escribir "Ha seleccionado calcular el área del triángulo."
		Escribir "Ingrese el valor del lado 1:"
		Leer side1
		Escribir "Ingrese el valor del lado 2:"
		Leer side2
		Escribir "Ingrese el valor del ángulo (en grados):"
		Leer angle
		rad <- angle * (PI / 180.0)	
		area <- 0.5 * side1 * side2 * SEN(rad)
		Escribir "El área del triángulo es:", area
	Caso 10:
		Escribir "Ha seleccionado calcular el préstamo hipotecario."
		Escribir ""
		Escribir "Ingrese el capital prestado: "
		Leer capital
		Escribir "Ingrese el interés anual: "
		Leer AInterest
		Escribir "Ingrese el plazo en meses: "
		Leer mnths
		mnths <- mnths*(-1)
		ratio <- AInterest / 121
		
		fee <- ((capital * ratio) / (1 - EXP(1 + (ratio / 100) * mnths)))
		TPaid <- fee * mnths
		interest <- TPaid - capital
		amortization <- capital
		Escribir ""
		Escribir "Cuota mensual: ", fee
		Escribir "Total pagado: ", TPaid
		Escribir "Cantidad de amortización: ", amortization
		Escribir "Cantidad de intereses: ", interest
	Caso 11:
		Escribir ""
		Escribir " | Ha finalizado la ejecución del programa."
		Escribir " | Presentado por Gabriel Andrey Velasco Perafán."
		Escribir " | Hasta luego."
	De Otro Modo:
		Escribir ""
		Escribir " | Opción no válida. Intente nuevamente."
Fin Según

Escribir ""
Escribir "Presione una tecla para continuar..."
Esperar Tecla 

Hasta Que  option = 11

Escribir ""
Escribir "======================================================"
Escribir "                ¡Gracias, TOTALES!"
Escribir "______________________________________________________"

Fin Algoritmo