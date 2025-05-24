import 'package:flutter/material.dart';
import 'package:my_portfolio/presentation/common_widgets/app_button_styles.dart';

class CustomDrawer extends StatelessWidget {
  final VoidCallback onScrollToProfile;
  final VoidCallback onScrollToPortfolio;
  final VoidCallback onScrollToFooter;

  const CustomDrawer(
      {super.key, required this.onScrollToProfile, required this.onScrollToPortfolio, required this.onScrollToFooter});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.deepPurple,
            ),
            child: Center(
              child: CircleAvatar(
                radius: 40,
                child: ClipOval(
                  child: Image.asset(
                    'assets/avatar1.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Akim Svoboda',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Divider(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  Future.delayed(const Duration(milliseconds: 300), onScrollToProfile);
                },
                style: AppButtonStyles.getButtonStyle(context),
                child: const Text('Home'),
              ),
              const SizedBox(
                width: 20,
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  Future.delayed(const Duration(milliseconds: 300), onScrollToPortfolio);
                },
                // onPressed: onScrollToPortfolio,
                style: AppButtonStyles.getButtonStyle(context),
                child: const Text('Profile'),
              ),
              const SizedBox(
                width: 20,
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  Future.delayed(const Duration(milliseconds: 300), onScrollToFooter);
                },
                style: AppButtonStyles.getButtonStyle(context),
                child: const Text('Connect'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
