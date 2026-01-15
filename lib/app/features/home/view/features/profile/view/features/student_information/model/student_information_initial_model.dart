import 'package:dpu_mobil/app/features/home/view/features/profile/view/features/student_information/model/student_information_model.dart';
import 'package:equatable/equatable.dart';

class StudentInformationInitialModel with EquatableMixin {
  StudentInformationInitialModel({
    this.studentInformation,
  });

  final StudentInformationModel? studentInformation;

  @override
  List<Object?> get props => [
        studentInformation,
      ];

  StudentInformationInitialModel copyWith({
    StudentInformationModel? studentInformation,
  }) =>
      StudentInformationInitialModel(
        studentInformation: studentInformation ?? this.studentInformation,
      );
}
