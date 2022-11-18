class Discussion {
  String imgAvatarPath;
  String userName;
  int messageCount;
  String message;
  String pubDate;
  bool isPin;

  String get getImgAvatarPath => 'assets/$imgAvatarPath';

  Discussion(
      {required this.imgAvatarPath,
      required this.userName,
      required this.messageCount,
      required this.message,
      required this.pubDate,
      required this.isPin});
}
