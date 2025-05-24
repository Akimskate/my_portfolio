import 'package:flutter/material.dart';

class DesktopPortfolioSection extends StatelessWidget {
  const DesktopPortfolioSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(32),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: List.generate(3, (index) {
          return Container(
            //margin: const EdgeInsets.all(50),
            height: 600,
            width: 300,
            color: Colors.grey[300],
            child: Center(child: Text('Project ${index + 1}')),
          );
        }),
      ),
    );
  }
}
