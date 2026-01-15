import 'package:dpu_mobil/app/features/home/view/features/news/view/features/second_news/view/features/all_second_news/model/news_model.dart';
import 'package:equatable/equatable.dart';

class AllSecondNewsInitialModel with EquatableMixin {
  AllSecondNewsInitialModel({
    this.allNews = const [],
  });

  final List<NewsModel?> allNews;

  @override
  List<Object?> get props => [allNews];

  AllSecondNewsInitialModel copyWith({
    List<NewsModel?>? allNews,
  }) =>
      AllSecondNewsInitialModel(
        allNews: allNews ?? this.allNews,
      );
}
