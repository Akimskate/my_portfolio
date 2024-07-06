import 'package:flutter/material.dart';

class MobilePortraitPage extends StatelessWidget {
  const MobilePortraitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Mobile Portrait'),
        ),
        body: const Center(
          child: Text('Home Mobile Portrait'),
        ));
  }
}
