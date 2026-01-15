import 'package:equatable/equatable.dart';

class NewsViewModel with EquatableMixin {
  NewsViewModel({this.message});

  final String? message;

  @override
  List<Object?> get props => [message];

  NewsViewModel copyWith({String? message}) => NewsViewModel(
        message: message ?? this.message,
      );
}
