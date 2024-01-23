String? validateDiverInput(String? input) {
  if (input == null) {
    return null;
  }
  if (isDiverInputCorrect(input)) {
    return null;
  } else {
    return "too short";
  }
}

bool isDiverInputCorrect(String input) {
  return input.length >= 3;
}
