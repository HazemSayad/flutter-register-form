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
      body: const Center(child: Text("Registration Form Body")),
    );
  }
}
