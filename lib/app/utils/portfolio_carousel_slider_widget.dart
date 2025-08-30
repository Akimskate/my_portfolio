import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class PortfolioCarouselSliderWidget extends StatelessWidget {
  final List<String> images;
  final String title;
  final double height;
  final double width;
  final double borderRadius;
  final EdgeInsets margin;

  const PortfolioCarouselSliderWidget({
    super.key,
    required this.images,
    required this.title,
    this.height = 600,
    this.width = 350,
    this.borderRadius = 24,
    this.margin = const EdgeInsets.all(32),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      clipBehavior: Clip.hardEdge,
      child: Stack(
        fit: StackFit.expand,
        children: [
          CarouselSlider(
            options: CarouselOptions(
              enlargeCenterPage: true,
              enableInfiniteScroll: true,
              autoPlay: false,
              viewportFraction: 0.85,
            ),
            items: images.map((imagePath) {
              return Image.asset(
                imagePath,
                fit: BoxFit.cover,
              );
            }).toList(),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: const BoxDecoration(
              ),
              child: Text(
                title,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inverseSurface,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.2,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
