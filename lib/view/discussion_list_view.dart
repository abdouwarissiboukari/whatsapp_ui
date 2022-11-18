import 'package:flutter/cupertino.dart';
import 'package:whatsapp_ui/model/discussion.dart';
import 'package:whatsapp_ui/view/discussion_item_view.dart';

class DiscussionListView extends StatelessWidget {
  final List<Discussion> discussions;

  const DiscussionListView({super.key, required this.discussions});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) =>
          DiscussionItemView(discussion: discussions[index]),
      itemCount: discussions.length,
    );
  }
}
