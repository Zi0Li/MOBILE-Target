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

  int question2(String str) {
    int count = 0;

    for (int i = 0; i < str.length; i++) {
      if (str[i].toLowerCase() == 'a') {
        count++;
      }
    }

    return count;
  }

  int question3(int ind) {
    int sum = 0, K = 1;
    while (K < ind) {
      K = K + 1;
      sum = sum + K;
    }
    return sum;
  }
}
