import 'package:flutter/material.dart';

class TabletPortfolioSection extends StatelessWidget {
  const TabletPortfolioSection({super.key, required this.scrollController});

  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      child: AnimatedBuilder(
        animation: scrollController,
        builder: (context, child) {
          return Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              3,
              (index) {
                return Container(
                  margin: const EdgeInsets.only(bottom: 24),
                  height: 200,
                  color: Colors.grey[300],
                  child: Center(child: Text('Project ${index + 1}')),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
