
#ifndef JERRY_H
#define JERRY_H

#include "Person.hpp"

/**
 * @brief This is a Jerry object
 * 
 */
class Jerry : Person {

private:
    

public:
    /**
     * @brief This is an add function it sums two numbers.
     * 
     * @param a first number
     * @param b second number
     * @return double sum
     */
    double add(double a, double b);

    /**
     * @brief This is the multiplication function.
     * 
     * @param a first number
     * @param b second number
     * @return double product
     */
    double mult(double a, double b);

};

#endif