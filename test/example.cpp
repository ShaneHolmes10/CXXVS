#define BOOST_TEST_MODULE JohnTests
#include <boost/test/included/unit_test.hpp>
#include "John.hpp"

BOOST_AUTO_TEST_CASE(test_setHollar)
{
    John j;
    j.setHollar(10);
    BOOST_TEST(j.Hollar() == 10); // Assuming `Hollar()` returns the value set
}

BOOST_AUTO_TEST_CASE(test_default_hollar)
{
    John j;
    BOOST_TEST(j.Hollar() == 0); // Assuming default value for `Hollar` is 0
}