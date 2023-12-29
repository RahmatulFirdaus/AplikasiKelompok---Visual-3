import 'package:flutter/material.dart';
import 'package:tugasupdatekelompok/core/app_export.dart';
import 'package:tugasupdatekelompok/widgets/custom_elevated_button.dart';
import 'package:fluttertoast/fluttertoast.dart';


TextEditingController lebar = TextEditingController();
TextEditingController tinggi = TextEditingController();
TextEditingController panjang = TextEditingController();
TextEditingController volume = TextEditingController();

class Iphone8TwentyoneScreen extends StatelessWidget {
  const Iphone8TwentyoneScreen({Key? key})
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
                "Kalkulator Balok",
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
                  labelText: "Panjang Balok",
                  hintText: "Inputkan Panjang Balok"
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
                  labelText: "Tinggi balok",
                  hintText: "Inputkan Tinggi balok"
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
                  labelText: "Lebar balok",
                  hintText: "Inputkan lebar balok"
                ),
              ),
              ),
              SizedBox(height: 25.v),
              CustomElevatedButton(
                width: 227.h,
                text: "Konversi",
                onPressed: (){
                 if(lebar.text == "" || tinggi.text=="" || panjang.text==""){
                      Fluttertoast.showToast(
                        msg: "Masukkan lebar, tinggi, Panjang sisi balok",
                        textColor: Colors.black,
                        backgroundColor: Colors.white, //warna bg android
                        gravity: ToastGravity.CENTER, //posisi pada android
                        timeInSecForIosWeb: 3,  //lama muncul pesan pada web
                        webPosition: "center", //posisi pada web + kombinasi gravity
                        webBgColor: "white", //warna pada web
                        toastLength: Toast.LENGTH_LONG //lama muncul android
                      );
                    }else{
                    num pa = num.parse(panjang.text);
                    num ti = num.parse(tinggi.text);
                    num leb = num.parse(lebar.text);

                    try{
                    num hasilnya = pa * ti * leb;
                    volume.text = hasilnya.toString();
                    }catch (x){
                      print(x);
                    }
                    }
                },
              ),
              SizedBox(height: 30.v),
              Container(
                height: 43.v,
                width: 281.h,
               child: TextField(
                controller: volume,
                enabled: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25)
                  ),
                  prefixIcon: Icon(Icons.square_outlined),
                  labelText: "Volume balok"
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
