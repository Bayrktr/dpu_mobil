import 'package:dpu_mobil/app/product/enum/icons_enum.dart';
import 'package:dpu_mobil/app/product/enum/pictures_enum.dart';

abstract class ImagesModel {
  String get imagePath;

  factory ImagesModel.icon(IconsEnum iconsEnum) {
    return IconImagesModel(iconsEnum);
  }

  factory ImagesModel.pictures(PicturesEnum picturesEnum) {
    return PictureImagesModel(picturesEnum);
  }
}

class IconImagesModel implements ImagesModel {
  IconImagesModel(this._iconsEnum);

  final IconsEnum _iconsEnum;

  @override
  String get imagePath => 'assets/images/icon/${_iconsEnum.value}.svg';
}

class PictureImagesModel implements ImagesModel {
  PictureImagesModel(this._picturesEnum);

  final PicturesEnum _picturesEnum;

  @override
  String get imagePath => 'assets/images/picture/${_picturesEnum.value}.png';
}
