import 'package:flutter/material.dart';
import 'package:tugasupdatekelompok/core/app_export.dart';
import 'package:tugasupdatekelompok/widgets/custom_elevated_button.dart';
import 'package:fluttertoast/fluttertoast.dart';


TextEditingController tinggi = TextEditingController();
TextEditingController alas = TextEditingController();
TextEditingController luas = TextEditingController();

class JajarGenjang extends StatelessWidget {
  const JajarGenjang({Key? key})
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
                "Kalkulator Jajar Genjang",
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
                  prefixIcon: Icon(Icons.square),
                  labelText: "Alas Jajar Genjang",
                  hintText: "Inputkan Alas Jajar Genjang"
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
                  prefixIcon: Icon(Icons.square),
                  labelText: "Tinggi Jajar Genjang",
                  hintText: "Inputkan Tinggi Jajar Genjang"
                ),
              ),
              ),
              SizedBox(height: 16.v),
              SizedBox(height: 25.v),
              CustomElevatedButton(
                width: 227.h,
                text: "Konversi",
                onPressed: (){
                 if(tinggi.text=="" || alas.text==""){
                      Fluttertoast.showToast(
                        msg: "Masukkan alas dan tinggi",
                        textColor: Colors.black,
                        backgroundColor: Colors.white, //warna bg android
                        gravity: ToastGravity.CENTER, //posisi pada android
                        timeInSecForIosWeb: 3,  //lama muncul pesan pada web
                        webPosition: "center", //posisi pada web + kombinasi gravity
                        webBgColor: "white", //warna pada web
                        toastLength: Toast.LENGTH_LONG //lama muncul android
                      );
                    }else{
                    num pa = num.parse(alas.text);
                    num ti = num.parse(tinggi.text);

                    num hasilnya = pa * ti;
                    luas.text = hasilnya.toString();
                    
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
                  labelText: "Luas Jajar Genjang"
                ),
              ),
              ),
              SizedBox(height: 23.v),
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
