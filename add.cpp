#include "add.h"

Dog::Dog(std::string aName, int aBarkCount){
    barkCount = aBarkCount;
    name = aName;
}

void Dog::bark()
{
    std::cout << "Hi my name is\n";
    speak(name, barkCount);
}

int add(int a, int b)
{
    return a + b;
}

void speak(std::string message, int times)
{
    for(int ii = 0; ii < times; ++ii) {
        std::cout << ii << ":" << message << std::endl;
    }
    return;
}
