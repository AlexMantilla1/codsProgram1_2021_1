#include <iostream>
using namespace std;

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char** argv) {
	
	int respuesta;
	float acumulador1_queNOSONKM, acumulador2_queNOESCO2;
	float a,b,c;
	/*
	do {
		
		cout << "Las opciones son:" << endl;
		cout << "1. Sumar (a+b)" << endl;
		cout << "2. Restar (a-b)" << endl;
		cout << "3. Mult (a*b)" << endl;
		cout << "4. Dividir (a/b)" << endl << endl;
		
		cout << "Su rta (-1 para salir): " ; cin >> respuesta;
		cout << endl;
		if(respuesta == -1) break;
		
		
		cout << "a = "; cin >> a;
		cout << "b = "; cin >> b;
		switch(respuesta) {
			
			case 1: 
				c = a + b;
				break;
				
			case 2:
				break;
				
			default:
				break;				
			
		}
		
		// Aquí acumularia si tuviera un acumulador
		cout << "El resultado es: " << c << endl << endl;
		
		
		
	} while(true);
	
	*/
	
	while(true){
		
		cout << "Menu Inicial: Las opciones son:" << endl;
		cout << "1. Sumar (c=a+b)" << endl;
		cout << "2. Restar (c=a-b)" << endl;
		cout << "3. Mult (c=a*b)" << endl;
		cout << "4. Dividir (c=a/b)" << endl;
		cout << "5. Con Ans" << endl << endl;
		
		
		cout << "Su rta (-1 para salir): " ; cin >> respuesta;
		cout << endl;
		if(respuesta == -1) break;
		
		if(respuesta != 5) {
			cout << "a = "; cin >> a;
			cout << "b = "; cin >> b;
		}
		switch(respuesta) {
			
			case 1: 
				c = a + b;
				break;
				
			case 5:
				cout << "Munu Interno: Las opciones son:" << endl;
				cout << "1. Sumar (c=c+b)" << endl;
				cout << "2. Restar (c=c-b)" << endl;
				cout << "3. Mult (c=c*b)" << endl;
				cout << "4. Dividir (c=c/b)" << endl;
				
				
				cout << "Su rta (-1 para salir): " ; cin >> respuesta;
				cout << endl;
				
				
				cout << "b = "; cin >> b;
				switch(respuesta){
					case 1:
						c = c + b;
						break;
					case 2:
						break;
					default:
						break;						
				}
				
				break;
				
			default:
				break;				
			
		}
		
		// Aquí acumularia si tuviera un acumulador
		cout << "El resultado es: " << c << endl << endl;
		
	}
	
	
	
	
	
	
	return 0;
}
