import 'package:dpu_mobil/app/product/service/model/base_model.dart';
import 'package:equatable/equatable.dart';

class NewsContentModel extends BaseModel<NewsContentModel> with EquatableMixin {
   NewsContentModel({
    this.id,
    this.title,
    this.subTitle,
    this.message,
    this.warningMessage,
  });

  final int? id;
  final String? title;
  final String? subTitle;
  final String? message;
  final String? warningMessage;

  @override
  List<Object?> get props => [
        id,
        title,
        subTitle,
        message,
        warningMessage,
      ];

  NewsContentModel copyWith({
    int? id,
    String? title,
    String? subTitle,
    String? message,
    String? warningMessage,
  }) =>
      NewsContentModel(
        id: id ?? this.id,
        title: title ?? this.title,
        subTitle: subTitle ?? this.subTitle,
        message: message ?? this.message,
        warningMessage: warningMessage ?? this.warningMessage,
      );

  @override
  NewsContentModel fromJson(Map<String, dynamic> json) {
    return NewsContentModel(
      id: json['id'] as int?,
      title: json['title'] as String?,
      subTitle: json['sub_title'] as String?,
      message: json['message'] as String?,
      warningMessage: json['warning_message'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }
}
