import 'package:auto_route/auto_route.dart';
import 'package:dpu_mobil/app/core/extention/build_context/build_context_extension.dart';
import 'package:dpu_mobil/app/core/extention/string/string_extention.dart';
import 'package:dpu_mobil/app/features/base/base_view.dart';
import 'package:dpu_mobil/app/features/home/view/component/app_bar/home_view_app_bar.dart';
import 'package:dpu_mobil/app/features/home/view/features/news/view/component/container/background_container_with_shadow.dart';
import 'package:dpu_mobil/app/features/home/view/features/news/view/component/container/date_container.dart';
import 'package:dpu_mobil/app/features/home/view/features/news/view/features/second_news/view/features/all_second_news/controller/all_second_news_controller.dart';
import 'package:dpu_mobil/app/features/home/view/features/news/view/features/second_news/view/features/all_second_news/model/all_second_news_initial_model.dart';
import 'package:dpu_mobil/app/features/home/view/features/news/view/features/second_news/view/features/all_second_news/model/news_model.dart';
import 'package:dpu_mobil/app/product/component/scaffold/general_scaffold.dart';
import 'package:dpu_mobil/app/product/constant/string/app_constant.dart';
import 'package:dpu_mobil/app/product/extention/theme/theme_extention.dart';
import 'package:dpu_mobil/app/product/navigation/app_router.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/base_state.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/widget/base_cubit_widget.dart';
import 'package:dpu_mobil/generated/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'all_second_news_view_mixin.dart';

part 'component/item/second_news_item.dart';

@RoutePage()
class AllSecondNewsView extends BaseView with _AllSecondNewsViewMixin {
  const AllSecondNewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AllSecondNewsController(),
      child: GeneralScaffold(
        appBar: HomeViewAppBar(context: context).newsAllAppbar(appBarTitle),
        body: BaseCubitWidget(
          bloc: AllSecondNewsController(),
          initial: (
            BaseInitialModel<AllSecondNewsInitialModel, Object, Object> state,
          ) {
            final data = state.data?.data;
            final allNews = data?.allNews;
            return Padding(
              padding: context.padding.normal,
              child: BackgroundContainerWithShadow(
                widget: SizedBox.expand(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(
                        allNews?.length ?? 0,
                        (index) {
                          final item = allNews?[index];
                          return Column(
                            children: [
                              _SecondNewsItem(
                                item: item,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: context.sized.widthNormalValue,
                                ),
                                child: const Divider(),
                              ),
                            ],
                          );
                        },
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
