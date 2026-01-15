import 'package:auto_route/annotations.dart';
import 'package:dpu_mobil/app/core/extention/build_context/build_context_extension.dart';
import 'package:dpu_mobil/app/core/extention/string/string_extention.dart';
import 'package:dpu_mobil/app/features/base/base_view.dart';
import 'package:dpu_mobil/app/features/home/view/component/app_bar/home_view_app_bar.dart';
import 'package:dpu_mobil/app/features/home/view/features/news/view/component/container/background_container_with_shadow.dart';
import 'package:dpu_mobil/app/features/home/view/features/news/view/features/second_news/view/features/second_news_content/controller/second_news_content_controller.dart';
import 'package:dpu_mobil/app/features/home/view/features/news/view/features/second_news/view/features/second_news_content/model/second_news_content_initial_model.dart';
import 'package:dpu_mobil/app/product/component/scaffold/general_scaffold.dart';
import 'package:dpu_mobil/app/product/constant/string/app_constant.dart';
import 'package:dpu_mobil/app/product/extention/string/nullable_string_extention.dart';
import 'package:dpu_mobil/app/product/extention/theme/theme_extention.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/base_state.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/widget/base_cubit_widget.dart';
import 'package:dpu_mobil/generated/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'second_news_content_view_mixin.dart';

@RoutePage()
class SecondNewsContentView extends BaseView with _SecondNewsContentViewMixin {
  const SecondNewsContentView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SecondNewsContentController(),
      child: GeneralScaffold(
        appBar: HomeViewAppBar(context: context).newsAllAppbar(appBarTitle),
        body: BaseCubitWidget(
          bloc: SecondNewsContentController(),
          initial:
              (BaseInitialModel<SecondNewsContentInitialModel, Object, Object>
                  state) {
            final data = state.data?.data;
            final newsContent = data?.newsContent;
            return Padding(
              padding: context.padding.normal,
              child: BackgroundContainerWithShadow(
                widget: SizedBox.expand(
                  child: Padding(
                    padding: context.padding.low,
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            newsContent?.title.unkownMessage ?? '',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: context.customTheme.black,
                            ),
                          ),
                          Padding(
                            padding: context.padding.normal,
                          ),
                          Text(
                            newsContent?.subTitle.unkownMessage ?? '',
                            style: TextStyle(
                              color: context.customTheme.black,
                            ),
                          ),
                          Padding(
                            padding: context.padding.normal,
                          ),
                          Text(
                            newsContent?.message.unkownMessage ?? '',
                            style: TextStyle(
                              color: context.customTheme.black,
                            ),
                          ),
                          Padding(
                            padding: context.padding.normal,
                          ),
                          Text(
                            newsContent?.warningMessage.unkownMessage ?? '',
                            style: TextStyle(
                              color: context.customTheme.black,
                              fontWeight: FontWeight.w500,
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
