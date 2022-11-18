import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui/controller/call_controller.dart';
import 'package:whatsapp_ui/controller/community_controller.dart';
import 'package:whatsapp_ui/controller/discussion_controller.dart';
import 'package:whatsapp_ui/controller/status_controller.dart';
import 'package:whatsapp_ui/data/colors_data.dart';
import 'package:whatsapp_ui/view/rounded_count_container.dart';

class HomeController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: appColor,
          title: const Text("WhatsApp"),
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.camera_alt_outlined)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
          bottom: TabBar(
              indicatorColor: appWhitebg,
              labelPadding: const EdgeInsets.symmetric(horizontal: 0.0),
              tabs: [
                const Icon(
                  Icons.groups,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text("DISC."),
                    RoundedCountContainer(
                      countValue: 7,
                      countColor: appWhitebg,
                    )
                  ],
                ),
                const Text("STATUT"),
                const Text("APPELS"),
              ]),
        ),
        body: TabBarView(children: [
          CommunityController(),
          DiscussionController(),
          StatusController(),
          CallController(),
        ]),
      ),
    );
  }
}
