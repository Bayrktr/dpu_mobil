import 'package:dpu_mobil/app/core/enum/custom_colors.dart';
import 'package:dpu_mobil/app/core/extention/build_context/build_context_extension.dart';
import 'package:dpu_mobil/app/features/home/view/component/app_bar/icon/home_view_app_bar_profile_icon.dart';
import 'package:dpu_mobil/app/product/component/image/custom_image.dart';
import 'package:dpu_mobil/app/product/component/text/locale_text.dart';
import 'package:dpu_mobil/app/product/constant/string/app_constant.dart';
import 'package:dpu_mobil/app/product/enum/font_family_enum.dart';
import 'package:dpu_mobil/app/product/enum/pictures_enum.dart';
import 'package:dpu_mobil/app/product/extention/theme/theme_extention.dart';
import 'package:dpu_mobil/app/product/navigation/app_router.dart';
import 'package:dpu_mobil/app/product/navigation/import.dart';
import 'package:dpu_mobil/generated/locale_keys.g.dart';

final class GeneralAppbar {
  const GeneralAppbar({
    required this.context,
    this.currentIndex = 0,
  });

  final BuildContext context;
  final int currentIndex;

  double get _fontSize {
    return context.fontSize.dynamicSize(0.025);
  }

  TextStyle get _style {
    return TextStyle(
      fontSize: _fontSize,
      letterSpacing: 1,
      fontFamily: FontFamilyEnum.helvetica.value,
      fontWeight: FontWeight.bold,
    );
  }

  PreferredSizeWidget get homeAppbar {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      scrolledUnderElevation: 0,
      leadingWidth: context.sized.dynamicWidth(0.4),
      toolbarHeight: context.sized.heightHighValue,
      leading: Row(
        children: [
          Padding(padding: context.padding.low),
          InkWell(
            onTap: () {
              final homeIndex = (context.tabsRouter.pageCount / 2).floor();
              print(homeIndex);
              print(currentIndex);
              if (currentIndex == homeIndex) return;
              context.tabsRouter.setActiveIndex(currentIndex);
            },
            child: CustomImage(
              imageFrom: ImageFrom.ASSET,
              imageType: ImageType.PNG,
              assetPath: PicturesEnum.dpuLogo.pngPath,
            ),
          ),
          Padding(padding: context.padding.low),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(AppConstant.kutahya, style: _style),
              Text(AppConstant.dumlupinar, style: _style),
              LocaleText(
                text: LocaleKeys.general_university,
                textStyle: _style,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
        ],
      ),
      actions: [
        const HomeViewAppBarProfileIcon(),
        Padding(padding: context.padding.normal),
      ],
    );
  }

  PreferredSizeWidget pagesInsideAppbar(String title) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(kToolbarHeight),
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: context.sized.heightNormalValue,
        ),
        child: AppBar(
          backgroundColor: context.customTheme.appBarColor,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: context.borderRadius.low,
          ),
          leading: IconButton(
            onPressed: () {
              context.router.maybePop();
            },
            icon: Icon(
              Icons.arrow_circle_left_outlined,
              color: CustomColors.white.getColor,
            ),
          ),
          title: Text(
            title,
            style: TextStyle(
              color: CustomColors.white.getColor,
            ),
          ),
        ),
      ),
    );
  }
}
