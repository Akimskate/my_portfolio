import 'package:flutter/material.dart';
import 'package:my_portfolio/app/utils/scroll_to_section.dart';
import 'package:my_portfolio/presentation/common_widgets/custom_app_bar.dart';
import 'package:my_portfolio/presentation/common_widgets/custom_drawer.dart';
import 'package:my_portfolio/presentation/common_widgets/footer.dart';
import 'package:my_portfolio/presentation/common_widgets/theme_switch_button.dart';
import 'package:my_portfolio/presentation/screens/mobile/sections/mobile_portfolio_section.dart';
import 'package:my_portfolio/presentation/screens/mobile/sections/mobile_profile_section.dart';

class MobilePage extends StatelessWidget {
  const MobilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final mobileProfileKey = GlobalKey();
    final mobilePortfolioKey = GlobalKey();
    final mobileFooterKey = GlobalKey();

    return Scaffold(
      appBar: CustomAppBar(
        onScrollToProfile: () => scrollToSection(mobileProfileKey),
        onScrollToPortfolio: () => scrollToSection(mobilePortfolioKey),
        onScrollToFooter: () => scrollToSection(mobileFooterKey),
      ),
      endDrawer: CustomDrawer(
        onScrollToProfile: () => scrollToSection(mobileProfileKey),
        onScrollToPortfolio: () => scrollToSection(mobilePortfolioKey),
        onScrollToFooter: () => scrollToSection(mobileFooterKey),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            key: mobileProfileKey,
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: screenHeight),
              child: MobileProfileSection(),
            ),
          ),
          SliverToBoxAdapter(
            key: mobilePortfolioKey,
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: screenHeight),
              child: MobilePortfolioSection(),
            ),
          ),
          SliverToBoxAdapter(
            key: mobileFooterKey,
            child: Footer(),
          ),
        ],
      ),
      floatingActionButton: const ThemeSwitchFAB(),
    );
  }
}
