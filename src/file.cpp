// basic file operations
#include <iostream>
#include <fstream>

using namespace std;

extern "C" {
  int basin () {
    ofstream myfile;
    myfile.open ("/working/example.txt");
    myfile << "Writing this to a file.\n";
    myfile.close();
    return 0;
  }
}
