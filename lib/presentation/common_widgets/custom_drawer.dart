import 'package:flutter/material.dart';
import 'package:my_portfolio/presentation/common_widgets/app_button_styles.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.deepPurple,
            ),
            child: Center(
              child: CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage('https://www.example.com/your-avatar.jpg'),
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
                onPressed: () {},
                style: AppButtonStyles.getButtonStyle(context),
                child: const Text('Home'),
              ),
              const SizedBox(
                width: 20,
              ),
              TextButton(
                onPressed: () {},
                style: AppButtonStyles.getButtonStyle(context),
                child: const Text('Profile'),
              ),
              const SizedBox(
                width: 20,
              ),
              TextButton(
                onPressed: () {},
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
