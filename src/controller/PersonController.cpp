#include "PersonController.hpp"
#include "../John.hpp"
#include "../Jerry.hpp"
#include <iostream>

void PersonController::init()
{

    John *jon = new John();

    jon->Hollar();

    Jerry *jer = new Jerry();

    double var = jer->add(34, 23);
}
