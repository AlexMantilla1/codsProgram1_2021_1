#include <iostream>
#include <stdlib.h>
using namespace std;


/* run this program using the console pauser or add your own getch, system("pause") or input loop */


int main(int argc, char** argv) {
	/*
	//Repaso de vectores y matrices.
	int indiceDelVector = 2;
	int vectorEnteros[4] = {24,51,72,9};
	
	cout << "En el vector 'vectorEnteros', la posicion "<< indiceDelVector <<" contiene: " << vectorEnteros[indiceDelVector] << endl;
	
	// Escribir en el vector.
	indiceDelVector = 2;
	vectorEnteros[indiceDelVector] = 115;
	
	cout << "En el vector 'vectorEnteros', la posicion "<< indiceDelVector <<" contiene: " << vectorEnteros[indiceDelVector] << endl;
	
	*/
	
	int vector[10];
	
	for (int indice = 0; indice < 10 ; indice++) {
		
		vector[indice] = rand() % 94;
		
	}
	
	for (int indice = 0; indice < 10 ; indice++) {
		
		cout << "En el vector, la posicion "<< indice <<" contiene: " << vector[indice] << endl;
	
	}
	cout << endl << vector << endl;
	
	cout << endl << endl << endl ;
	
	
	
	// Matriz
	int numeritos[10][5];
	
	
	for( int fila = 0; fila < 10 ; fila++ ) {
		
		for(int columna = 0; columna < 5; columna++) {
			
			numeritos[fila][columna] = rand() % 100;
			
		}
		
	}
	
	for( int fila = 0; fila < 10 ; fila++ ) {
		
		for(int columna = 0; columna < 5; columna++) {
			
			cout << "En la matriz, la posicion ["<< fila << "]["<< columna << "] contiene: " << numeritos[fila][columna] << endl;
			
		}
		
	}
	
	cout << endl << numeritos << endl;
	
	
	return 0;
}
