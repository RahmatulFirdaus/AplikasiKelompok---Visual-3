import 'package:flutter/material.dart';
import 'package:tugasupdatekelompok/core/app_export.dart';
import 'package:tugasupdatekelompok/presentation/iphone_8_four_screen/iphone_8_four_screen.dart';
import 'package:tugasupdatekelompok/presentation/iphone_8_nine_screen/iphone_8_nine_screen.dart';
import 'package:tugasupdatekelompok/presentation/iphone_8_seventeen_screen/iphone_8_seventeen_screen.dart';
import 'package:tugasupdatekelompok/widgets/custom_elevated_button.dart';

class Iphone8ThreeScreen extends StatelessWidget {
  const Iphone8ThreeScreen({Key? key})
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
              SizedBox(height: 23.v),
              Text(
                "Menu Utama",
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 64.v),
              CustomElevatedButton(
                width: 227.h,
                text: "Konversi Suhu",
                onPressed: (){
                  Navigator.push(context, 
                          MaterialPageRoute(builder: (context) => Iphone8FourScreen())
                      );
                },
              ),
              SizedBox(height: 23.v),
              CustomElevatedButton(
                width: 227.h,
                text: "Konversi Satuan Panjang",
                onPressed: (){
                  Navigator.push(context, 
                          MaterialPageRoute(builder: (context) => Iphone8NineScreen())
                      );
                },
              ),
              SizedBox(height: 23.v),
              CustomElevatedButton(
                width: 227.h,
                text: "Kalkulator Bangun Datar ",
                onPressed: (){
                  Navigator.push(context, 
                          MaterialPageRoute(builder: (context) => Iphone8SeventeenScreen())
                      );
                },
              ),
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
}
