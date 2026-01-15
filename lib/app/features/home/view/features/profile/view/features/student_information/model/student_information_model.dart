import 'package:dpu_mobil/app/product/service/model/base_model.dart';
import 'package:equatable/equatable.dart';

class StudentInformationModel extends BaseModel<StudentInformationModel>
    with EquatableMixin {
  StudentInformationModel({
    this.id,
    this.name,
    this.faculty,
    this.section,
    this.studentNumber,
    this.classLevel,
    this.gpa,
  });

  final int? id;
  final String? name;
  final String? faculty;
  final String? section;
  final int? studentNumber;
  final int? classLevel;
  final double? gpa;

  @override
  List<Object?> get props => [
        id,
        name,
        faculty,
        section,
        studentNumber,
        classLevel,
        gpa,
      ];

  StudentInformationModel copyWith({
    int? id,
    String? name,
    String? faculty,
    String? section,
    int? studentNumber,
    int? classLevel,
    double? gpa,
  }) =>
      StudentInformationModel(
        id: id ?? this.id,
        name: name ?? this.name,
        faculty: faculty ?? this.faculty,
        section: section ?? this.section,
        studentNumber: studentNumber ?? this.studentNumber,
        classLevel: classLevel ?? this.classLevel,
        gpa: gpa ?? this.gpa,
      );

  @override
  StudentInformationModel fromJson(Map<String, dynamic> json) {
    return StudentInformationModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      faculty: json['faculty'] as String?,
      section: json['section'] as String?,
      studentNumber: json['student_number'] as int?,
      classLevel: json['class_level'] as int?,
      gpa: json['gpa'] as double?,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }
}
