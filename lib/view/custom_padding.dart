import 'package:flutter/material.dart';

class CustomPadding extends StatelessWidget {
  final double paddingValue;

  const CustomPadding({super.key, required this.paddingValue});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(paddingValue),
    );
  }
}
