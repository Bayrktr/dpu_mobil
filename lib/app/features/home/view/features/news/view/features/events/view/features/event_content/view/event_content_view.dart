import 'package:auto_route/annotations.dart';
import 'package:dpu_mobil/app/core/extention/build_context/build_context_extension.dart';
import 'package:dpu_mobil/app/core/extention/string/string_extention.dart';
import 'package:dpu_mobil/app/features/base/base_view.dart';
import 'package:dpu_mobil/app/features/home/view/component/app_bar/home_view_app_bar.dart';
import 'package:dpu_mobil/app/features/home/view/features/news/view/component/container/background_container_with_shadow.dart';
import 'package:dpu_mobil/app/features/home/view/features/news/view/features/events/view/features/event_content/controller/event_content_controller.dart';
import 'package:dpu_mobil/app/features/home/view/features/news/view/features/events/view/features/event_content/model/event_content_initial_model.dart';
import 'package:dpu_mobil/app/product/component/scaffold/general_scaffold.dart';
import 'package:dpu_mobil/app/product/component/text/locale_text.dart';
import 'package:dpu_mobil/app/product/constant/string/app_constant.dart';
import 'package:dpu_mobil/app/product/extention/datetime/Idatetime_extention.dart';
import 'package:dpu_mobil/app/product/extention/string/nullable_string_extention.dart';
import 'package:dpu_mobil/app/product/extention/theme/theme_extention.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/base_state.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/widget/base_cubit_widget.dart';
import 'package:dpu_mobil/generated/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'event_content_view_mixin.dart';

@RoutePage()
class EventContentView extends BaseView with _EventContentViewMixin {
  const EventContentView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => EventContentController(),
      child: GeneralScaffold(
        appBar: HomeViewAppBar(context: context).newsAllAppbar(appBarTitle),
        body: BaseCubitWidget<EventContentInitialModel, Object, Object>(
          bloc: EventContentController(),
          initial: (
            BaseInitialModel<EventContentInitialModel, Object, Object> state,
          ) {
            final data = state.data?.data;
            final eventContent = data?.eventContent;
            final toDatetime = eventContent?.datetimeTo?.datetime.toDatetime;
            final fromDatetime =
                eventContent?.datetimeFrom?.datetime.toDatetime;

            final betweenDatetimeText =
                '${fromDatetime?.day} - ${toDatetime?.day} ${toDatetime.monthName} ${toDatetime?.year},${toDatetime.dayName}';

            return Padding(
              padding: context.padding.normal,
              child: SizedBox.expand(
                child: BackgroundContainerWithShadow(
                  widget: Padding(
                    padding: context.padding.normal,
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            eventContent?.title.unkownMessage ??
                                '', // fixme burdakı sorunu anlamıyorum
                            style: TextStyle(
                              color: context.customTheme.black,
                              fontWeight: FontWeight.w500,
                              fontSize: context.fontSize.low,
                            ),
                          ),
                          const Divider(),
                          Text(
                            eventContent?.message.unkownMessage ?? '',
                            style: TextStyle(
                              color: context.customTheme.black,
                            ),
                          ),
                          Padding(padding: context.padding.low),
                          Text(
                            betweenDatetimeText,
                            style: TextStyle(
                              color: context.customTheme.smoothTextColor,
                            ),
                          ),
                          Padding(
                            padding: context.padding.normal,
                          ),
                          LocaleText(
                            text: LocaleKeys.event_content_page_event_owner,
                            color: context.customTheme.smoothTextColor,
                          ),
                          Text(
                            eventContent?.eventOwner.unkownMessage ?? '',
                            style: TextStyle(color: context.customTheme.black),
                          ),
                          Padding(
                            padding: context.padding.normal,
                          ),
                          LocaleText(
                            text: LocaleKeys.event_content_page_event_location,
                            color: context.customTheme.smoothTextColor,
                          ),
                          Text(
                            eventContent?.eventLocation.unkownMessage ?? '',
                            style: TextStyle(color: context.customTheme.black),
                          ),
                          Padding(
                            padding: context.padding.normal,
                          ),
                          LocaleText(
                            text: LocaleKeys.event_content_page_speakers,
                            color: context.customTheme.smoothTextColor,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: List.generate(
                              eventContent?.speakers.length ?? 0,
                              (index) {
                                return Text(
                                  eventContent
                                          ?.speakers[index]?.unkownMessage ??
                                      '',
                                  style: TextStyle(
                                    color: context.customTheme.black,
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
