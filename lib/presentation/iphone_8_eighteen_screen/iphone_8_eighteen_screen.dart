import 'package:flutter/material.dart';
import 'package:tugasupdatekelompok/core/app_export.dart';
import 'package:tugasupdatekelompok/widgets/custom_elevated_button.dart';
import 'package:fluttertoast/fluttertoast.dart';

TextEditingController sisi = TextEditingController();
TextEditingController luas = TextEditingController();
TextEditingController keliling = TextEditingController();

class Iphone8EighteenScreen extends StatelessWidget {
  const Iphone8EighteenScreen({Key? key})
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
                "Kalkulator Persegi",
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 26.v),
              Container(
                height: 43.v,
                width: 281.h,
                child: TextField(
                controller: sisi,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25)
                  ),
                  prefixIcon: Icon(Icons.square),
                  labelText: "Sisi Persegi",
                  hintText: "Inputkan Sisi Persegi"
                ),
              ),
              ),
              SizedBox(height: 16.v),
              CustomElevatedButton(
                width: 227.h,
                text: "Konversi",
                onPressed: (){
                  if(sisi.text == ""){
                      Fluttertoast.showToast(
                        msg: "Masukkan Sisi Persegi",
                        textColor: Colors.black,
                        backgroundColor: Colors.white, //warna bg android
                        gravity: ToastGravity.CENTER, //posisi pada android
                        timeInSecForIosWeb: 3,  //lama muncul pesan pada web
                        webPosition: "center", //posisi pada web + kombinasi gravity
                        webBgColor: "white", //warna pada web
                        toastLength: Toast.LENGTH_LONG //lama muncul android
                      );
                    }else{
                    num s = num.parse(sisi.text);
                    num result = s * s;
                    num result2 = 4 * s;
                    luas.text = result.toString();
                    keliling.text = result2.toString();
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
                  prefixIcon: Icon(Icons.square_outlined),
                  labelText: "Luas Persegi"
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
                  prefixIcon: Icon(Icons.square_outlined),
                  labelText: "Keliling Persegi"
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
