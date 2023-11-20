import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../controller/localization_controller.dart';
import '../../utils/app_color_resources.dart';

class ReusableLanguagePopupMenuButton extends GetView<LocaleController> {
  ReusableLanguagePopupMenuButton(
      {super.key,
      this.widget,
      this.dropdownIconSize,
      this.languageIconSize,
      this.dropdownIconColor});

  Widget? widget;
  double? languageIconSize;
  double? dropdownIconSize;
  Color? dropdownIconColor;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(5.r), // Set your desired border radius
      ),
      child: Row(
        children: [
          widget ??
              Icon(
                Icons.language_outlined,
                size: languageIconSize ?? 25.sp,
                color: AppColorResources.appBarActionColor,
              ),
          Icon(
            Icons.keyboard_arrow_down_outlined,
            size: dropdownIconSize ?? 26.sp,
            color: dropdownIconColor ?? AppColorResources.appBarActionColor,
          ),
        ],
      ),
      offset: Offset(0, 30),
      itemBuilder: (context) => controller.optionsLocales.entries.map((e) {
        return PopupMenuItem(
            height: 0.h,
            padding: EdgeInsets.only(left: 0, top: 0, bottom: 0, right: 0),
            value: e.key,
            child: Container(
                padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
                //color: Colors.blueGrey,
                alignment: Alignment.center,
                child: Text("${e.value['description']}")));
      }).toList(),
      onSelected: (newValue) {
        controller.updateLocale(newValue);
      },
    );
  }
}
