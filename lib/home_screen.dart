import 'package:flutter/material.dart';
import 'package:tasksheet_input_validation/validation/coder_validation.dart';
import 'package:tasksheet_input_validation/validation/no_pilot_validation.dart';
import 'package:tasksheet_input_validation/validation/scuba_validation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Input Validation"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.scuba_diving),
                    hintText: "Name your diver",
                    labelText: "Diver's Name",
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: validateDiverInput,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.account_tree_outlined),
                    hintText: "Favorite Tree",
                    labelText: "What's your favorite tree?",
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: validateTreeInput,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.add_road),
                    hintText: "Pilot?",
                    labelText: "Are you landing a plane right now?",
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: validatePilotInput,
                ),
                const SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/second");
                  },
                  child: const Text("Another Validation"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
