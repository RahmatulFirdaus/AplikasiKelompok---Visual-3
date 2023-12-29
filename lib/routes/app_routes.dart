import 'package:flutter/material.dart';
import 'package:tugasupdatekelompok/presentation/iphone_8_one_screen/iphone_8_one_screen.dart';
import 'package:tugasupdatekelompok/presentation/iphone_8_two_screen/iphone_8_two_screen.dart';
import 'package:tugasupdatekelompok/presentation/iphone_8_three_screen/iphone_8_three_screen.dart';
import 'package:tugasupdatekelompok/presentation/iphone_8_four_screen/iphone_8_four_screen.dart';
import 'package:tugasupdatekelompok/presentation/iphone_8_five_screen/iphone_8_five_screen.dart';
import 'package:tugasupdatekelompok/presentation/iphone_8_six_screen/iphone_8_six_screen.dart';
import 'package:tugasupdatekelompok/presentation/iphone_8_seven_screen/iphone_8_seven_screen.dart';
import 'package:tugasupdatekelompok/presentation/iphone_8_eight_screen/iphone_8_eight_screen.dart';
import 'package:tugasupdatekelompok/presentation/iphone_8_nine_screen/iphone_8_nine_screen.dart';
import 'package:tugasupdatekelompok/presentation/iphone_8_ten_screen/iphone_8_ten_screen.dart';
import 'package:tugasupdatekelompok/presentation/iphone_8_eleven_screen/iphone_8_eleven_screen.dart';
import 'package:tugasupdatekelompok/presentation/iphone_8_twelve_screen/iphone_8_twelve_screen.dart';
import 'package:tugasupdatekelompok/presentation/iphone_8_thirteen_screen/iphone_8_thirteen_screen.dart';
import 'package:tugasupdatekelompok/presentation/iphone_8_fourteen_screen/iphone_8_fourteen_screen.dart';
import 'package:tugasupdatekelompok/presentation/iphone_8_fifteen_screen/iphone_8_fifteen_screen.dart';
import 'package:tugasupdatekelompok/presentation/iphone_8_sixteen_screen/iphone_8_sixteen_screen.dart';
import 'package:tugasupdatekelompok/presentation/iphone_8_seventeen_screen/iphone_8_seventeen_screen.dart';
import 'package:tugasupdatekelompok/presentation/iphone_8_eighteen_screen/iphone_8_eighteen_screen.dart';
import 'package:tugasupdatekelompok/presentation/iphone_8_nineteen_screen/iphone_8_nineteen_screen.dart';
import 'package:tugasupdatekelompok/presentation/iphone_8_twenty_screen/iphone_8_twenty_screen.dart';
import 'package:tugasupdatekelompok/presentation/iphone_8_twentyone_screen/iphone_8_twentyone_screen.dart';
import 'package:tugasupdatekelompok/presentation/iphone_8_twentytwo_screen/iphone_8_twentytwo_screen.dart';
import 'package:tugasupdatekelompok/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String iphone8OneScreen = '/iphone_8_one_screen';

  static const String iphone8TwoScreen = '/iphone_8_two_screen';

  static const String iphone8ThreeScreen = '/iphone_8_three_screen';

  static const String iphone8FourScreen = '/iphone_8_four_screen';

  static const String iphone8FiveScreen = '/iphone_8_five_screen';

  static const String iphone8SixScreen = '/iphone_8_six_screen';

  static const String iphone8SevenScreen = '/iphone_8_seven_screen';

  static const String iphone8EightScreen = '/iphone_8_eight_screen';

  static const String iphone8NineScreen = '/iphone_8_nine_screen';

  static const String iphone8TenScreen = '/iphone_8_ten_screen';

  static const String iphone8ElevenScreen = '/iphone_8_eleven_screen';

  static const String iphone8TwelveScreen = '/iphone_8_twelve_screen';

  static const String iphone8ThirteenScreen = '/iphone_8_thirteen_screen';

  static const String iphone8FourteenScreen = '/iphone_8_fourteen_screen';

  static const String iphone8FifteenScreen = '/iphone_8_fifteen_screen';

  static const String iphone8SixteenScreen = '/iphone_8_sixteen_screen';

  static const String iphone8SeventeenScreen = '/iphone_8_seventeen_screen';

  static const String iphone8EighteenScreen = '/iphone_8_eighteen_screen';

  static const String iphone8NineteenScreen = '/iphone_8_nineteen_screen';

  static const String iphone8TwentyScreen = '/iphone_8_twenty_screen';

  static const String iphone8TwentyoneScreen = '/iphone_8_twentyone_screen';

  static const String iphone8TwentytwoScreen = '/iphone_8_twentytwo_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    iphone8OneScreen: (context) => Iphone8OneScreen(),
    iphone8TwoScreen: (context) => Iphone8TwoScreen(),
    iphone8ThreeScreen: (context) => Iphone8ThreeScreen(),
    iphone8FourScreen: (context) => Iphone8FourScreen(),
    iphone8FiveScreen: (context) => Iphone8FiveScreen(),
    iphone8SixScreen: (context) => Iphone8SixScreen(),
    iphone8SevenScreen: (context) => Iphone8SevenScreen(),
    iphone8EightScreen: (context) => Iphone8EightScreen(),
    iphone8NineScreen: (context) => Iphone8NineScreen(),
    iphone8TenScreen: (context) => Iphone8TenScreen(),
    iphone8ElevenScreen: (context) => Iphone8ElevenScreen(),
    iphone8TwelveScreen: (context) => Iphone8TwelveScreen(),
    iphone8ThirteenScreen: (context) => Iphone8ThirteenScreen(),
    iphone8FourteenScreen: (context) => Iphone8FourteenScreen(),
    iphone8FifteenScreen: (context) => Iphone8FifteenScreen(),
    iphone8SixteenScreen: (context) => Iphone8SixteenScreen(),
    iphone8SeventeenScreen: (context) => Iphone8SeventeenScreen(),
    iphone8EighteenScreen: (context) => Iphone8EighteenScreen(),
    iphone8NineteenScreen: (context) => Iphone8NineteenScreen(),
    iphone8TwentyScreen: (context) => Iphone8TwentyScreen(),
    iphone8TwentyoneScreen: (context) => Iphone8TwentyoneScreen(),
    iphone8TwentytwoScreen: (context) => Iphone8TwentytwoScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
