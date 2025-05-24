import 'package:flutter/material.dart';

class MobilePortfolioSection extends StatelessWidget {
  const MobilePortfolioSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(32),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(3, (index) {
          return Container(
            margin: const EdgeInsets.only(bottom: 24),
            height: 200,
            color: Colors.grey[300],
            child: Center(child: Text('Project ${index + 1}')),
          );
        }),
      ),
    );
  }
}