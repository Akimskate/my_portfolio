import 'package:flutter/material.dart';
import 'package:my_portfolio/app/utils/scroll_to_section.dart';
import 'package:my_portfolio/presentation/common_widgets/custom_app_bar.dart';
import 'package:my_portfolio/presentation/common_widgets/footer.dart';
import 'package:my_portfolio/presentation/common_widgets/theme_switch_button.dart';
import 'package:my_portfolio/presentation/screens/desktop/sections/desktop_portfolio_section.dart';
import 'package:my_portfolio/presentation/screens/desktop/sections/desktop_profile_section.dart';

class DesktopPage extends StatefulWidget {
  const DesktopPage({super.key});

  @override
  State<DesktopPage> createState() => _DesktopPageState();
}

class _DesktopPageState extends State<DesktopPage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final ScrollController _scrollController = ScrollController();

  final desktopProfileKey = GlobalKey();
  final desktopPortfolioKey = GlobalKey();
  final desktopFooterKey = GlobalKey();

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
        onScrollToProfile: () => scrollToSection(desktopProfileKey),
        onScrollToPortfolio: () => scrollToSection(desktopPortfolioKey),
        onScrollToFooter: () => scrollToSection(desktopFooterKey),
      ),
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverToBoxAdapter(
            key: desktopProfileKey,
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: screenHeight),
              child: DesktopProfileSection(
                controller: _controller,
                scrollController: _scrollController,
              ),
            ),
          ),
          SliverToBoxAdapter(
            key: desktopPortfolioKey,
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: screenHeight),
              child: DesktopPortfolioSection(
                scrollController: _scrollController,
              ),
            ),
          ),
          SliverToBoxAdapter(
            key: desktopFooterKey,
            child: Footer(),
          ),
        ],
      ),
      floatingActionButton: const ThemeSwitchFAB(),
    );
  }
}
