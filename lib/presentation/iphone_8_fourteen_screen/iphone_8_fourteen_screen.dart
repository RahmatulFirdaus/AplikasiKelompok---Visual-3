import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:tugasupdatekelompok/core/app_export.dart';
import 'package:tugasupdatekelompok/widgets/custom_elevated_button.dart';

TextEditingController bilangan1 = TextEditingController();
TextEditingController hasil1 = TextEditingController();
TextEditingController hasil2 = TextEditingController();
TextEditingController hasil3 = TextEditingController();
TextEditingController hasil4 = TextEditingController();
TextEditingController hasil5 = TextEditingController();
TextEditingController hasil6 = TextEditingController();

class Iphone8FourteenScreen extends StatelessWidget {
  const Iphone8FourteenScreen({Key? key})
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
              _buildKonversiDmText(context),
              SizedBox(height: 18.v),
              Container(
                height: 43.v,
                width: 281.h,
                child: TextField(
                controller: bilangan1,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25)
                  ),
                  prefixIcon: Icon(Icons.looks_one_outlined),
                  labelText: "Nilai DM",
                  hintText: "Inputkan Nilai DM"
                ),
              ),
              ),
              SizedBox(height: 12.v),
              CustomElevatedButton(
                width: 227.h,
                text: "Konversi",
                onPressed: (){
                  num bil1 = num.parse(bilangan1.text);
                    num km = bil1 / 10000;
                    num hm = bil1 / 1000;
                    num dam = bil1 / 100;
                    num m = bil1 / 10;
                    num cm = bil1 * 10;
                    num mm = bil1 * 100;
                    

                    hasil1.text = km.toString();
                    hasil2.text = hm.toString();
                    hasil3.text = dam.toString();
                    hasil4.text = m.toString();
                    hasil5.text = cm.toString();
                    hasil6.text = mm.toString();
                },
              ),
              SizedBox(height: 30.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 39.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 43.v,
                      width: 141.h,
                      child: TextField(
                        controller: hasil1,
                        enabled: false,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25)
                        ),
                        prefixIcon: Icon(Icons.add_circle_outline),
                        labelText: "DM to KM"
                ),
                ),
                    ),
                    Container(
                      height: 43.v,
                      width: 141.h,
                      margin: EdgeInsets.only(left: 14.h),
                      child: TextField(
                        controller: hasil2,
                        enabled: false,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25)
                        ),
                        prefixIcon: Icon(Icons.add_circle_outline),
                        labelText: "DM to HM"
                ),
                ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 29.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 39.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 43.v,
                      width: 141.h,
                      child: TextField(
                        controller: hasil3,
                        enabled: false,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25)
                        ),
                        prefixIcon: Icon(Icons.add_circle_outline),
                        labelText: "DM to DAM"
                ),
                ),
                    ),
                    Container(
                      height: 43.v,
                      width: 141.h,
                      margin: EdgeInsets.only(left: 14.h),
                      child: TextField(
                        controller: hasil4,
                        enabled: false,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25)
                        ),
                        prefixIcon: Icon(Icons.add_circle_outline),
                        labelText: "DM to M"
                ),
                ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 33.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 39.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 43.v,
                      width: 141.h,
                      child: TextField(
                        controller: hasil5,
                        enabled: false,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25)
                        ),
                        prefixIcon: Icon(Icons.add_circle_outline),
                        labelText: "DM to CM"
                ),
                ),
                    ),
                    Container(
                      height: 43.v,
                      width: 141.h,
                      margin: EdgeInsets.only(left: 14.h),
                      child: TextField(
                        controller: hasil6,
                        enabled: false,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25)
                        ),
                        prefixIcon: Icon(Icons.add_circle_outline),
                        labelText: "DM to MM"
                ),
                ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 161.v),
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
  Widget _buildKonversiDmText(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 127.h),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgVector,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 59.v),
          Text(
            "Konversi DM",
            style: theme.textTheme.titleLarge,
          ),
        ],
      ),
    );
  }
}
