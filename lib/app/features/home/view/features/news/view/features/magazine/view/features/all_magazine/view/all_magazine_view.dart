import 'package:auto_route/annotations.dart';
import 'package:dpu_mobil/app/core/extention/string/string_extention.dart';
import 'package:dpu_mobil/app/features/base/base_view.dart';
import 'package:dpu_mobil/app/features/home/view/component/app_bar/home_view_app_bar.dart';
import 'package:dpu_mobil/app/product/component/scaffold/general_scaffold.dart';
import 'package:dpu_mobil/generated/locale_keys.g.dart';
import 'package:flutter/material.dart';

part 'all_magazine_view_mixin.dart';


@RoutePage()
class AllMagazineView extends BaseView with _AllMagazineViewMixin {
  const AllMagazineView({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralScaffold(
      appBar: HomeViewAppBar(context: context).newsAllAppbar(appBarTitle),
      body: Container(),
    );
  }
}
