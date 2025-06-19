import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../routing/routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: const EdgeInsets.only(
                  left: 16, right: 16, top: 48, bottom: 16),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Dog Quiz",
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontSize: 32,
                            fontWeight: FontWeight.w600,
                            letterSpacing: -1.5)),
                    Opacity(
                      opacity: 0.7,
                      child: Text("Guess the dog's breed from its image",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(fontSize: 16, letterSpacing: -0.5)),
                    )
                  ])),
          Center(
            child: OutlinedButton(
                onPressed: () => context.push(Routes.quiz),
                child: const Text("Start")),
          )
        ],
      ),
    );
  }
}
