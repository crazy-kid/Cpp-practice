#include "cow.h"
#include <iostream>

using namespace std;

int main(int argc, char const* argv[])
{
    /* code */
    cout << "Initialize, and show No.1:" << endl;
    Cow cow_list[2] = { {"Tom","Sleeppy",200} };
    cow_list[0].ShowCow();

    cout << "No.2 's default values: " << endl;
    cow_list[1].ShowCow();

    cout << "Now using operator =(). to init No.2" << endl;
    cow_list[1] = cow_list[0];
    cow_list[1].ShowCow();


    cout << "Now using copy constructor to init No.3" << endl;
    Cow copy(cow_list[0]);
    copy.ShowCow();

    return 0;
}
