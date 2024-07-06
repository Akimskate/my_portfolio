import 'package:flutter/material.dart';

class DesktopPage extends StatelessWidget {
  const DesktopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Desktop'),
        ),
        body: const Center(
          child: Text('Desktop'),
        ));
  }
}
