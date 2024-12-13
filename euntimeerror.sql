#include <iostream>
#include <stdexcept>  // For runtime_error

using namespace std;

int main() {
  int num1, num2, result;

  try {
    cout << "Enter first number: ";
    cin >> num1;
    cout << "Enter second number: ";
    cin >> num2;

    if (num2 == 0) {
      // Throwing runtime_error if division by zero occurs
      throw runtime_error("Division by zero is not allowed!");
    }

    result = num1 / num2;
    cout << "Result: " << result << endl;
  } catch (const runtime_error &e) {
    // Correctly catching runtime_error and displaying the error message
    cerr << "Error: " << e.what() << endl;
  } catch (...) {
 // Catching any other unknown exceptions
    cerr << "An unknown error occurred!" << endl;
  }

  return 0;
}