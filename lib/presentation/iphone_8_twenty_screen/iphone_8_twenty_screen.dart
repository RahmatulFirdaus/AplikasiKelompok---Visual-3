import 'package:flutter/material.dart';
import 'package:tugasupdatekelompok/core/app_export.dart';
import 'package:tugasupdatekelompok/widgets/custom_elevated_button.dart';
import 'package:fluttertoast/fluttertoast.dart';


TextEditingController alas = TextEditingController();
TextEditingController tinggi = TextEditingController();
TextEditingController panjangSisi = TextEditingController();
TextEditingController luas = TextEditingController();
TextEditingController keliling = TextEditingController();

class Iphone8TwentyScreen extends StatelessWidget {
  const Iphone8TwentyScreen({Key? key})
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
                "Kalkulator Segitiga Sama Kaki",
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 26.v),
              Container(
                height: 43.v,
                width: 281.h,
                child: TextField(
                controller: alas,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25)
                  ),
                  prefixIcon: Icon(Icons.keyboard_arrow_up),
                  labelText: "Alas Segitiga",
                  hintText: "Inputkan Alas Segitiga"
                ),
              ),
              ),
              SizedBox(height: 16.v),
              Container(
                height: 43.v,
                width: 281.h,
                child: TextField(
                controller: tinggi,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25)
                  ),
                  prefixIcon: Icon(Icons.keyboard_arrow_up),
                  labelText: "Tinggi Segitiga",
                  hintText: "Inputkan Tinggi Segitiga"
                ),
              ),
              ),
              SizedBox(height: 16.v),
              Container(
                height: 43.v,
                width: 281.h,
                child: TextField(
                controller: panjangSisi,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25)
                  ),
                  prefixIcon: Icon(Icons.keyboard_arrow_up),
                  labelText: "Panjang Sisi Segitiga",
                  hintText: "Inputkan Panjang Sisi Segitiga"
                ),
              ),
              ),
              SizedBox(height: 25.v),
              CustomElevatedButton(
                width: 227.h,
                text: "Konversi",
                onPressed: (){
                   if(alas.text == "" || tinggi.text=="" || panjangSisi.text==""){
                      Fluttertoast.showToast(
                        msg: "Masukkan Alas, Tinggi, Panjang sisi Segitiga",
                        textColor: Colors.black,
                        backgroundColor: Colors.white, //warna bg android
                        gravity: ToastGravity.CENTER, //posisi pada android
                        timeInSecForIosWeb: 3,  //lama muncul pesan pada web
                        webPosition: "center", //posisi pada web + kombinasi gravity
                        webBgColor: "white", //warna pada web
                        toastLength: Toast.LENGTH_LONG //lama muncul android
                      );
                    }else{
                    num a = num.parse(alas.text);
                    num t = num.parse(tinggi.text);
                    num panjangsisi = num.parse(panjangSisi.text);
                    num resultKeliling = 2 * panjangsisi + a;
                    num resultLuas = 1/2 * a * t;
                    luas.text = resultLuas.toString();
                    keliling.text = resultKeliling.toString();
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
                  prefixIcon: Icon(Icons.keyboard_arrow_up),
                  labelText: "Luas Segitiga Sama Kaki"
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
                  prefixIcon: Icon(Icons.keyboard_arrow_up),
                  labelText: "Keliling Segitiga Sama Kaki"
                ),
              ),
              ),
              SizedBox(height: 72.v),
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
