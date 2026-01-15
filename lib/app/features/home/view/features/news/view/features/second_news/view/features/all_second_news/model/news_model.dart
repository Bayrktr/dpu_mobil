import 'package:dpu_mobil/app/product/service/model/base_model.dart';
import 'package:equatable/equatable.dart';

class NewsModel extends BaseModel<NewsModel> with EquatableMixin {
  NewsModel({this.id, this.title, this.datetime});

  final int? id;
  final String? title;
  final String? datetime;

  @override
  List<Object?> get props => [
        id,
        title,
        datetime,
      ];

  NewsModel copyWith({
    int? id,
    String? title,
    String? datetime,
  }) =>
      NewsModel(
        id: id ?? this.id,
        title: title ?? this.title,
        datetime: datetime ?? this.datetime,
      );

  @override
  NewsModel fromJson(Map<String, dynamic> json) {
    return NewsModel(
      id: json['id'] as int?,
      title: json['title'] as String?,
      datetime: json['datetime'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }
}
