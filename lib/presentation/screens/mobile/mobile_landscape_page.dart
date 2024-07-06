import 'package:flutter/material.dart';

class MobileLandscapePage extends StatelessWidget {
  const MobileLandscapePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Mobile Landscape'),
        ),
        body: const Center(
          child: Text('Home Mobile Landscape'),
        ));
  }
}
