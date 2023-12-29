import 'package:flutter/material.dart';
import 'package:tugasupdatekelompok/core/app_export.dart';
import 'package:tugasupdatekelompok/presentation/iphone_8_eleven_screen/iphone_8_eleven_screen.dart';
import 'package:tugasupdatekelompok/presentation/iphone_8_fifteen_screen/iphone_8_fifteen_screen.dart';
import 'package:tugasupdatekelompok/presentation/iphone_8_fourteen_screen/iphone_8_fourteen_screen.dart';
import 'package:tugasupdatekelompok/presentation/iphone_8_sixteen_screen/iphone_8_sixteen_screen.dart';
import 'package:tugasupdatekelompok/presentation/iphone_8_ten_screen/iphone_8_ten_screen.dart';
import 'package:tugasupdatekelompok/presentation/iphone_8_thirteen_screen/iphone_8_thirteen_screen.dart';
import 'package:tugasupdatekelompok/presentation/iphone_8_twelve_screen/iphone_8_twelve_screen.dart';
import 'package:tugasupdatekelompok/widgets/custom_elevated_button.dart';

class Iphone8NineScreen extends StatelessWidget {
  const Iphone8NineScreen({Key? key})
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
              SizedBox(height: 2.v),
              Text(
                "Konversi Satuan Panjang",
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 43.v),
              _buildKonversiKM(context),
              SizedBox(height: 14.v),
              _buildKonversiHM(context),
              SizedBox(height: 14.v),
              _buildKonversiDAM(context),
              SizedBox(height: 14.v),
              _buildKonversiM(context),
              SizedBox(height: 13.v),
              _buildKonversiDM(context),
              SizedBox(height: 13.v),
              _buildKonversiCM(context),
              SizedBox(height: 15.v),
              _buildKonversiMM(context),
              SizedBox(height: 38.v),
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
  Widget _buildKonversiKM(BuildContext context) {
    return CustomElevatedButton(
      width: 227.h,
      text: "Konversi KM",
      onPressed: () {
        Navigator.push(context, 
         MaterialPageRoute(builder: (context) => Iphone8TenScreen())
         );
      },
    );
  }

  /// Section Widget
  Widget _buildKonversiHM(BuildContext context) {
    return CustomElevatedButton(
      width: 227.h,
      text: "Konversi HM",
      onPressed: () {
        Navigator.push(context, 
         MaterialPageRoute(builder: (context) => Iphone8ElevenScreen())
         );
      },
    );
  }

  /// Section Widget
  Widget _buildKonversiDAM(BuildContext context) {
    return CustomElevatedButton(
      width: 227.h,
      text: "Konversi DAM",
      onPressed: () {
        Navigator.push(context, 
         MaterialPageRoute(builder: (context) => Iphone8TwelveScreen())
         );
      },
    );
  }

  /// Section Widget
  Widget _buildKonversiM(BuildContext context) {
    return CustomElevatedButton(
      width: 227.h,
      text: "Konversi M",
      onPressed: () {
        Navigator.push(context, 
         MaterialPageRoute(builder: (context) => Iphone8ThirteenScreen())
         );
      },
    );
  }

  /// Section Widget
  Widget _buildKonversiDM(BuildContext context) {
    return CustomElevatedButton(
      width: 227.h,
      text: "Konversi DM",
      onPressed: () {
        Navigator.push(context, 
         MaterialPageRoute(builder: (context) => Iphone8FourteenScreen())
         );
      },
    );
  }

  /// Section Widget
  Widget _buildKonversiCM(BuildContext context) {
    return CustomElevatedButton(
      width: 227.h,
      text: "Konversi CM",
      onPressed: () {
        Navigator.push(context, 
         MaterialPageRoute(builder: (context) => Iphone8FifteenScreen())
         );
      },
    );
  }

  /// Section Widget
  Widget _buildKonversiMM(BuildContext context) {
    return CustomElevatedButton(
      width: 227.h,
      text: "Konversi MM",
      onPressed: () {
        Navigator.push(context, 
         MaterialPageRoute(builder: (context) => Iphone8SixteenScreen())
         );
      },
    );
  }
}
