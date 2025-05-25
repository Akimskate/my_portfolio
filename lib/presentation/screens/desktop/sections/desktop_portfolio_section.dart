import 'package:flutter/material.dart';

class DesktopPortfolioSection extends StatelessWidget {
  const DesktopPortfolioSection({super.key, required this.scrollController});

  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      child: AnimatedBuilder(
        animation: scrollController,
        builder: (context, child) {
          double offset = scrollController.hasClients ? scrollController.offset : 0;
          double parallaxOffset = offset * 0.1;
          return Transform.translate(
            offset: Offset(0, -parallaxOffset),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: List.generate(
                3,
                (index) {
                  return Container(
                    height: 600,
                    width: 300,
                    color: Colors.grey[300],
                    child: Center(child: Text('Project ${index + 1}')),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
