import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/app/utils/portfolio_assets.dart';
import 'package:my_portfolio/app/utils/portfolio_carousel_slider_widget.dart';
import 'package:my_portfolio/presentation/common_widgets/section_wrapper.dart';
import 'package:particles_network/particles_network.dart';

class TabletPortfolioSection extends StatefulWidget {
  const TabletPortfolioSection({super.key, required this.scrollController});

  final ScrollController scrollController;

  @override
  State<TabletPortfolioSection> createState() => _TabletPortfolioSectionState();
}

class _TabletPortfolioSectionState extends State<TabletPortfolioSection> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late List<Animation<double>> _fadeAnimations;
  late List<Animation<Offset>> _slideAnimations;

  bool animationStarted = false;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this, duration: Duration(milliseconds: 2000));

    _fadeAnimations = List.generate(3, (i) {
      return Tween(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(
          parent: _controller,
          curve: Interval(i * 0.2, i * 0.2 + 0.6, curve: Curves.easeOut),
        ),
      );
    });

    _slideAnimations = List.generate(3, (i) {
      return Tween<Offset>(begin: Offset(0, 0.2), end: Offset.zero).animate(
        CurvedAnimation(
          parent: _controller,
          curve: Interval(i * 0.2, i * 0.2 + 0.6, curve: Curves.easeOut),
        ),
      );
    });

    widget.scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    final offset = widget.scrollController.offset;
    if (!animationStarted && offset > 100) {
      animationStarted = true;
      _controller.forward();
    } else if (animationStarted && offset < 100) {
      animationStarted = false;
      _controller.reset();
    }
  }

  @override
  void dispose() {
    widget.scrollController.removeListener(_onScroll);
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: widget.scrollController,
      builder: (context, child) {
        double offset = widget.scrollController.hasClients ? widget.scrollController.offset : 0;
        double parallaxOffset = offset * 0.1;
        return Stack(
          children: [
            Positioned.fill(
              child: Transform.translate(
                offset: Offset(0, -parallaxOffset * 1),
                child: ParticleNetwork(
                  touchActivation: true,
                  particleCount: 40,
                  maxSpeed: 1,
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
              adaptiveCardWidth: true,
              child: Transform.translate(
                offset: Offset(0, -parallaxOffset),
                child: CarouselSlider.builder(
                  itemCount: portfolioAssets.length,
                  options: CarouselOptions(
                    height: 500,
                    enlargeCenterPage: true,
                    enableInfiniteScroll: true,
                    viewportFraction: 0.4,
                  ),
                  itemBuilder: (context, index, realIndex) {
                    final asset = portfolioAssets[index];
                    return FadeTransition(
                      opacity: _fadeAnimations[index],
                      child: SlideTransition(
                        position: _slideAnimations[index],
                        child: PortfolioCarouselSliderWidget(
                          height: 400,
                          width: 300,
                          images: asset.portfolioScreens,
                          title: asset.projectName,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
