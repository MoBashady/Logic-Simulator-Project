#include <iostream>
#include <fstream>
#include <vector>
#include <sstream>
using namespace std;

struct Event {
    int time;
    string input;
    int value;
};

class Simulator {
private:
    int A;
    int B;
    int Y;
    vector<Event> events;

public:
    void readFile(const string &filename) {
        ifstream file(filename);
        string line;
        while (getline(file, line)) {
            int time;
            string input;
            int value;
            istringstream iss(line);
            iss.ignore(1);
            iss >> time;
            getline(iss, input, '=');
            iss >> value;
            events.push_back({time, input, value});
        }
    }

    bool intToBool(int value) {
        return value == 1;
    }
    bool AND(bool a=false, bool b=false, bool c=false, bool d=false, bool e=false) {
        return a && b && c && d && e;
    }
    bool OR(bool a=false, bool b=false, bool c=false, bool d=false, bool e=false) {
        return a || b || c || d || e;
    }
    bool NOT(bool a) {
        return !a;
    }
    bool XOR(bool a, bool b) {
        return (a || b) && !(a && b);
    }
    bool BUFFER(bool a) {
        return a;
    }

};

int main() {

    return 0;
}
