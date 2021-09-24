#include <iostream>
using namespace std;

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char** argv) {
	
	float acumulador;
	float otraVariable;
	
	int respuesta = 0;
	/*
	while( respuesta != -1 ) {
		
		cout << "Ingrese la rta: " ; cin >> respuesta;
		
	}
	*/
	
	do {
		
		cout << "Ingresar valor (-1 para salir): " ; cin >> respuesta;
		acumulador += respuesta;
		cout << "El acumulado hasta el momento es: " << acumulador << endl << endl;
		
		
	}while( respuesta != -1 );
	
	
	
	
	return 0;
}
