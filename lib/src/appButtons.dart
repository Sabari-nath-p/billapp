import 'package:bill/src/appColor.dart';
import 'package:bill/src/appText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class appButton {
  static PrimaryButton({var name, Function? onClick, bool loading = false}) =>
      GestureDetector(
        onTap: () {
          if (onClick != null) {
            onClick();
          }
        },
        child: Container(
          width: 390.w,
          alignment: Alignment.center,
          height: 54.h,
          child: (loading)
              ? LoadingAnimationWidget.hexagonDots(
                  color: Colors.white, size: 20.sp)
              : appText.primaryText(
                  text: "${name ?? "--:--"}",
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  fontSize: 16.sp),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: appColor.primaryColor),
        ),
      );
}
