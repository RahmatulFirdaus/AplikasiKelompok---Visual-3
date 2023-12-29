import 'package:flutter/material.dart';
import 'package:tugasupdatekelompok/core/app_export.dart';
import 'package:tugasupdatekelompok/widgets/custom_elevated_button.dart';
import 'package:fluttertoast/fluttertoast.dart';

TextEditingController panjang = TextEditingController();
TextEditingController lebar = TextEditingController();
TextEditingController luas = TextEditingController();
TextEditingController keliling = TextEditingController();

class Iphone8NineteenScreen extends StatelessWidget {
  const Iphone8NineteenScreen({Key? key})
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
                "Kalkulator Persegi Panjang",
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 26.v),
              Container(
                height: 43.v,
                width: 281.h,
                child: TextField(
                controller: panjang,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25)
                  ),
                  prefixIcon: Icon(Icons.square),
                  labelText: "Panjang Persegi Panjang",
                  hintText: "Inputkan Panjang Persegi Panjang"
                ),
              ),
              ),
              SizedBox(height: 16.v),
              Container(
                height: 43.v,
                width: 281.h,
                child: TextField(
                controller: lebar,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25)
                  ),
                  prefixIcon: Icon(Icons.square),
                  labelText: "Lebar Persegi Panjang",
                  hintText: "Inputkan Lebar Persegi Panjang"
                ),
              ),
              ),
              SizedBox(height: 16.v),
              CustomElevatedButton(
                width: 227.h,
                text: "Konversi",
                onPressed: (){
                  if(panjang.text == "" || lebar.text == ""){
                      Fluttertoast.showToast(
                        msg: "Masukkan Panjang dan Lebar Persegi Panjang",
                        textColor: Colors.black,
                        backgroundColor: Colors.white, //warna bg android
                        gravity: ToastGravity.CENTER, //posisi pada android
                        timeInSecForIosWeb: 3,  //lama muncul pesan pada web
                        webPosition: "center", //posisi pada web + kombinasi gravity
                        webBgColor: "white", //warna pada web
                        toastLength: Toast.LENGTH_LONG //lama muncul android
                      );
                    }else{
                    num p = num.parse(panjang.text);
                    num l = num.parse(lebar.text);
                    num result = p * l;
                    num result2 = 2*p + 2*l;
                    luas.text = result.toString();
                    keliling.text = result2.toString();
                    }
                },
              ),
              SizedBox(height: 30.v),
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
                  labelText: "Luas Persegi Panjang"
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
                  labelText: "Keliling Persegi Panjang"
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
