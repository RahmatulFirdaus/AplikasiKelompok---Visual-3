import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:tugasupdatekelompok/core/app_export.dart';
import 'package:tugasupdatekelompok/widgets/custom_elevated_button.dart';

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

class Iphone8FiveScreen extends StatelessWidget {
  const Iphone8FiveScreen({Key? key})
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
                "Konversi Suhu Fahrenheit",
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 29.v),
              Container(
                height: 43.v,
                width: 281.h,
                child: TextField(
                controller: inputFahrenheit,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25)
                  ),
                  prefixIcon: Icon(Icons.input_outlined),
                  labelText: "Suhu Fahrenheit",
                  hintText: "Inputkan Suhu Fahrenheit"
                ),
              ),
              ),
              SizedBox(height: 16.v),
              CustomElevatedButton(
                width: 227.h,
                text: "Konversi",
                onPressed: (){
                  if(inputFahrenheit.text == ""){
                      Fluttertoast.showToast(
                        msg: "Masukkan Suhu Fahrenheit",
                        textColor: Colors.black,
                        backgroundColor: Colors.white, //warna bg android
                        gravity: ToastGravity.CENTER, //posisi pada android
                        timeInSecForIosWeb: 3,  //lama muncul pesan pada web
                        webPosition: "center", //posisi pada web + kombinasi gravity
                        webBgColor: "white", //warna pada web
                        toastLength: Toast.LENGTH_LONG //lama muncul android
                      );
                    }else{
                    num f = num.parse(inputFahrenheit.text);
                    num k, r, c,ran;
                    c = (f - 32) * 5/9;
                    k = (f - 32) * 5/9 + 273.15;
                    r = (f - 32) * 4/9;
                    ran = f + 459.67;

                    hasilKelvin.text = k.toString();
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
                controller: hasilKelvin,
                enabled: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25)
                  ),
                  prefixIcon: Icon(Icons.shutter_speed),
                  labelText: "Suhu Kelvin"
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
