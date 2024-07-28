import 'dart:typed_data';

class Book {
  final int? id;
  final String? title;
  final String? imageSource;
  final String? authorsName;
  final int? price;
  final int? salePrice;
  final double? rateAverage;
  final int? rateCount;
  final String? publishOrder;
  final bool? hasSound;
  final int? pageCount;
  final int? pagesRead;
  late Uint8List? image;
  final String? updatedAt;
  final bool? bookmarked;

  Book({
    this.id,
    this.title,
    this.imageSource,
    this.authorsName,
    this.price,
    this.salePrice,
    this.rateAverage,
    this.rateCount,
    this.publishOrder,
    this.hasSound,
    this.pagesRead,
    this.pageCount,
    this.image,
    this.updatedAt,
    this.bookmarked,
  });

  factory Book.fromMap(Map<String, dynamic> map) {
    return Book(
      id: map['id'],
      title: map['title'],
      imageSource: map['imageSource'],
      authorsName: map['authorsName'],
      price: map['price'],
      salePrice: map['salePrice'],
      rateAverage: map['rateAverage']?.toDouble(),
      rateCount: map['rateCount'],
      publishOrder: map['publishOrder'],
      hasSound: map['hasSound'] ?? false,
      updatedAt: map['updatedAt'],
      image: map['image'],
      pageCount: map['pageCount'],
      pagesRead: map['pagesRead'],
      bookmarked: map['bookmarked'] ?? false,
    );
  }

  double get progress => pagesRead! / pageCount! * 100;

  Book copyWith({
    int? id,
    String? title,
    String? imageSource,
    String? authorsName,
    int? price,
    int? salePrice,
    double? rateAverage,
    int? rateCount,
    String? publishOrder,
    bool? hasSound,
    bool? hasText,
    Uint8List? image,
    int? pageCount,
    int? pagesRead,
    String? updatedAt,
    bool? bookmarked,
  }) {
    return Book(
      id: id ?? this.id,
      title: title ?? this.title,
      imageSource: imageSource ?? this.imageSource,
      authorsName: authorsName ?? this.authorsName,
      price: price ?? this.price,
      salePrice: salePrice ?? this.salePrice,
      rateAverage: rateAverage ?? this.rateAverage,
      rateCount: rateCount ?? this.rateCount,
      publishOrder: publishOrder ?? this.publishOrder,
      hasSound: hasSound ?? this.hasSound,
      image: image ?? this.image,
      pageCount: pageCount ?? this.pageCount,
      pagesRead: pagesRead ?? this.pagesRead,
      updatedAt: updatedAt ?? this.updatedAt,
      bookmarked: bookmarked ?? this.bookmarked,
    );
  }
}
