import 'package:whatsapp_ui/model/discussion.dart';

class DiscussionData {
  List<Discussion> allDiscussion = [
    Discussion(
        imgAvatarPath: "Archive",
        userName: "",
        messageCount: 0,
        message: "",
        pubDate: "",
        isPin: true),
    Discussion(
        imgAvatarPath: "avatar1.jpg",
        userName: "Joe Biden",
        messageCount: 10,
        message: "Oui j'ai reçu le virement des 10bloc.",
        pubDate: "18:07",
        isPin: true),
    Discussion(
        imgAvatarPath: "avatar2.jpg",
        userName: "Emmanuel Macron",
        messageCount: 4,
        message: "Coucou comment tu vas?",
        pubDate: "15:07",
        isPin: true),
    Discussion(
        imgAvatarPath: "default.png",
        userName: "Maurice de Geneve",
        messageCount: 0,
        message: "On se fixe un rendez-vous pour en dicustez.",
        pubDate: "16/11/2022",
        isPin: true),
    Discussion(
        imgAvatarPath: "avatar4.jpg",
        userName: "Delano Abigaelle",
        messageCount: 7,
        message: "Quelle est programme de la soirée?",
        pubDate: "18:07",
        isPin: false),
    Discussion(
        imgAvatarPath: "avatar3.jpg",
        userName: "Ami Liliane",
        messageCount: 7,
        message: "On se voit demain?",
        pubDate: "07:07",
        isPin: false),
    Discussion(
        imgAvatarPath: "default.png",
        userName: "Seyi Razak",
        messageCount: 0,
        message: "J'ai encaissé les 1 milliard envoyé par Elon Musk?",
        pubDate: "07:07",
        isPin: false),
    Discussion(
        imgAvatarPath: "default.png",
        userName: "Mivamivo WhatsApp",
        messageCount: 0,
        message: "On a ombien de crédit à décaisser aujourd'hui?",
        pubDate: "08:07",
        isPin: false),
    Discussion(
        imgAvatarPath: "default.png",
        userName: "Mivamivo WhatsApp",
        messageCount: 0,
        message: "On a ombien de crédit à décaisser aujourd'hui?",
        pubDate: "08:07",
        isPin: false),
    Discussion(
        imgAvatarPath: "default.png",
        userName: "Kim Bill",
        messageCount: 0,
        message: "On a ombien de crédit à décaisser aujourd'hui?",
        pubDate: "08:07",
        isPin: false),
    Discussion(
        imgAvatarPath: "default.png",
        userName: "Afiss",
        messageCount: 0,
        message: "On a ombien de crédit à décaisser aujourd'hui?",
        pubDate: "08:07",
        isPin: false),
    Discussion(
        imgAvatarPath: "default.png",
        userName: "Joe Biden",
        messageCount: 0,
        message: "On a ombien de crédit à décaisser aujourd'hui?",
        pubDate: "08:07",
        isPin: false),
    Discussion(
        imgAvatarPath: "default.png",
        userName: "Emmanuel Macro Junior",
        messageCount: 0,
        message: "On a ombien de crédit à décaisser aujourd'hui?",
        pubDate: "08:07",
        isPin: false),
    Discussion(
        imgAvatarPath: "avatar1.jpg",
        userName: "Ulrich Mido",
        messageCount: 10,
        message: "Oui j'ai reçu le virement des 10bloc.",
        pubDate: "18:07",
        isPin: false),
    Discussion(
        imgAvatarPath: "avatar2.jpg",
        userName: "Alice Dzido",
        messageCount: 4,
        message: "Coucou comment tu vas?",
        pubDate: "15:07",
        isPin: true),
    Discussion(
        imgAvatarPath: "Bottom",
        userName: "",
        messageCount: 0,
        message: "",
        pubDate: "",
        isPin: true),
  ];

  Future<List<Discussion>> getDiscussions() async {
    return allDiscussion;
  }
}
