import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:tugasupdatekelompok/core/app_export.dart';
import 'package:tugasupdatekelompok/presentation/iphone_8_three_screen/iphone_8_three_screen.dart';
import 'package:tugasupdatekelompok/widgets/custom_elevated_button.dart';

var keyform = GlobalKey<FormState>();
TextEditingController user = TextEditingController();
TextEditingController pass = TextEditingController();

class Iphone8TwoScreen extends StatelessWidget {
  const Iphone8TwoScreen({Key? key})
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
              SizedBox(height: 25.v),
              Text(
                "Login to Application",
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 5.v),
              Text(
                "Masukkan username dan password",
                style: CustomTextStyles.bodyMediumBlack900,
              ),
              SizedBox(height: 47.v),
              Container(
                height: 43.v,
                width: 299.h,
                child: TextFormField(
                    controller: user,
                    validator: (value) {
                       if (value == "") {
                         return 'Masukkan Username';
                       }
                       },
                    obscureText: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)
                      ),
                      labelText: "Username",
                      hintText: "Masukkan Username Kamu",
                      prefixIcon: Icon(Icons.person_outline_sharp), 
                    ),
                  ),
              ),
              SizedBox(height: 23.v),
              Container(
                height: 44.v,
                width: 299.h,
                child: TextFormField(
                    controller: pass,
                    validator: (value) {
                       if (value == "") {
                         return 'Masukkan Password';
                       }
                       },
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)
                      ),
                      labelText: "Password",
                      hintText: "Masukkan Password Kamu",
                      prefixIcon: Icon(Icons.key_outlined), 
                    ),
                  ),
              ),
              SizedBox(height: 40.v),
              CustomElevatedButton(
                width: 227.h,
                text: "Login",
                onPressed: (){
                    if(user.text == "admin" && pass.text == "admin"){
                     Navigator.push(context, 
                        MaterialPageRoute(builder: (context) => Iphone8ThreeScreen())
                      );
                    }else{
                      Fluttertoast.showToast(
                        msg: "Masukkan username dan password yang benar",
                        textColor: Colors.black,
                        backgroundColor: Colors.white, //warna bg android
                        gravity: ToastGravity.CENTER, //posisi pada android
                        timeInSecForIosWeb: 3,  //lama muncul pesan pada web
                        webPosition: "center", //posisi pada web + kombinasi gravity
                        webBgColor: "white", //warna pada web
                        toastLength: Toast.LENGTH_LONG //lama muncul android
                      );
                    }
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
