import 'package:flutter/material.dart';
import 'package:tugasupdatekelompok/core/app_export.dart';
import 'package:tugasupdatekelompok/presentation/iphone_8_eight_screen/iphone_8_eight_screen.dart';
import 'package:tugasupdatekelompok/presentation/iphone_8_five_screen/iphone_8_five_screen.dart';
import 'package:tugasupdatekelompok/presentation/iphone_8_four_screen/rankine.dart';
import 'package:tugasupdatekelompok/presentation/iphone_8_seven_screen/iphone_8_seven_screen.dart';
import 'package:tugasupdatekelompok/presentation/iphone_8_six_screen/iphone_8_six_screen.dart';
import 'package:tugasupdatekelompok/widgets/custom_elevated_button.dart';



class Iphone8FourScreen extends StatelessWidget {
  const Iphone8FourScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgVector,
                height: 90.v,
                width: 375.h,
              ),
              SizedBox(height: 22.v),
              Text(
                "Konversi Suhu",
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 65.v),
              _buildFahrenheitButton(context),
              SizedBox(height: 23.v),
              _buildKelvinButton(context),
              SizedBox(height: 23.v),
              _buildReaumurButton(context),
              SizedBox(height: 19.v),
              _buildCelciusButton(context),
              SizedBox(height: 19.v),
              _buildRankineButton(context),
              Spacer(),
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

  /// Section Widget
  Widget _buildFahrenheitButton(BuildContext context) {
    return CustomElevatedButton(
      width: 227.h,
      text: "Fahrenheit",
      onPressed: () {
        Navigator.push(context, 
         MaterialPageRoute(builder: (context) => Iphone8FiveScreen())
         );
      },
    );
  }

  /// Section Widget
  Widget _buildKelvinButton(BuildContext context) {
    return CustomElevatedButton(
      width: 227.h,
      text: "Kelvin",
      onPressed: (){
        Navigator.push(context, 
         MaterialPageRoute(builder: (context) => Iphone8SixScreen())
         );
      },
    );
  }

  /// Section Widget
  Widget _buildReaumurButton(BuildContext context) {
    return CustomElevatedButton(
      width: 227.h,
      text: "Reaumur",
      onPressed: (){
        Navigator.push(context, 
         MaterialPageRoute(builder: (context) => Iphone8EightScreen())
         );
      },
    );
  }

  /// Section Widget
  Widget _buildCelciusButton(BuildContext context) {
    return CustomElevatedButton(
      width: 227.h,
      text: "Celcius",
      onPressed: (){
        Navigator.push(context, 
         MaterialPageRoute(builder: (context) => Iphone8SevenScreen())
         );
      },
    );
  }

  Widget _buildRankineButton(BuildContext context) {
    return CustomElevatedButton(
      width: 227.h,
      text: "Rankine",
      onPressed: (){
        Navigator.push(context, 
         MaterialPageRoute(builder: (context) => RankineKon())
         );
      },
    );
  }
}
