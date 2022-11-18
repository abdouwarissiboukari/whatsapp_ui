import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui/data/colors_data.dart';
import 'package:whatsapp_ui/model/discussion.dart';
import 'package:whatsapp_ui/view/custom_padding.dart';
import 'package:whatsapp_ui/view/custom_puddat_text.dart';
import 'package:whatsapp_ui/view/discussion_archive_row.dart';
import 'package:whatsapp_ui/view/discussion_bottom.dart';
import 'package:whatsapp_ui/view/rounded_count_container.dart';
import 'package:whatsapp_ui/view/transform_rotate_push_pin.dart';

class DiscussionItemView extends StatelessWidget {
  final Discussion discussion;

  DiscussionItemView({super.key, required this.discussion});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
        onTap: () {},
        child: (discussion.imgAvatarPath == "Archive")
            ? Container(
                margin: const EdgeInsets.only(
                  bottom: 20,
                ),
                child: DiscussionArchiveRow(),
              )
            : ((discussion.imgAvatarPath == "Bottom")
                ? Container(
                    margin: const EdgeInsets.only(
                      top: 20,
                      bottom: 50,
                    ),
                    child: DiscussionBottom(),
                  )
                : Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage(discussion.getImgAvatarPath),
                          radius: 25,
                        ),
                        const CustomPadding(paddingValue: 7),
                        Container(
                          width: size.width * 0.7,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Flexible(
                                    child: Text(
                                      discussion.userName,
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  CustomPubDateText(
                                      pubDate: discussion.pubDate,
                                      countMessage: discussion.messageCount),
                                ],
                              ),
                              const Padding(padding: EdgeInsets.only(top: 3)),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Flexible(
                                    child: Text(
                                      discussion.message,
                                      style: const TextStyle(
                                          color: appDescriptionColor),
                                      overflow: TextOverflow.ellipsis,
                                      // softWrap: false,
                                      maxLines: 1,
                                    ),
                                  ),
                                  // const Spacer(),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                          top: 4,
                                        ),
                                        child: (discussion.isPin)
                                            ? TranformRotatePushPin()
                                            : Container(
                                                height: 0,
                                                width: 0,
                                              ),
                                      ),
                                      (discussion.messageCount > 0)
                                          ? RoundedCountContainer(
                                              countValue:
                                                  discussion.messageCount,
                                              countColor: appColor,
                                              countTextColor: appWhitebg,
                                            )
                                          : Container(
                                              height: 0,
                                              width: 0,
                                            )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )));
  }
}
