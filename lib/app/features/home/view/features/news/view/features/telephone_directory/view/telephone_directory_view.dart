import 'package:auto_route/annotations.dart';
import 'package:dpu_mobil/app/core/extention/build_context/build_context_extension.dart';
import 'package:dpu_mobil/app/core/extention/string/string_extention.dart';
import 'package:dpu_mobil/app/features/base/base_view.dart';
import 'package:dpu_mobil/app/features/home/view/component/app_bar/home_view_app_bar.dart';
import 'package:dpu_mobil/app/features/home/view/features/news/view/component/container/background_container_with_shadow.dart';
import 'package:dpu_mobil/app/features/home/view/features/news/view/features/telephone_directory/controller/telephone_directory_controller.dart';
import 'package:dpu_mobil/app/features/home/view/features/news/view/features/telephone_directory/model/telephone_directory_initial_model.dart';
import 'package:dpu_mobil/app/features/home/view/features/news/view/features/telephone_directory/model/telephone_directory_model.dart';
import 'package:dpu_mobil/app/product/component/scaffold/general_scaffold.dart';
import 'package:dpu_mobil/app/product/component/text/locale_text.dart';
import 'package:dpu_mobil/app/product/extention/string/nullable_string_extention.dart';
import 'package:dpu_mobil/app/product/extention/theme/theme_extention.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/base_state.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/widget/base_cubit_widget.dart';
import 'package:dpu_mobil/generated/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'telephone_directory_view_mixin.dart';

part 'component/container/emergency_asistance_container.dart';

part 'component/container/emergency_asistance_circle_container.dart';

part 'component/item/telephone_directory_item.dart';

@RoutePage()
class TelephoneDirectoryView extends BaseView
    with _TelephoneDirectoryViewMixin {
  const TelephoneDirectoryView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = TelephoneDirectoryController(1);
    return BlocProvider(
      create: (_) => controller,
      child: GeneralScaffold(
        appBar: HomeViewAppBar(context: context).newsAllAppbar(
          appBarTitle,
        ),
        body: BaseCubitWidget(
          bloc: controller,
          initial: (
            BaseInitialModel<TelephoneDirectoryInitialModel, Object, Object>
                state,
          ) {
            final data = state.data?.data;
            final telephoneDirectory = data?.searchTelephoneDirectorys;
            return Padding(
              padding: context.padding.normal,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Expanded(
                    flex: 5,
                    child: _EmergencyAsistanceContainer(),
                  ),
                  Padding(padding: context.padding.low),
                  Expanded(
                    flex: 22,
                    child: BackgroundContainerWithShadow(
                      widget: SizedBox.expand(
                        child: Padding(
                          padding: context.padding.normal,
                          child: Column(
                            children: [
                              Expanded(
                                child: TextField(
                                  style: TextStyle(
                                    color: context.customTheme.black,
                                  ),
                                  onChanged: controller
                                      .updateTelephoneTextEditingController,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintStyle: TextStyle(
                                      fontSize:
                                          context.fontSize.dynamicSize(0.028),
                                      color: context
                                          .customTheme.foodMenuDayTitleColor,
                                    ),
                                    hintText: LocaleKeys
                                        .telephone_directory_page_pleaseWrite
                                        .lang
                                        .tr,
                                    prefixIcon: Icon(
                                      Icons.search,
                                      color: context
                                          .customTheme.foodMenuDayTitleColor,
                                    ),
                                    filled: true,
                                    fillColor: Colors.white,
                                  ),
                                  controller:
                                      controller.telephoneTextEditingController,
                                ),
                              ),
                              Expanded(
                                flex: 6,
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      ...List.generate(
                                        telephoneDirectory?.length ?? 0,
                                        (index) {
                                          final item =
                                              telephoneDirectory?[index];
                                          final isLast = index ==
                                              (telephoneDirectory?.length ??
                                                      0) -
                                                  1;
                                          return Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              _TelephoneDirectoryItem(
                                                item: item,
                                              ),
                                              if (isLast)
                                                const SizedBox()
                                              else
                                                const Divider(),
                                            ],
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const Expanded(
                                flex: 3,
                                child: _EmergencyAsistanceCircleContainer(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
