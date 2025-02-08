#define BOOST_TEST_MODULE NewTest
#include <boost/test/included/unit_test.hpp>
#include "John.hpp"

BOOST_AUTO_TEST_CASE(test_hollar_negative)
{
    John j;
    j.setHollar(-5);
    BOOST_TEST(j.Hollar() == -5); // Assuming `Hollar()` handles negative values
}

BOOST_AUTO_TEST_CASE(test_hollar_large_value)
{
    John j;
    j.setHollar(1000000);
    BOOST_TEST(j.Hollar() == 1000000); // Test a large value
}