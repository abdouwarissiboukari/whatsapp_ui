import 'package:flutter/cupertino.dart';

import '../data/discussion_data.dart';
import '../model/discussion.dart';
import 'discussion_list_view.dart';

class FutureBuilderVieuw extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Discussion>>(
      future: DiscussionData().getDiscussions(),
      builder: ((context, snapshot) =>
          DiscussionListView(discussions: snapshot.data ?? [])),
    );
  }
}
