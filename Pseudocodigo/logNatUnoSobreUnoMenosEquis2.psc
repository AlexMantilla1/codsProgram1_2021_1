Algoritmo logNatUnoSobreUnoMenosEquis2
	
	//Entradas
	Imprimir "Ingrese x = "
	leer x
	Imprimir "Ingrese N = "
	leer N
	
	si x > 1 o x < -1 
		Imprimir "Error, x debe estar en el intervalo [-1 1]"
	SiNo
		//Salida
		resultado = 0
		
		para k <- 1 con paso 1 hasta N Hacer
			
			cafe = 1 / k
			azul = x
			morado = 2 * k
			
			// Un algoritmo que me pudiese calcular
			// celeste = azul^morado
			//Entradas de la potencia
			base = azul
			exponente = morado
			//Salidas de la potencia
			potenciad = 1
			// Este es un algoritmo que calcula una potencia
			si exponente < 0
				exponente = exponente * (-1)
				base = 1 / base				
			FinSi
			para contador <- 1 Con Paso 1 hasta exponente hacer 
				potenciad = potenciad * base
			FinPara
			
			celeste = potenciad
			
			termino = cafe*celeste // azul elevado a lo morado
			resultado = resultado + termino
			
		FinPara
		
		
		Imprimir "resultado = ", resultado
	FinSi
	
	
	
	
FinAlgoritmo
