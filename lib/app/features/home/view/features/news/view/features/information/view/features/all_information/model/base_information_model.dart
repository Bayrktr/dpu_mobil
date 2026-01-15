import 'package:dpu_mobil/app/product/service/model/base_model.dart';

abstract class BaseInformationModel<T extends BaseModel<T>>
    extends BaseModel<T> {
  int? id;
  String? title;
  String? logoUrl;

}
