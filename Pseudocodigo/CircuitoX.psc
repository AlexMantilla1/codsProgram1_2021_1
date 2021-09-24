Algoritmo CircuitoX
	
	// 1.	Entrada(s): Vf
	// 2.	Salida(s): R3
	Leer Vf 	// Guarde el valor "10" en la caja con etiqueta "Vf"
	i = 0.1	// Guarde el valor "100" en la caja con etiqueta "i"
	R3 = (Vf/(3*i)) - (32/3)// Guarde el valor "(Vf/(3*i)) - (32/3)" en la caja con etiqueta "R3"
	
	Imprimir "Para que i = 100 mA, con Vf = ", Vf, "V, se necesita R3 = " , R3
	
	// Para la segunda parte:
	
	// Potencia = R3*i*i;
	elMayor = 0
	ultimoR3 = 0
	Para R3 <- 0.5 hasta 100 Con Paso 0.001 hacer
		
		// 1.	Asignar un valor a R3 (en el primer caso es 0.5)
		//2.	Calcular la corriente con esa R3
		i = vf / (20 + 3*(R3+4))
		// 3.	Calculo la potencia con ese valor de R3
		Potencia = R3*i*i; 
		Si Potencia > elMayor
			elMayor = Potencia
			ultimoR3 = R3
		SiNo
			// Ignoro el valor de potencia en cuestión
		FinSi	
		
	FinPara
	
	Imprimir " La potencia máxima es: Pmax = ", elMayor, " W, utilizando un valor de R3 = ", ultimoR3
	
	
FinAlgoritmo
