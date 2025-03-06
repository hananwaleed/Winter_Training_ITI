void main() {
  void DivTwoParameters({required int num1, required int num2}) {
    if (num2 == 0) {
      print("div by zero");
    } else {
      double result = num1 / num2;  
      print("Result: $result");
    }
  }

  DivTwoParameters(num1: 20, num2: 4);
}
