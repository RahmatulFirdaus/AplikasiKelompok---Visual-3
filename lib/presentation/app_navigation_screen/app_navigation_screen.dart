import 'package:flutter/material.dart';
import 'package:tugasupdatekelompok/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 8 - One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone8OneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 8 - Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone8TwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 8 - Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone8ThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 8 - Four",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone8FourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 8 - Five",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone8FiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 8 - Six",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone8SixScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 8 - Seven",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone8SevenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 8 - Eight",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone8EightScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 8 - Nine",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone8NineScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 8 - Ten",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone8TenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 8 - Eleven",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone8ElevenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 8 - Twelve",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone8TwelveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 8 - Thirteen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone8ThirteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 8 - Fourteen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone8FourteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 8 - Fifteen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone8FifteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 8 - Sixteen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone8SixteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 8 - Seventeen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone8SeventeenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 8 - Eighteen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone8EighteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 8 - Nineteen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone8NineteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 8 - Twenty",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone8TwentyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 8 - TwentyOne",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone8TwentyoneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 8 - TwentyTwo",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone8TwentytwoScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
