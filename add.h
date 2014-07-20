#ifndef ADD_H_
#define ADD_H_
#include <iostream>
int add(int a, int b);
void speak(std::string message, int times);

class Dog {
    public:
        Dog(std::string aName, int aBarkCount);
        ~Dog() {};
        void bark();
        int getBarkCount() {return barkCount;};
        std::string getName() {return name;};
        void setBarkCount(int newCount) { barkCount = newCount; };
        void setName(std::string newString) { name = newString; };
    private:
        int barkCount;
        std::string name;
};

#endif
