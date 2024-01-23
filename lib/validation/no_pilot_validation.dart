String? validatePilotInput(String? input) {
  if (input == null) {
    return null;
  }
  if (isPilotExcluded(input)) {
    return null;
  } else {
    return "we don´t like pilots";
  }
}

bool isPilotExcluded(String input) {
  String correctAnswer = "no";
  String lowerCaseInput = input.toLowerCase();
  if (correctAnswer == lowerCaseInput) {
    return true;
  } else {
    return false;
  }
}
