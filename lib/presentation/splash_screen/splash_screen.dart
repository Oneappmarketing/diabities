import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:john_s_application3/core/app_export.dart';

class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: theme.colorScheme.onPrimaryContainer,
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    color: theme.colorScheme.onPrimaryContainer,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgSplash),
                        fit: BoxFit.cover)),
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 24.h, vertical: 41.v),
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      SizedBox(height: 292.v),
                      CustomImageView(
                          svgPath: ImageConstant.imgDi,
                          height: 62.v,
                          width: 73.h,
                          radius: BorderRadius.circular(15.h)),
                      Spacer(),
                      Divider(color: appTheme.gray200),
                      SizedBox(height: 17.v),
                      SizedBox(
                          width: 226.h,
                          child: Text("msg_make_a_commitment".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: theme.textTheme.titleLarge))
                    ])))));
  }
}
