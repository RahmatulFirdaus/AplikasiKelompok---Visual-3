import 'package:flutter/material.dart';
import 'package:tugasupdatekelompok/core/app_export.dart';
import 'package:tugasupdatekelompok/presentation/iphone_8_eighteen_screen/iphone_8_eighteen_screen.dart';
import 'package:tugasupdatekelompok/presentation/iphone_8_nineteen_screen/iphone_8_nineteen_screen.dart';
import 'package:tugasupdatekelompok/presentation/iphone_8_seventeen_screen/jajarGenjang.dart';
import 'package:tugasupdatekelompok/presentation/iphone_8_twenty_screen/iphone_8_twenty_screen.dart';
import 'package:tugasupdatekelompok/presentation/iphone_8_twentyone_screen/iphone_8_twentyone_screen.dart';
import 'package:tugasupdatekelompok/presentation/iphone_8_twentytwo_screen/iphone_8_twentytwo_screen.dart';
import 'package:tugasupdatekelompok/widgets/custom_elevated_button.dart';

class Iphone8SeventeenScreen extends StatelessWidget {
  const Iphone8SeventeenScreen({Key? key})
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
              SizedBox(height: 20.v),
              Text(
                "Kalkulator Bangun Datar",
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 43.v),
              _buildButtonPersegiPanjang(context),
              SizedBox(height: 28.v),
              _buildButtonPersegi(context),
              SizedBox(height: 28.v),
              _buildButtonLingkaran(context),
              SizedBox(height: 28.v),
              _buildButtonSegitigaSamaKaki(context),
              SizedBox(height: 28.v),
              _buildButtonBalok(context),
              SizedBox(height: 28.v),
              _buildButtonJajarGenjang(context),
              SizedBox(height: 49.v),
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
  Widget _buildButtonPersegiPanjang(BuildContext context) {
    return CustomElevatedButton(
      width: 227.h,
      text: "Persegi Panjang",
      onPressed: () {
        Navigator.push(context, 
         MaterialPageRoute(builder: (context) => Iphone8NineteenScreen())
         );
      },
    );
  }

  /// Section Widget
  Widget _buildButtonPersegi(BuildContext context) {
    return CustomElevatedButton(
      width: 227.h,
      text: "Persegi",
      onPressed: () {
        Navigator.push(context, 
         MaterialPageRoute(builder: (context) => Iphone8EighteenScreen())
         );
      },
    );
  }

  /// Section Widget
  Widget _buildButtonLingkaran(BuildContext context) {
    return CustomElevatedButton(
      width: 227.h,
      text: "Lingkaran",
      onPressed: () {
        Navigator.push(context, 
         MaterialPageRoute(builder: (context) => Iphone8TwentytwoScreen())
         );
      },
    );
  }

  /// Section Widget
  Widget _buildButtonSegitigaSamaKaki(BuildContext context) {
    return CustomElevatedButton(
      width: 227.h,
      text: "Segitiga Sama Kaki",
      onPressed: () {
        Navigator.push(context, 
         MaterialPageRoute(builder: (context) => Iphone8TwentyScreen())
         );
      },
    );
  }

  /// Section Widget
  Widget _buildButtonBalok(BuildContext context) {
    return CustomElevatedButton(
      width: 227.h,
      text: "Balok",
      onPressed: () {
        Navigator.push(context, 
         MaterialPageRoute(builder: (context) => Iphone8TwentyoneScreen())
         );
      },
    );
  }

  Widget _buildButtonJajarGenjang(BuildContext context) {
    return CustomElevatedButton(
      width: 227.h,
      text: "Jajar Genjang",
      onPressed: () {
        Navigator.push(context, 
         MaterialPageRoute(builder: (context) => JajarGenjang())
         );
      },
    );
  }
}
