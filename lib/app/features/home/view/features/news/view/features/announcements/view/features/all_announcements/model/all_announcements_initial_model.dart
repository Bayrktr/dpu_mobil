import 'package:dpu_mobil/app/features/home/view/features/news/view/features/announcements/view/features/all_announcements/model/announcement_model.dart';
import 'package:equatable/equatable.dart';

class AllAnnouncementsInitialModel with EquatableMixin {
  AllAnnouncementsInitialModel({
    this.allAnnouncements = const [],
  });

  final List<AnnouncementModel?> allAnnouncements;

  @override
  List<Object?> get props => [allAnnouncements];

  AllAnnouncementsInitialModel copyWith(
          {List<AnnouncementModel?>? allAnnouncements}) =>
      AllAnnouncementsInitialModel(
        allAnnouncements: allAnnouncements ?? this.allAnnouncements,
      );
}
