import 'package:flutter/material.dart';
import 'package:flutter_starter_project/utils/responsive_size/app_config.dart';
import 'package:flutter_starter_project/utils/responsive_size/responsive_view.dart';
import 'package:get/get.dart';
import '../gen/assets.gen.dart';
import '../utils/theme/theme_data.dart';
import '../ext/ext.dart';

class SplashScreenUI extends ResponsiveStateless {
  @override
  Widget builder(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Container(
              width: Get.width,
              height: Get.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      ThemeService.switchTheme();
                    },
                    child: Container(
                      child: CircleAvatar(
                        radius: AppConfig.dimen.splashImage,
                        child: ClipOval(
                          child: Assets.img.appIcon.image(),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: context.percentHpx(
                      3,
                    ),
                  ),
                  Container(
                    child: Text(
                      "Admin Panel",
                      style: context.textThemeData.bodyText1,
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
