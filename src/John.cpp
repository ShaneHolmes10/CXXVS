#include "John.hpp"
#include <iostream>

int John::Hollar() {
    std::cout << "Hello there" << message << std::endl;
    return message;
}


void John::setHollar(int mes) {
    message = mes;
}