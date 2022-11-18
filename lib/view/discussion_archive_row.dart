import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui/data/colors_data.dart';

class DiscussionArchiveRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: const [
        Padding(padding: EdgeInsets.only(left: 15)),
        Icon(
          Icons.archive_outlined,
          color: appColor,
        ),
        Padding(padding: EdgeInsets.only(left: 25)),
        Text(
          "Archivée",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
