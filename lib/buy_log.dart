import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class BuyLog extends GetxController {
  
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  void add(String title, String price) async{
    CollectionReference log = firestore.collection("buy-log");

    try{
    await log.add({
      "title": title,
      "price": price,
    });

    Get.defaultDialog(
      title: "Successed!",
      middleText: "Your payment successed, please check your email to download the game!",
      onConfirm: () => Get.back(),
      textConfirm: "Ok",
      barrierDismissible: false,
    );
    }
    catch(e) {
      Get.defaultDialog(
        title: "Failed",
        middleText: "Your payment is failed, please try again later",
        onConfirm: () => Get.back(),
        textConfirm: "Ok",
        barrierDismissible: false,
      );
    }
  }
}