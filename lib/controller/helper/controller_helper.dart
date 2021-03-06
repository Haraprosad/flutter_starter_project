import 'dart:io';
import 'package:flutter/services.dart';
import 'package:flutter_starter_project/repo/api/network_config.dart';
import 'package:flutter_starter_project/ui/shared/snackbar_helper.dart';
import 'package:get/get.dart';
import 'package:fimber/fimber.dart';

void logout() {
  SnackBarHelper.showError("Session out! Please login again ...");
  // SpUtils.setLoginStatus(false, 1);
  Get.reset(clearFactory: true);
  // Get.offAll(SplashScreenUI());
}

void closeDialog() {
  if (Get.isDialogOpen == true) {
    Get.close(1);
  }
}

Future<void> pop({bool animated = false}) async {
  await SystemChannels.platform
      .invokeMethod<void>('SystemNavigator.pop', animated);
}

bool analysisError(e) {
  if (e?.error is SocketException) {
    SnackBarHelper.showError(NetworkConfig.noInternetMessage);
    Fimber.e("Socket Exception: " + e.toString());
    return true;
  } else {
    SnackBarHelper.showError(NetworkConfig.errorMessage);
    Fimber.e(e.toString());
    return false;
  }
}
