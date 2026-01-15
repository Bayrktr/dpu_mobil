import 'package:dpu_mobil/app/features/home/view/features/news/view/features/announcements/view/features/announcements_content/model/announcement_content_model.dart';
import 'package:equatable/equatable.dart';

class AnnouncementsContentInitialModel with EquatableMixin {
  const AnnouncementsContentInitialModel({this.announcementContent});

  final AnnouncementContentModel? announcementContent;

  @override
  List<Object?> get props => [announcementContent];

  AnnouncementsContentInitialModel copyWith({
    AnnouncementContentModel? announcementContent,
  }) =>
      AnnouncementsContentInitialModel(
        announcementContent: announcementContent ?? this.announcementContent,
      );
}
