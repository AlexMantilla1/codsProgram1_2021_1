#include <iostream>
#include <math.h>
using namespace std;

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

//Prototipo de la función
bool verficarArmstrong(int);
bool verficarPerfecto(int);

int contarDigitos(int); 
int obtenerDigito(int,int,int);


int main(int argc, char** argv) {
	
	
	
	for (int i = 10; i <= 9999 ; i++) {
		
		if( verficarArmstrong(i) == true ) {
			
			cout << "El numero es de Armstrong!" << endl << "i = "<< i << endl << endl;
			
		} else {
			
			
		}
		
	}
		
	return 0;
}



// Definir las funciones
bool verficarArmstrong(int numeroDeInteres) {
	
	bool respuesta = false;
	int cantDigitos = contarDigitos(numeroDeInteres);
	int suma = 0;
	// Inicio del algoritmo que verifica si el número de interés es un número de Armstrong
	for (int i = 0 ; i < cantDigitos; i++) {
		
		int digito = obtenerDigito(numeroDeInteres,i,cantDigitos);
		digito = pow(digito,cantDigitos);
		suma = suma + digito;
		
	}
	
	if( suma == numeroDeInteres ) {
		respuesta = true;
	}
	// Fin del algoritmo 
	
	return respuesta;
}






int contarDigitos(int numeroDeInteres) {
	int cnt = 0;
	
	while( numeroDeInteres >= 1 ) {
		numeroDeInteres = numeroDeInteres / 10;
		cnt++;
	}
	
	return cnt;
}


int obtenerDigito(int numeroDeInteres,int numDig, int maxDig) {
	
	int dig;
	
	
	if(numDig < maxDig - 1) {
		int numMocho = numeroDeInteres/(pow(10,numDig+1));
		numMocho = numMocho*10;
		
		dig = ( numeroDeInteres/pow(10,numDig) ) - numMocho ;
	} else {
		dig = ( numeroDeInteres/pow(10,numDig) );
	}
	
	
	
	return dig;
	
}







