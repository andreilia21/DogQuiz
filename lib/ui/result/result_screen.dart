import 'package:dog_quiz/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          OutlinedButton(
              onPressed: () => context.go(Routes.home),
              child: const Text("Go home")
          )
        ],
      ),
    );
  }
}
