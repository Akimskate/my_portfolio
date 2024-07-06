import 'package:flutter/material.dart';

class TabletPage extends StatelessWidget {
  const TabletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Tablet'),
        ),
        body: const Center(
          child: Text('Tablet'),
        ));
  }
}
