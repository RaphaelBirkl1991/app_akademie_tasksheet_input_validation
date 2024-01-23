import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final GlobalKey<FormState> key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Input Validation"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
                child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.scuba_diving),
                    hintText: "Name your diver",
                    labelText: "Divers Name",
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: validateDiverInput,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.account_tree_outlined),
                    hintText: "Favorite Tree",
                    labelText: "Whats your favorite tree?",
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: validateTreeInput,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      icon: Icon(Icons.add_road),
                      hintText: "Pilot?",
                      labelText: "Are you landing a plane right now?"),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: validatePilotInput,
                ),
                const SizedBox(
                  height: 50,
                ),
                ElevatedButton(onPressed: () {}, child: const Text("weiter")),
              ],
            )),
          ),
        ),
      ),
    );
  }
}

String? validateDiverInput(String? input) {
  if (input == null) {
    return null;
  }
  if (isDiverInputCorrect(input)) {
    return null;
  } else {
    return input;
  }
}

String? validateTreeInput(String? input) {
  if (input == null) {
    return null;
  }
  if (isTreeInputCorrect(input)) {
    return null;
  } else {
    return "Fehler";
  }
}

String? validatePilotInput(String? input) {
  if (input == null) {
    return null;
  }
  if (isPilotExcluded(input)) {
    return null;
  } else {
    return input;
  }
}

bool isDiverInputCorrect(String input) {
  if (input.length >= 3) {
    return true;
  } else {
    return false;
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

bool isPilotExcluded(String input) {
  String correctAnswer = "no";
  String lowerCaseInput = input.toLowerCase();
  if (correctAnswer == lowerCaseInput) {
    return true;
  } else {
    return false;
  }
}
