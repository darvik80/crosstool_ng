#include <iostream>
#include <fmt/format.h>
#include <boost/system.hpp>

int main() {
    std::cout << "Hello, World!" << std::endl;
    fmt::format("Hello: {}", 10);

    return 0;
}
