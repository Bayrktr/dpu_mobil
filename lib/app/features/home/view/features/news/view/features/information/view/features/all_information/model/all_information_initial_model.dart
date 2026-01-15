import 'package:dpu_mobil/app/features/home/view/features/news/view/features/information/view/features/all_information/model/colleges_information_model.dart';
import 'package:dpu_mobil/app/features/home/view/features/news/view/features/information/view/features/all_information/model/faculties_information_model.dart';
import 'package:dpu_mobil/app/features/home/view/features/news/view/features/information/view/features/all_information/model/institutes_information_model.dart';
import 'package:equatable/equatable.dart';

class AllInformationInitialModel with EquatableMixin {
  AllInformationInitialModel({
    this.institutesInformation = const [],
    this.facultiesInformation = const [],
    this.collegesInformation = const [],
  });

  final List<InstitutesInformationModel?> institutesInformation;
  final List<FacultiesInformationModel?> facultiesInformation;
  final List<CollegesInformationModel?> collegesInformation;

  @override
  List<Object?> get props => [];

  AllInformationInitialModel copyWith({
    List<InstitutesInformationModel?>? institutesInformation,
    List<FacultiesInformationModel?>? facultiesInformation,
    List<CollegesInformationModel?>? collegesInformation,
  }) =>
      AllInformationInitialModel(
        institutesInformation:
            institutesInformation ?? this.institutesInformation,
        facultiesInformation: facultiesInformation ?? this.facultiesInformation,
        collegesInformation: collegesInformation ?? this.collegesInformation,
      );
}
