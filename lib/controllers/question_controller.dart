class QuestionController {

  QuestionController(); 

  bool question1(int num) {
    int a = 0;
    int b = 1;

    if (num == a || num == b) {
      return true;
    }

    int fibonacci = a + b;

    while (fibonacci <= num) {
      if (fibonacci == num) {
        return true;
      }
      a = b;
      b = fibonacci;
      fibonacci = a + b;
    }

    return false;
  }
}
