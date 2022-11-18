import 'package:flutter/material.dart';
import 'package:whatsapp_ui/data/colors_data.dart';

class TranformRotatePushPin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: 45,
      child: const Icon(
        Icons.push_pin,
        size: 18,
        color: appDescriptionColor,
      ),
    );
  }
}
