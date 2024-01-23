import 'package:flutter/material.dart';
import 'package:tasksheet_input_validation/another_input_validation.dart';
import 'package:tasksheet_input_validation/home_screen.dart';

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
      initialRoute: "/",
      routes: {
        "/": (context) => const HomeScreen(),
        "/second": (context) => const AnotherInputValidation(),
      },
    );
  }
}
