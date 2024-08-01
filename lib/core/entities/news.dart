import 'channel.dart';

class News {
  int? id;
  String? title;
  String? date;
  String? content;
  String? imageUrl;
  Channel? channel;

  News({
    this.id,
    this.title,
    this.date,
    this.imageUrl,
    this.content,
    this.channel,
  });
}
