import 'package:flutter/material.dart';
import 'package:tasksheet_input_validation/validation/email.validation.dart';
import 'package:tasksheet_input_validation/validation/password_validation.dart';
import 'package:tasksheet_input_validation/validation/username_validation.dart';

class AnotherInputValidation extends StatefulWidget {
  const AnotherInputValidation({super.key});

  @override
  State<AnotherInputValidation> createState() => _AnotherInputValidationState();
}

class _AnotherInputValidationState extends State<AnotherInputValidation> {
  final _formKey = GlobalKey<FormState>();
  void validateData() {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text(
          "Daten sind valide",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green,
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Another Input Validation"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Bitte E-Mail eingeben",
                      ),
                      validator: validEmail,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Bitte Passwort eingeben",
                      ),
                      obscureText: true,
                      validator: validPasswordLength,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Bitte Benutzername eingeben",
                      ),
                      validator: validUsername,
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Center(
                        child: ElevatedButton(
                            onPressed: () => validateData(),
                            child: const Text("Überprüfen")))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
