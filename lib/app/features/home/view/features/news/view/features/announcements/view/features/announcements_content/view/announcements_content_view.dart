import 'package:auto_route/annotations.dart';
import 'package:dpu_mobil/app/core/extention/build_context/build_context_extension.dart';
import 'package:dpu_mobil/app/core/extention/string/string_extention.dart';
import 'package:dpu_mobil/app/features/base/base_view.dart';
import 'package:dpu_mobil/app/features/home/view/component/app_bar/home_view_app_bar.dart';
import 'package:dpu_mobil/app/features/home/view/features/news/view/component/container/background_container_with_shadow.dart';
import 'package:dpu_mobil/app/features/home/view/features/news/view/features/announcements/view/features/announcements_content/controller/announcements_content_controller.dart';
import 'package:dpu_mobil/app/features/home/view/features/news/view/features/announcements/view/features/announcements_content/model/announcements_content_initial_model.dart';
import 'package:dpu_mobil/app/product/component/scaffold/general_scaffold.dart';
import 'package:dpu_mobil/app/product/component/text/locale_text.dart';
import 'package:dpu_mobil/app/product/constant/string/app_constant.dart';
import 'package:dpu_mobil/app/product/extention/string/nullable_string_extention.dart';
import 'package:dpu_mobil/app/product/extention/theme/theme_extention.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/base_state.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/widget/base_cubit_widget.dart';
import 'package:dpu_mobil/generated/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'announcements_content_view_mixin.dart';

@RoutePage()
class AnnouncementsContentView extends BaseView
    with _AnnouncementsContentViewMixin {
  const AnnouncementsContentView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AnnouncementsContentController(),
      child: GeneralScaffold(
        appBar: HomeViewAppBar(context: context).newsAllAppbar(appBarTitle),
        body: BaseCubitWidget(
          bloc: AnnouncementsContentController(),
          initial: (
            BaseInitialModel<AnnouncementsContentInitialModel, Object, Object>
                state,
          ) {
            final data = state.data?.data;
            final announcementContent = data?.announcementContent;
            return Padding(
              padding: context.padding.normal,
              child: BackgroundContainerWithShadow(
                widget: SizedBox.expand(
                  child: Padding(
                    padding: context.padding.normal,
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            announcementContent?.title ?? '',
                            style: TextStyle(
                              color: context.customTheme.black,
                              fontSize: context.fontSize.dynamicSize(0.035),
                            ),
                          ),
                          const Divider(),
                          LocaleText(
                            text: LocaleKeys
                                .announcements_content_page_dear_staff,
                            color: context.customTheme.black,
                            fontWeight: FontWeight.w600,
                          ),
                          Padding(
                            padding: context.padding.low,
                          ),
                          LocaleText(
                            text: LocaleKeys
                                .announcements_content_page_dear_staff,
                            color: context.customTheme.black,
                            fontWeight: FontWeight.w600,
                          ),
                          Padding(
                            padding: context.padding.low,
                          ),
                          Text(
                            announcementContent?.message.unkownMessage ?? '',
                            style: TextStyle(
                              color: context.customTheme.black,
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
