import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/app/utils/portfolio_assets.dart';
import 'package:my_portfolio/presentation/common_widgets/section_wrapper.dart';

class MobilePortfolioSection extends StatelessWidget {
  const MobilePortfolioSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return SectionWrapper(
      center: false,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: Column(
        children: portfolioAssets.map((asset) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: SizedBox(
              width: double.infinity,
              height: screenHeight * 0.45,
              child: Stack(
                children: [
                  CarouselSlider(
                    options: CarouselOptions(
                      height: screenHeight * 0.55,
                      viewportFraction: 0.9,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      enableInfiniteScroll: true,
                    ),
                    items: asset.portfolioScreens.map((path) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset(path, fit: BoxFit.contain, width: double.infinity),
                      );
                    }).toList(),
                  ),
                  Positioned(
                    bottom: 12,
                    left: 16,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      color: Colors.black54,
                      child: Text(
                        asset.projectName,
                        style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
