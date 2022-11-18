import 'package:flutter/cupertino.dart';

import '../data/colors_data.dart';

class RoundedCountContainer extends StatelessWidget {
  final int countValue;
  final Color countColor;
  Color? countTextColor;

  RoundedCountContainer({
    super.key,
    required this.countValue,
    required this.countColor,
    this.countTextColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: countColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
          padding: const EdgeInsets.only(
            left: 7,
            right: 7,
            top: 4,
            bottom: 4,
          ),
          child: Text(
            countValue.toString(),
            style: TextStyle(
                color: countTextColor ?? appColor,
                fontSize: 11,
                fontWeight: FontWeight.bold),
          )),
    );
  }
}
