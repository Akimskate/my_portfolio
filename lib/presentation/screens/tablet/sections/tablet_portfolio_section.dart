import 'package:flutter/material.dart';
import 'package:my_portfolio/presentation/common_widgets/section_wrapper.dart';
import 'package:particles_network/particles_network.dart';

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
          double offset = scrollController.hasClients ? scrollController.offset : 0;
          double parallaxOffset = offset * 0.1;
          return Stack(
            children: [
              Positioned.fill(
                child: Transform.translate(
                  offset: Offset(0, -parallaxOffset * 1),
                  child: ParticleNetwork(
                    touchActivation: true,
                    particleCount: 40,
                    maxSpeed: 1.5,
                    maxSize: 1.5,
                    lineDistance: 170,
                    particleColor: Theme.of(context).brightness == Brightness.dark ? Colors.white : Colors.black,
                    lineColor: Theme.of(context).brightness == Brightness.dark ? Colors.white54 : Colors.black26,
                    touchColor: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              ),
              SectionWrapper(
                center: true,
                child: Transform.translate(
                  offset: Offset(0, -parallaxOffset),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(
                      3,
                      (index) {
                        return Container(
                          margin: const EdgeInsets.all(16),
                          height: 200,
                          color: Colors.black,
                          child: Center(child: Text('Project ${index + 1}')),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
