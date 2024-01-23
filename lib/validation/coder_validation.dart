String? validateTreeInput(String? input) {
  if (input == null) {
    return null;
  }
  if (isTreeInputCorrect(input)) {
    return null;
  } else {
    return "There is a better one";
  }
}

bool isTreeInputCorrect(String input) {
  String correctAnswer = "widgettree";
  String lowerCaseInput = input.toLowerCase();

  if (correctAnswer == lowerCaseInput) {
    return true;
  } else {
    return false;
  }
}
