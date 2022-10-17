import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key, required this.onPressed}) : super(key: key);

  final onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          onPressed: onPressed,
          child: const Text("Click me to see repository")),
    );
  }
}
