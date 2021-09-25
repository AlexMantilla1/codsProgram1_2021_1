#include <iostream>
#include <math.h>

#define PI 3.14159265

using namespace std;

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char** argv) {
	
	int N;
	double a, b, dx;
	
	
	
	cout << "Ingrese los limites de la integral (en grados)" << endl;
	cout << "a = ";
	cin >> a;
	cout << "b = ";
	cin >> b;
	
	cout << "Ingrese la cantidad de Trapecios" << endl;
	cout << "N = ";
	cin >> N;
	
	
	
	dx = (b-a)/N;
	cout << "dx = " << dx << endl;
	
	double x[N+1], f[N+1], integral = 0;
	
	x[0] = a;
	cout << "x[0] = " << x[0] << endl;
	// función:
	// f(x) = sin(x)	-> x en rad
	f[0] = cos(x[0]*PI/180);	
	cout << "f[0] = " << f[0] << endl << endl;
	
	
	
	for (int i = 1; i < N + 1 ; i++) {
		
		x[i] = x[i-1] + dx;
		//cout << "x["<< i <<"] = " << x[i] << endl;
		
		// función:
		// f(x) = sin(x)	-> x en rad
		f[i] = cos(x[i]*PI/180);
		//cout << "f["<< i <<"] = " << f[i] << endl << endl;
		
		integral = integral + 0.5*(x[i]-x[i-1])*(f[i] + f[i-1]);
	
	}
	
	
	cout << "integral = " << integral << endl << endl;
	
	
	return 0;
}
