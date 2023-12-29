import 'package:flutter/material.dart';
import 'package:tugasupdatekelompok/core/app_export.dart';
import 'package:tugasupdatekelompok/widgets/custom_elevated_button.dart';
import 'package:fluttertoast/fluttertoast.dart';

TextEditingController jari = TextEditingController();
TextEditingController luas = TextEditingController();
TextEditingController keliling = TextEditingController();

class Iphone8TwentytwoScreen extends StatelessWidget {
  const Iphone8TwentytwoScreen({Key? key})
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
              SizedBox(height: 1.v),
              Text(
                "Kalkulator Lingkaran",
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 26.v),
              Container(
                height: 43.v,
                width: 281.h,
                child: TextField(
                controller: jari,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25)
                  ),
                  prefixIcon: Icon(Icons.circle_outlined),
                  labelText: "Jari - Jari Lingkaran",
                  hintText: "Inputkan Jari - Jari Lingkaran"
                ),
              ),
              ),
              SizedBox(height: 16.v),
              CustomElevatedButton(
                width: 227.h,
                text: "Konversi",
                onPressed: (){
                 if(jari.text == ""){
                      Fluttertoast.showToast(
                        msg: "Masukkan jari - jari lingkaran",
                        textColor: Colors.black,
                        backgroundColor: Colors.white, //warna bg android
                        gravity: ToastGravity.CENTER, //posisi pada android
                        timeInSecForIosWeb: 3,  //lama muncul pesan pada web
                        webPosition: "center", //posisi pada web + kombinasi gravity
                        webBgColor: "white", //warna pada web
                        toastLength: Toast.LENGTH_LONG //lama muncul android
                      );
                    }else{
                    num r = num.parse(jari.text);
                    num d = r + r;
                    num phi = 3.14;
                    num resultKeliling = phi * d;
                    num resultLuas = phi * r * r;
                    luas.text = resultLuas.toString();
                    keliling.text = resultKeliling.toString();
                    }
                },
              ),
              SizedBox(height: 16.v),
              Container(
                height: 43.v,
                width: 281.h,
                child: TextField(
                controller: luas,
                enabled: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25)
                  ),
                  prefixIcon: Icon(Icons.circle),
                  labelText: "Luas Lingkaran"
                ),
              ),
              ),
              SizedBox(height: 23.v),
              Container(
                height: 43.v,
                width: 281.h,
                child: TextField(
                controller: keliling,
                enabled: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25)
                  ),
                  prefixIcon: Icon(Icons.circle),
                  labelText: "Keliling Lingkaran"
                ),
              ),
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
