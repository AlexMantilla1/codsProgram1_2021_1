#include <iostream>
using namespace std;

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int filas = 8, columnas = 7;
int main() {
	
	
	
    int matriz[filas][columnas];

    int contador = 1; 
    
	int sumando = 1;
	int i=0;
	int j;
	int x; 
	
	// Llenar la matriz 
	
    for (j = 0;j < columnas;j++) {

        x = 0;
        
        while(x < filas){ 
        
        	matriz[i][j]=contador;
        	cout << "matriz["<<i<<"]["<<j<<"]="<<contador<<endl;
			
			i = i + sumando; 
        	
        	contador++;
        	x++;
		}
		i = i - sumando; 
		sumando = sumando * -1;

    }
    
    
    
    
    
    
	// Imprimir la matriz
	for(i = 0; i< filas; i++) {
		
		for(j = 0; j< columnas; j++) {
			
			cout << matriz[i][j] << "\t";
			
		}
		
		cout << endl;
	}

    return 0;


}
