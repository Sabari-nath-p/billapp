import 'package:bill/Screens/HomeScreen/Controller/controller.dart';
import 'package:bill/main.dart';
import 'package:bill/src/appButtons.dart';
import 'package:bill/src/appText.dart';
import 'package:bill/src/appTextField.dart';
import 'package:bill/src/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/src/root/get_cupertino_app.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  HomeController ctrl = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: cuperot

      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          child: GetBuilder<HomeController>(builder: (_) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SpacerW(390.w),
                SpacerH(20.h),
                appText.primaryText(
                    text: "RELEASE ORDER",
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600),
                SpacerH(20.h),
                _cfield(
                  "RO Number",
                  ctrl.roNumber,
                  TextInputType.name,
                ),
                _cfield(
                  "CODE",
                  ctrl.code,
                  TextInputType.name,
                ),
                _cfield(
                  "CLIENT",
                  ctrl.client,
                  TextInputType.name,
                ),
                _cfield(
                  "Date",
                  ctrl.date,
                  TextInputType.name,
                ),
                _cfield(
                  "CAPTION",
                  ctrl.caption,
                  TextInputType.name,
                ),
                _cfield(
                  "SPACE",
                  ctrl.space,
                  TextInputType.name,
                ),
                _cfield(
                  "POSITION",
                  ctrl.position,
                  TextInputType.name,
                ),
                _cfield(
                  "RATE",
                  ctrl.rate,
                  TextInputType.numberWithOptions(),
                ),
                _cfield(
                  "MATERIAL",
                  ctrl.material,
                  TextInputType.name,
                ),
                _cfield(
                  "CHEQUE/CASH/DD",
                  ctrl.payment,
                  TextInputType.name,
                ),
                _cfield(
                  "Instruction",
                  height: 100.h,
                  ctrl.instruction,
                  TextInputType.name,
                ),
                appButton.PrimaryButton(
                    name: "Save as Image",
                    loading: ctrl.loading,
                    onClick: () {
                      print("working");
                      if (!ctrl.loading) ctrl.saveImage();
                    }),
                SpacerH(10),
                appButton.PrimaryButton(
                    name: "Save as Pdf",
                    loading: ctrl.loading,
                    onClick: () {
                      print("working");
                      if (!ctrl.loading) ctrl.savePdf();
                    }),
                SpacerH(20)
              ],
            );
          }),
        ),
      )),
    );
  }

  Widget _cfield(String title, TextEditingController ctrl, TextInputType type,
      {double? height}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        appText.primaryText(
            text: title.toString().capitalize,
            fontSize: 13.sp,
            fontWeight: FontWeight.w600),
        SpacerH(10.h),
        tBox(controller: ctrl, keyType: type, hint: title, height: height),
        SpacerH(20.sp)
      ],
    );
  }
}
