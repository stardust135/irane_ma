import 'dart:io';
import 'package:dio/dio.dart';


class ApiConstants {
  final String baseUrl = 'https://api2.iki.ac.ir/book-store';

  String homeData() => "$baseUrl/Home";

  String getEpub() => "$baseUrl/Product/Epub";

  // String addToFavorites() => "$baseUrl/UserFavorites/Insert";

  // String deleteFromFavorites() => "$baseUrl/UserFavorites/Delete";

  static Future<Options> getDioHeaders() async => Options(
        followRedirects: true,
        validateStatus: (_) => true,
        headers: {
          HttpHeaders.contentTypeHeader: "application/json",
        },
      );
}
