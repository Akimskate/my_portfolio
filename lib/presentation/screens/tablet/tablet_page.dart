import 'package:flutter/material.dart';
import 'package:my_portfolio/app/utils/scroll_to_section.dart';
import 'package:my_portfolio/presentation/common_widgets/custom_app_bar.dart';
import 'package:my_portfolio/presentation/common_widgets/footer.dart';
import 'package:my_portfolio/presentation/common_widgets/theme_switch_button.dart';
import 'package:my_portfolio/presentation/screens/tablet/sections/tablet_portfolio_section.dart';
import 'package:my_portfolio/presentation/screens/tablet/sections/tablet_profile_section.dart';

class TabletPage extends StatefulWidget {
  const TabletPage({super.key});

  @override
  State<TabletPage> createState() => _TabletPortraitPageState();
}

class _TabletPortraitPageState extends State<TabletPage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final ScrollController _scrollController = ScrollController();

  final tabletProfileKey = GlobalKey();
  final tabletPortfolioKey = GlobalKey();
  final tabletFooterKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: CustomAppBar(
        onScrollToProfile: () => scrollToSection(tabletProfileKey),
        onScrollToPortfolio: () => scrollToSection(tabletPortfolioKey),
        onScrollToFooter: () => scrollToSection(tabletFooterKey),
      ),
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverToBoxAdapter(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: screenHeight),
              child: TabletProfileSection(
                controller: _controller,
                scrollController: _scrollController,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: screenHeight),
              child: TabletPortfolioSection(
                scrollController: _scrollController,
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Footer(),
          ),
        ],
      ),
      floatingActionButton: const ThemeSwitchFAB(),
    );
  }
}
