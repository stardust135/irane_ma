import 'dart:io';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import '../constants/api_constants.dart';
import '../constants/data_state.dart';

class ApiManager {
  final Dio _dio;
  final ApiConstants _apiRoutes = ApiConstants();

  ApiManager(this._dio);

  // Future<dynamic> addToFavorites(int bookId, String userLang) async {
  //   try {
  //     var response = await _dio.post(
  //       _apiRoutes.addToFavorites(),
  //       options: await ApiConstants.getDioHeaders(),
  //       data: {
  //         "productId": bookId,
  //         "language": userLang,
  //       },
  //     );
  //     if (response.statusCode == 200) {
  //       return const DataSuccess(null);
  //     }
  //   } catch (e) {
  //     throw Exception('Error: $e');
  //   }
  // }
  //
  // Future<dynamic> deleteFromFavorites(int bookId, String userLang) async {
  //   try {
  //     var response = await _dio.post(
  //       _apiRoutes.deleteFromFavorites(),
  //       options: await ApiConstants.getDioHeaders(),
  //       data: {
  //         "productId": bookId,
  //         "language": userLang,
  //       },
  //     );
  //     if (response.statusCode == 200) {
  //       return const DataSuccess(null);
  //     }
  //   } catch (e) {
  //     throw Exception('Error: $e');
  //   }
  // }

  // Future<dynamic> fetchAllImages(List<String> endpoints) async {
  //   try {
  //     List<BookImageModel> bookImageModels = [];
  //     List<Future<Response>> futures = endpoints.map((endpoint) async {
  //       return _dio.post(
  //         '${_apiRoutes.baseUrl}$endpoint',
  //         options: await ApiConstants.getDioHeaders().then(
  //           (options) => options.copyWith(
  //             responseType: ResponseType.bytes,
  //           ),
  //         ),
  //       );
  //     }).toList();
  //
  //     List<Response> responses = await Future.wait(futures);
  //
  //     for (var response in responses) {
  //       if (response.statusCode == 200 && response.data != null) {
  //         bookImageModels.add(BookImageModel(response.data));
  //       }
  //     }
  //
  //     if (bookImageModels.isNotEmpty) {
  //       return DataSuccess(bookImageModels);
  //     }
  //   } catch (e) {
  //     throw Exception('Error: $e');
  //   }
  // }
  //
  // Future<dynamic> fetchHomeData(String userLang) async {
  //   try {
  //     var response = await _dio.post(
  //       _apiRoutes.homeData(),
  //       options: await ApiConstants.getDioHeaders(),
  //       data: {
  //         "showFreeCategory": true,
  //         "language": userLang,
  //         "NumberOfItems": 10,
  //         "DepartmentIDs": [1, 3]
  //       },
  //     );
  //     if (response.statusCode == 200) {
  //       return DataSuccess(HomeDataModel.fromJson(response.data));
  //     }
  //   } catch (e) {
  //     throw Exception('Error: $e');
  //   }
  // }
  //
  // Future<Uint8List> fetchImage(String endpoint) async {
  //   try {
  //     final response = await _dio.post(
  //       '${_apiRoutes.baseUrl}$endpoint',
  //       options: Options(responseType: ResponseType.bytes),
  //     );
  //     if (response.statusCode == 200) {
  //       return response.data;
  //     } else {
  //       throw Exception('Failed to load image: ${response.statusCode}');
  //     }
  //   } catch (e) {
  //     throw Exception('Error: $e');
  //   }
  // }
  //
  // Future<dynamic> fetchEpubFile(
  //   int bookId,
  //   String appDocPath,
  // ) async {
  //   String filePath = '$appDocPath/$bookId.epub';
  //   Dio dio = Dio();
  //
  //   try {
  //     Directory appDocDir = Directory(appDocPath);
  //     if (!await appDocDir.exists()) {
  //       await appDocDir.create(recursive: true);
  //     }
  //     Response response = await dio.download(
  //       '${_apiRoutes.getEpub()}/$bookId',
  //       filePath,
  //       options: await ApiConstants.getDioHeaders().then(
  //         (options) => options.copyWith(
  //           responseType: ResponseType.bytes,
  //         ),
  //       ),
  //     );
  //
  //     if (response.statusCode == 200) {
  //       // logger.e('File downloaded to: $filePath');
  //       return DataSuccess(filePath);
  //     }
  //   } catch (e) {
  //     return DataFailed(e.toString());
  //   }
  // }
}
