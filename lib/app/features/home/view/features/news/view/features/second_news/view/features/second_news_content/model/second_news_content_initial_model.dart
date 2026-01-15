import 'package:dpu_mobil/app/features/home/view/features/news/view/features/second_news/view/features/second_news_content/model/news_content_model.dart';
import 'package:equatable/equatable.dart';

class SecondNewsContentInitialModel with EquatableMixin {
  const SecondNewsContentInitialModel({
    this.newsContent,
  });

  final NewsContentModel? newsContent;

  @override
  List<Object?> get props => [newsContent];

  SecondNewsContentInitialModel copyWith({
    NewsContentModel? newsContent,
  }) =>
      SecondNewsContentInitialModel(
        newsContent: newsContent ?? this.newsContent,
      );
}
