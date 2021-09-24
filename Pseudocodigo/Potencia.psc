Algoritmo Potencia
	
	
	
	//Este algoritmo resolverá una pontencia de la forma p = a^b
	
	//Entradas
	leer base
	Leer exponente
	
	//Salida
	potenciad = 1
	
	
	// Aqui va el Algoritmo
	si exponente < 0
		exponente = exponente * (-1)
		base = 1 / base				
	FinSi
	
//	contador = 1
//	Mientras contador <= exponente
//		potenciad = potenciad * base
//		contador = contador + 1
//	FinMientras
	
	para contador <- 1 Con Paso 1 hasta exponente hacer 
		potenciad = potenciad * base
	FinPara
	// Muestro el resultado
	
	Imprimir "el valor de potenciad = a^b = ", base, "^" , exponente, " = " , potenciad
	
	
	
	
FinAlgoritmo
