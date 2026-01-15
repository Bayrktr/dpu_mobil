import 'package:dpu_mobil/app/features/home/view/features/news/view/features/telephone_directory/model/telephone_directory_model.dart';
import 'package:equatable/equatable.dart';

class TelephoneDirectoryInitialModel with EquatableMixin {
  TelephoneDirectoryInitialModel({
    this.telephoneDirectorys = const [],
    this.searchTelephoneDirectorys = const [],
  });

  final List<TelephoneDirectoryModel?> telephoneDirectorys;
  final List<TelephoneDirectoryModel?> searchTelephoneDirectorys;

  @override
  List<Object?> get props => [
        telephoneDirectorys,
        searchTelephoneDirectorys,
      ];

  TelephoneDirectoryInitialModel copyWith({
    List<TelephoneDirectoryModel?>? telephoneDirectorys,
    List<TelephoneDirectoryModel?>? searchTelephoneDirectorys,
  }) =>
      TelephoneDirectoryInitialModel(
        telephoneDirectorys: telephoneDirectorys ?? this.telephoneDirectorys,
        searchTelephoneDirectorys:
            searchTelephoneDirectorys ?? this.searchTelephoneDirectorys,
      );
}
