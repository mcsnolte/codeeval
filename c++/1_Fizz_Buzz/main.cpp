#include <iostream>
#include <fstream>

using namespace std;

int main (int argc, char *argv[]) {
	std::ifstream infile(argv[1]);

	int f, b, x;
	while (infile >> f >> b >> x) {
		for ( int i = 1; i <= x; i++ ) {
			if ( i % f == 0 && i % b == 0 ) {
				cout << "FB";
			}
			else if ( i % f == 0 ) {
				cout << "F";
			}
			else if ( i % b == 0 ) {
				cout << "B";
			}
			else {
				cout << i;
			}
			if ( i < x ) {
				cout << " ";
			}
		}
		cout << endl;
	}
}
