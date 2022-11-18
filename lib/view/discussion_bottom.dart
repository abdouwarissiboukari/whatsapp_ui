import 'package:flutter/cupertino.dart';
import 'package:whatsapp_ui/data/colors_data.dart';

class DiscussionBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Maintenez appuyée une discussion pour plus d'infos.",
        style: TextStyle(
          color: appDescriptionColor,
        ),
      ),
    );
  }
}
