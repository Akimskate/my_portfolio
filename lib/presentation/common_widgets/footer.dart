import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Theme.of(context).colorScheme.inverseSurface,
          height: 0.3,
        ),
        Container(
          padding: const EdgeInsets.all(20),
          color: Theme.of(context).colorScheme.surface,
          child: const Center(
            child: Text(
              '© 2024 Akim Svoboda.',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
      ],
    );
  }
}
