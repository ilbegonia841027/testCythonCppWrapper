# distutils: language = c++
# distutils: sources = add.cpp
from libcpp.string cimport string
cdef extern from "add.h":
    cdef cppclass Dog:
        Dog(string aName, int aBarkCount) except +
        void bark()
        int getBarkCount()
        string getName()
        void setBarkCount(int newBarkCount)
        void setName(string newName)
    int add(int a, int b)
    void speak(string message, int times)

def pyadd(int a, int b):
    return add(a,b)

def pyspeak(string message, int times):
    speak(message, times)

cdef class PyDog:
    cdef Dog *thisptr
    def __cinit__(self, string aName, int aBarkCount):
        self.thisptr = new Dog(aName, aBarkCount)
    def __dealloc__(self):
        del self.thisptr
    def bark(self):
        self.thisptr.bark()
    def getName(self):
        return self.thisptr.getName()
    def getBarkCount(self):
        return self.thisptr.getBarkCount()
    def setName(self, newName):
        self.thisptr.setName(newName)
    def setBarkCount(self, newBarkCount):
        self.thisptr.setBarkCount(newBarkCount)
