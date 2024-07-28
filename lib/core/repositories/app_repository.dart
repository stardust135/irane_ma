import '../constants/data_state.dart';

class AppRepository {
  Future<DataState<dynamic>> fetchData(Function callApiFunction) async {
    try {
      DataState dataState = await callApiFunction();
      return dataState;
    } catch (e) {
      return DataFailed('$e');
    }
  }
}