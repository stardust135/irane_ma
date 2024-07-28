import 'package:hive/hive.dart';

class AppDbManager {
  final String boxName = 'app_db';
  late Box _box;
  Map<String, List<int>>? homeSliderBooksId;
  Map<String, List<int>>? homeOtherCategoriesBooksId;
  late bool showLastBookReadMessage;
  int? lastBookReadId;
  String? token;
  String currentLanguage = 'fa';

  initValues() async {
    _box = await Hive.openBox(boxName);
    homeSliderBooksId =
        (_box.get('homeSliderBooksId') as Map?)?.cast<String, List<int>>();
    homeOtherCategoriesBooksId =
        (_box.get('homeOtherCategoriesBooksId') as Map?)
            ?.cast<String, List<int>>();
    showLastBookReadMessage = _box.get('showLastBookReadMessage') ?? false;
    lastBookReadId = _box.get('lastBookReadId');
    token = _box.get('token');
  }

  setUserToken(String token) {
    this.token = token;
    _box.put('token', token);
  }

  setHomeSliderBooksId(Map<String, List<int>> ids) {
    homeSliderBooksId = ids;
    _box.put('homeSliderBooksId', ids);
  }

  setHomeOtherCategoriesBooksId(Map<String, List<int>> ids) {
    homeOtherCategoriesBooksId = ids;
    _box.put('homeOtherCategoriesBooksId', ids);
  }

  setShowLastBookReadMessage(bool state) {
    showLastBookReadMessage = state;
    _box.put('showLastBookReadMessage', state);
  }

  setLastBookReadId(int id) {
    lastBookReadId = id;
    _box.put('lastBookReadId', id);
  }
}
