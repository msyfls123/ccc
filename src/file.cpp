// basic file operations
#include <emscripten.h>
#include <iostream>
#include <fstream>
#include <thread>

using namespace std;

void run_in_thread(int time) {
  this_thread::sleep_for(chrono::milliseconds(time));
}

extern "C" {
  int basin () {
    ofstream myfile;
    myfile.open ("/working/example.txt");
    myfile << "Writing this to a file.\nHello world";
    myfile.close();
    return 0;
  }

  void sleep(int time) {
    thread run(run_in_thread, time);
    run.join();
  }
}
