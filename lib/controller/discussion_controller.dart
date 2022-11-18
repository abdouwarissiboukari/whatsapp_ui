import 'package:flutter/material.dart';
import 'package:whatsapp_ui/view/future_builder_view.dart';

class DiscussionController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Scrollbar(
        child: Container(
          height: size.height * 0.8,
          child: FutureBuilderVieuw(),
        ),
      ),
    );
  }
}
