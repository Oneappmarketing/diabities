import 'package:flutter/material.dart';
import 'package:john_s_application3/core/app_export.dart';

class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({
    Key? key,
    this.onChanged,
  }) : super(
          key: key,
        );

  RxInt selectedIndex = 0.obs;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgNavhome,
      activeIcon: ImageConstant.imgNavhome,
      title: "lbl_home".tr,
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgAirplane,
      activeIcon: ImageConstant.imgAirplane,
      title: "lbl_home".tr,
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgVolume,
      activeIcon: ImageConstant.imgVolume,
      title: "lbl_home".tr,
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgUser,
      activeIcon: ImageConstant.imgUser,
      title: "lbl_home".tr,
      type: BottomBarEnum.Home,
    )
  ];

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.v,
      decoration: BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray10033,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              -20,
            ),
          ),
        ],
      ),
      child: Obx(
        () => BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedFontSize: 0,
          elevation: 0,
          currentIndex: selectedIndex.value,
          type: BottomNavigationBarType.fixed,
          items: List.generate(bottomMenuList.length, (index) {
            return BottomNavigationBarItem(
              icon: CustomImageView(
                svgPath: bottomMenuList[index].icon,
                height: 24.adaptSize,
                width: 24.adaptSize,
                color: theme.colorScheme.secondaryContainer,
              ),
              activeIcon: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 14.h,
                  vertical: 8.v,
                ),
                decoration: AppDecoration.gradientPrimaryToGreen.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder18,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomImageView(
                      svgPath: bottomMenuList[index].activeIcon,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      color: appTheme.whiteA700,
                      margin: EdgeInsets.only(left: 14.h),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 10.h,
                        right: 14.h,
                      ),
                      child: Text(
                        bottomMenuList[index].title ?? "",
                        style: CustomTextStyles.bodyMediumWhiteA700.copyWith(
                          color: appTheme.whiteA700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              label: '',
            );
          }),
          onTap: (index) {
            selectedIndex.value = index;
            onChanged?.call(bottomMenuList[index].type);
          },
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Home,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
