import 'package:flutter/material.dart';
import 'package:lion_project_5/common/widgets/custom_container.dart';

class XylophonePage extends StatelessWidget {
  const XylophonePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          CustomContainer(color: Colors.orange, note: '1'),
          CustomContainer(color: Colors.yellow, note: '2'),
          CustomContainer(color: Colors.green, note: '3'),
          CustomContainer(color: Colors.greenAccent, note: '4'),
          CustomContainer(color: Colors.blue, note: '5'),
          CustomContainer(color: Colors.red, note: '6'),
          CustomContainer(color: Colors.purple, note: '7'),
        ],
      ),
    );
  }
}
