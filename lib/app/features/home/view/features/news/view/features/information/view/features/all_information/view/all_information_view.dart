import 'package:auto_route/annotations.dart';
import 'package:dpu_mobil/app/core/extention/build_context/build_context_extension.dart';
import 'package:dpu_mobil/app/core/extention/string/string_extention.dart';
import 'package:dpu_mobil/app/features/base/base_view.dart';
import 'package:dpu_mobil/app/features/home/view/component/app_bar/home_view_app_bar.dart';
import 'package:dpu_mobil/app/features/home/view/features/news/view/component/container/background_container_with_shadow.dart';
import 'package:dpu_mobil/app/features/home/view/features/news/view/features/information/view/features/all_information/controller/all_information_controller.dart';
import 'package:dpu_mobil/app/features/home/view/features/news/view/features/information/view/features/all_information/model/all_information_initial_model.dart';
import 'package:dpu_mobil/app/features/home/view/features/news/view/features/information/view/features/all_information/model/base_information_model.dart';
import 'package:dpu_mobil/app/product/component/image/custom_image.dart';
import 'package:dpu_mobil/app/product/component/scaffold/general_scaffold.dart';
import 'package:dpu_mobil/app/product/component/text/locale_text.dart';
import 'package:dpu_mobil/app/product/constant/string/app_constant.dart';
import 'package:dpu_mobil/app/product/extention/theme/theme_extention.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/base_state.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/widget/base_cubit_widget.dart';
import 'package:dpu_mobil/generated/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'all_information_view_mixin.dart';
part 'component/item/information_item.dart';

@RoutePage()
class AllInformationView extends BaseView with _AllInformationViewMixin {
  const AllInformationView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = AllInformationController();
    return BlocProvider(
      create: (_) => controller,
      child: GeneralScaffold(
        appBar: HomeViewAppBar(context: context).newsAllAppbar(appBarTitle),
        body: BaseCubitWidget(
          bloc: controller,
          initial: (
            BaseInitialModel<AllInformationInitialModel, Object, Object> state,
          ) {
            final data = state.data?.data;
            final institutesInformation = data?.institutesInformation;
            final facultiesInformation = data?.facultiesInformation;
            final collegesInformation = data?.collegesInformation;
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
                          LocaleText(
                            text: LocaleKeys.information_page_institutes,
                            color: context.customTheme.foodMenuDayTitleColor,
                            fontSize: context.fontSize.low,
                            fontWeight: FontWeight.w500,
                          ),
                          Padding(padding: context.padding.low),
                          ...List.generate(
                            institutesInformation?.length ?? 0,
                            (index) {
                              final item = institutesInformation?[index];
                              return _InformationItem(
                                item: item,
                              );
                            },
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
