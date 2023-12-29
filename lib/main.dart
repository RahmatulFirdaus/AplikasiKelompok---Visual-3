import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/scheduler.dart';
import 'package:tugasupdatekelompok/theme/theme_helper.dart';
import 'package:tugasupdatekelompok/routes/app_routes.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      title: 'tugasupdatekelompok',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.iphone8OneScreen,
      routes: AppRoutes.routes,
    );
  }
}
