import 'package:ejemplo1/src/pages/basico.dart';
import 'package:ejemplo1/src/pages/botones_page.dart';
import 'package:ejemplo1/src/pages/scroll_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    //para ihone
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
    //   // statusBarColor: Colors.white
    // ));
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.dark.copyWith(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.light
        )
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños',
      initialRoute: 'botones',
      routes: {
        'basico':(BuildContext context)=> BasicoPage(),
        'scroll':(BuildContext context)=> ScrollPage(),
        'botones':(BuildContext context)=> BotonesPage(),
      },
    );
  }
}
