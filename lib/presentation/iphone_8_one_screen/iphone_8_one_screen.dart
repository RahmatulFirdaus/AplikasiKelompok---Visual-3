import 'package:flutter/material.dart';
import 'package:tugasupdatekelompok/core/app_export.dart';
import 'package:tugasupdatekelompok/presentation/iphone_8_two_screen/iphone_8_two_screen.dart';
import 'package:tugasupdatekelompok/widgets/custom_elevated_button.dart';

class Iphone8OneScreen extends StatelessWidget {
  const Iphone8OneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgVector,
                height: 90.v,
                width: 375.h,
              ),
              SizedBox(height: 41.v),
              CustomImageView(
                imagePath: ImageConstant.imgUndrawPeopleRe8spw,
                height: 170.v,
                width: 267.h,
              ),
              SizedBox(height: 11.v),
              Text(
                "Kelompok 2",
                style: theme.textTheme.headlineLarge,
              ),
              SizedBox(
                width: 246.h,
                child: Divider(),
              ),
              SizedBox(height: 15.v),
              SizedBox(
                width: 186.h,
                child: Text(
                  "Rahmatul Firdaus\nMuhammad Ariva\nMuhammad Alvin Rhenanda",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              SizedBox(height: 53.v),
              CustomElevatedButton(
                onPressed: (){
                  Navigator.push(context, 
                          MaterialPageRoute(builder: (context) => Iphone8TwoScreen())
                      );
                },
                width: 227.h,
                text: "Mulai",
              ),
              SizedBox(height: 55.v),
              CustomImageView(
                imagePath: ImageConstant.imgVectorCyan10001,
                height: 79.v,
                width: 375.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
