import 'package:flutter/material.dart';
import 'package:tugasupdatekelompok/core/app_export.dart';
import 'package:tugasupdatekelompok/widgets/custom_elevated_button.dart';
import 'package:fluttertoast/fluttertoast.dart';

TextEditingController inputFahrenheit = TextEditingController();
TextEditingController inputKelvin = TextEditingController();
TextEditingController inputReaumur = TextEditingController();
TextEditingController inputCelcius = TextEditingController();
TextEditingController inputRankine = TextEditingController();
TextEditingController hasilKelvin = TextEditingController();
TextEditingController hasilReaumur = TextEditingController();
TextEditingController hasilCelcius = TextEditingController();
TextEditingController hasilFahrenheit = TextEditingController();
TextEditingController hasilRankine = TextEditingController();

class Iphone8SixScreen extends StatelessWidget {
  const Iphone8SixScreen({Key? key})
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
              Text(
                "Konversi Suhu Kelvin",
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 29.v),
              Container(
                height: 43.v,
                width: 281.h,
                child: TextField(
                controller: inputKelvin,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25)
                  ),
                  prefixIcon: Icon(Icons.input_outlined),
                  labelText: "Suhu Kelvin",
                  hintText: "Inputkan Suhu Kelvin"
                ),
              ),
              ),
              SizedBox(height: 16.v),
              CustomElevatedButton(
                width: 227.h,
                text: "Konversi",
                onPressed: (){
                  if(inputKelvin.text == ""){
                      Fluttertoast.showToast(
                        msg: "Masukkan Suhu Kelvin",
                        textColor: Colors.black,
                        backgroundColor: Colors.white, //warna bg android
                        gravity: ToastGravity.CENTER, //posisi pada android
                        timeInSecForIosWeb: 3,  //lama muncul pesan pada web
                        webPosition: "center", //posisi pada web + kombinasi gravity
                        webBgColor: "white", //warna pada web
                        toastLength: Toast.LENGTH_LONG //lama muncul android
                      );
                    }else{
                    num k = num.parse(inputKelvin.text);
                    num f, r, c, ran;
                    f = k * 1.8 - 459.67;
                    r = (k - 273.15) * 0.8;
                    c = k - 273.15;
                    ran = (k * 9/5);

                    hasilFahrenheit.text = f.toString();
                    hasilReaumur.text = r.toString();
                    hasilCelcius.text = c.toString();
                    hasilRankine.text = ran.toString();
                    }
                },
              ),
              SizedBox(height: 16.v),
              Container(
                height: 43.v,
                width: 281.h,
                child: TextField(
                controller: hasilFahrenheit,
                enabled: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25)
                  ),
                  prefixIcon: Icon(Icons.shutter_speed),
                  labelText: "Suhu Fahrenheit"
                ),
              ),
              ),
              SizedBox(height: 6.v),
              Container(
                height: 43.v,
                width: 281.h,
                child: TextField(
                controller: hasilReaumur,
                enabled: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25)
                  ),
                  prefixIcon: Icon(Icons.shutter_speed),
                  labelText: "Suhu Reaumur"
                ),
              ),
              ),
              SizedBox(height: 6.v),
              Container(
                height: 43.v,
                width: 281.h,
                child: TextField(
                controller: hasilCelcius,
                enabled: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25)
                  ),
                  prefixIcon: Icon(Icons.shutter_speed),
                  labelText: "Suhu Celcius"
                ),
              ),
              ),
              SizedBox(height: 6.v),
              Container(
                height: 43.v,
                width: 281.h,
                child: TextField(
                controller: hasilRankine,
                enabled: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25)
                  ),
                  prefixIcon: Icon(Icons.shutter_speed),
                  labelText: "Suhu Rankine"
                ),
              ),
              ),
              SizedBox(height: 7.v),
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
