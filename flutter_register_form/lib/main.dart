import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Registration Form",
    theme: ThemeData(primarySwatch: Colors.blue),
    home: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Registration Form")),
      body: const RegistrationForm(),
    );
  }
}

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({Key? key}) : super(key: key);

  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  late final TextEditingController _email;
  late final TextEditingController _pass;

  @override
  void initState() {
    _email = TextEditingController();
    _pass = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _pass.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(
          keyboardType: TextInputType.emailAddress,
          enableSuggestions: false,
          autocorrect: false,
          decoration: const InputDecoration(
              icon: Icon(Icons.email), hintText: "Enter your email"),
          controller: _email,
        ),
        TextField(
          obscureText: true,
          enableSuggestions: false,
          autocorrect: false,
          decoration: const InputDecoration(
              icon: Icon(Icons.password), hintText: "Enter your password"),
          controller: _pass,
        ),
        TextButton(
            onPressed: () {
              String email = _email.text;
              String pass = _pass.text;
            },
            child: const Text("Register"))
      ],
    );
  }
}
