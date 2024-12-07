import 'dart:developer';
import 'dart:io';

import 'package:bill/Screens/HomeScreen/Models/ContentModel.dart';
import 'package:bill/Screens/HomeScreen/Views/htmltemplate.dart';
import 'package:downloadsfolder/downloadsfolder.dart' as ds;
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:html_to_image/html_to_image.dart';
import 'package:html_to_pdf/html_to_pdf.dart';
import 'package:intl/intl.dart';
import 'package:share_plus/share_plus.dart';

class HomeController extends GetxController {
  ContentModel? model;

  TextEditingController client = TextEditingController(),
      date = TextEditingController(),
      caption = TextEditingController(),
      space = TextEditingController(),
      position = TextEditingController(),
      rate = TextEditingController(),
      material = TextEditingController(),
      payment = TextEditingController(),
      instruction = TextEditingController(),
      roNumber = TextEditingController(),
      code = TextEditingController();

  savePdf() async {
    loading = true;
    update();
    //  print(date.text);
    ContentModel contentModel = ContentModel(
      client: client.text,
      date: date.text,
      caption: caption.text,
      space: space.text,
      position: position.text,
      rate: rate.text,
      material: material.text,
      payment: payment.text,
      instruction: instruction.text,
      roNumber: roNumber.text,
      code: code.text,
    );

    Directory? path = await ds.getDownloadDirectory();

    final generatedPdfFile = await HtmlToPdf.convertFromHtmlContent(
      htmlContent: htmlContent(contentModel),
      printPdfConfiguration: PrintPdfConfiguration(
        targetDirectory: path!.path,
        targetName: roNumber.text,
        printSize: PrintSize.A4,
        printOrientation: PrintOrientation.Portrait,
      ),
    );
    Share.shareXFiles([XFile(generatedPdfFile.path)]);
    Fluttertoast.showToast(msg: "Bill Generated");
    loading = false;
    update();

    print(generatedPdfFile.path);
  }

  bool loading = false;

  saveImage() async {
    loading = true;
    update();
    ContentModel contentModel = ContentModel(
      client: client.text,
      date: date.text,
      caption: caption.text,
      space: space.text,
      position: position.text,
      rate: rate.text,
      material: material.text,
      payment: payment.text,
      instruction: instruction.text,
      roNumber: roNumber.text,
      code: code.text,
    );

    //  log(htmlContent(contentModel));
    Directory? path = await ds.getDownloadDirectory();
    var file = File(path!.path + "/${roNumber.text}.jpg");
    final fl = await HtmlToImage.convertToImage(
        content: htmlContent(contentModel), width: 3600);
    await file.writeAsBytes(fl);
    Share.shareXFiles([XFile(file.path)]);
    Fluttertoast.showToast(msg: "Bill Generated");
    loading = false;
    update();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    DateTime dt = DateTime.now();
    date.text = DateFormat("dd-mm-yy hh:mm a").format(dt.toLocal());
  }
}
