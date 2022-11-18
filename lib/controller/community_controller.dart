import 'package:flutter/material.dart';
import 'package:whatsapp_ui/data/colors_data.dart';
import 'package:whatsapp_ui/data/community_data.dart';
import 'package:whatsapp_ui/view/custom_padding.dart';

class CommunityController extends StatelessWidget {
  final CommunityData communityData = CommunityData();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            communityData.imgCommunityPath,
            fit: BoxFit.cover,
            height: size.height * 0.33,
          ),
          const CustomPadding(paddingValue: 10),
          Text(
            communityData.title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const CustomPadding(paddingValue: 8),
          Text(
            communityData.description,
            style: const TextStyle(color: appDescriptionColor, height: 1.5),
            textAlign: TextAlign.center,
          ),
          const CustomPadding(paddingValue: 20),
          ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: appColor),
              onPressed: () {},
              child: Text(communityData.buttonText.toUpperCase()))
        ],
      ),
    );
  }
}
