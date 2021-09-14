import 'package:flutter/material.dart';
import 'package:get/get.dart';

mixin LoaderMixin on GetxController {
  void loaderListener(RxBool loader) {
    ever<bool>(
      loader,
      (loading) async => {
        if (loading)
          {
            await Get.dialog(const Center(child: CircularProgressIndicator()),
                barrierDismissible: false)
          }
        else
          {
            Get.back(),
          }
      },
    );
  }
}
