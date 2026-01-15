import 'package:auto_route/auto_route.dart';
import 'package:dpu_mobil/app/core/enum/custom_colors.dart';
import 'package:dpu_mobil/app/core/extention/build_context/build_context_extension.dart';
import 'package:dpu_mobil/app/core/extention/string/string_extention.dart';
import 'package:dpu_mobil/app/features/base/base_view.dart';
import 'package:dpu_mobil/app/features/home/view/component/app_bar/home_view_app_bar.dart';
import 'package:dpu_mobil/app/features/home/view/component/container/home_view_page_selection_container.dart';
import 'package:dpu_mobil/app/features/home/view/component/container/model/home_view_page_selection_container_model.dart';
import 'package:dpu_mobil/app/product/component/appBar/general_appBar.dart';
import 'package:dpu_mobil/app/product/component/image/custom_image.dart';
import 'package:dpu_mobil/app/product/component/scaffold/general_scaffold.dart';
import 'package:dpu_mobil/app/product/constant/string/app_constant.dart';
import 'package:dpu_mobil/app/product/enum/pictures_enum.dart';
import 'package:dpu_mobil/app/product/navigation/app_router.dart';
import 'package:dpu_mobil/generated/locale_keys.g.dart';
import 'package:flutter/material.dart';

part 'news_all_view_mixin.dart';

part 'component/container/ataturk_container.dart';

@RoutePage()
class NewsAllView extends BaseView with _NewsAllViewMixin {
  NewsAllView({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralScaffold(
      body: Padding(
        padding: context.padding.normal,
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(),
            ),
            Expanded(
              flex: 5,
              child: GridView.count(
                  padding: EdgeInsets.zero,
                  crossAxisSpacing: context.sized.widthMediumValue,
                  crossAxisCount: 2,
                  mainAxisSpacing: context.sized.widthMediumValue,
                  shrinkWrap: true,
                  childAspectRatio: 1.4,
                  children: _items.map((item) {
                    return SizedBox(
                      child: HomeViewPageSelectionContainer<dynamic>(
                        width: double.infinity,
                        height: double.infinity,
                        title: item.title,
                        iconData: item.iconData,
                        routeInfo: item.routeInfo,
                      ),
                    );
                  }).toList() /* +
                    [
                      const SizedBox(
                        child: _AtaturkContainer(),
                      ),
                    ],
                    */
                  ),
            ),
          ],
        ),
      ),
      appBar: HomeViewAppBar(context: context).homeAppbar,
    );
  }
}
