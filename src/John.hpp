
#ifndef JOHN_H
#define JOHN_H

#include "Person.hpp"

/**
 * @brief This is a John file
 * 
 * 
 */
class John : Person {

private:
    int message = 0;

public:

    /**
     * @brief This is a John's hollar
     * 
     * @return int return hollar value
     */
    int Hollar();


    /**
     * @brief Set the Hollar object
     * 
     * @param mes hollar message
     */
    void setHollar(int mes);


};

#endif