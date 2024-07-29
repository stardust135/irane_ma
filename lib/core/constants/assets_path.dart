class AssetPaths {
  static final _icons = IconsPaths();

  static final _images = ImagesPaths();

  static IconsPaths get icons => _icons;

  static ImagesPaths get images => _images;
}

class IconsPaths {
  final String back = 'assets/icons/back.svg';
  final String check = 'assets/icons/check.svg';
  final String info = 'assets/icons/info.svg';
  final String like = 'assets/icons/like.svg';
  final String share = 'assets/icons/share.svg';
  final String location = 'assets/icons/location.svg';
}

class ImagesPaths {
  final String countryMap = 'assets/images/country_map.svg';
}
