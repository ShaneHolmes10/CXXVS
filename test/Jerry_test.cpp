#define BOOST_TEST_MODULE NewTest
#include <boost/test/included/unit_test.hpp>
#include "Jerry.hpp"

BOOST_AUTO_TEST_CASE(test_Jerry_add)
{
    Jerry jer;
    BOOST_TEST(jer.add(4, 4) == 8);
}

BOOST_AUTO_TEST_CASE(test_Jerry_mult)
{
    Jerry jer;
    BOOST_TEST(jer.mult(4, 4) == 16);
}
