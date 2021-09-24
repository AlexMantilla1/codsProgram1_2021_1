Algoritmo numerosPrimosHastaN
	//Entradas:
	//Numero dado por el usuario:
	leer numFinal
	
	//Salidas:
	cantidadPrimos = 0
	
	//1. Iniciar en el número 2
	//numeroDeInteres = 2
	
//	Para numeroDeInteres <- 2 hasta numFinal con paso 1
//		// lo que se repite
//		// 2. Verificar si ese número es primo:
//		dividendo = 2
//		residuo = 1
//		mientras ( residuo > 0 )
//			
//			// Lo que se repite
//			resultado = numeroDeInteres / dividendo
//			// si resultado no es entero sumar 1
//			residuo = numeroDeInteres % dividendo 
//			si ( residuo > 0 ) // residuo > 0 indica que no es un decimal
//				dividendo = dividendo + 1 
//			FinSi
//			
//		FinMientras
//		
//		// 3. 3. si es primo contar + 1 a la cantidad, si no, no
//		si ( dividendo == numeroDeInteres )
//			//escribir "el numero es primo!"
//			cantidadPrimos = cantidadPrimos + 1
//		SiNo
//			//escribir "el numero no es primo!"
//		FinSi
//		
//	FinPara
	
	numeroDeInteres = 2
	Mientras ( numeroDeInteres <= numFinal  )
		// lo que se repite
		// 2. Verificar si ese número es primo:
		//Imprimir "El numero " , numeroDeInteres, " es primo?"
		ultimodividendo = 2
		Para dividendo <- 2 hasta numeroDeInteres con paso 1
			// Lo que se repite
			resultado = numeroDeInteres / dividendo
			// si resultado no es entero sumar 1
			residuo = numeroDeInteres % dividendo 
			ultimodividendo = dividendo
			si ( residuo == 0 ) // residuo > 0 indica que no es un decimal
				dividendo = numeroDeInteres + 1
			FinSi
			
		FinPara
		//Imprimir ultimodividendo, " == ", numeroDeInteres
		// 3. 3. si es primo contar + 1 a la cantidad, si no, no
		si ( ultimodividendo == numeroDeInteres)
			//escribir "el numero es primo!"
			cantidadPrimos = cantidadPrimos + 1
		SiNo
			//escribir "el numero no es primo!"
		FinSi
		
		numeroDeInteres = numeroDeInteres + 1
	FinMientras
	
	//escribir numeroDeInteres
	
	// 6. Imprimir la rta
	Imprimir "La cantidad de primos hasta el " , numFinal, " es: ", cantidadPrimos
	
	
FinAlgoritmo
