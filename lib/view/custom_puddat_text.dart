import 'package:flutter/cupertino.dart';

import '../data/colors_data.dart';

class CustomPubDateText extends StatelessWidget {
  final String pubDate;
  final int countMessage;

  const CustomPubDateText(
      {super.key, required this.pubDate, required this.countMessage});

  @override
  Widget build(BuildContext context) {
    return Text(
      pubDate,
      style: TextStyle(
          color: (countMessage == 0) ? appDescriptionColor : appColor,
          fontSize: 11),
    );
  }
}
