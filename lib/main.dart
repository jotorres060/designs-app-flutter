import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:designs_app/screens/basic_design.dart';
import 'package:designs_app/screens/scroll_design.dart';
import 'package:designs_app/screens/home_design.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {

  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'Designs App',
      initialRoute: 'home_design',
      routes: {
        'basic_design' : (_) => const BasicDesignScreen(),
        'scroll_design' : (_) => const ScrollDesignScreen(),
        'home_design' : (_) => const HomeScreen()
      },
    );
  }

}
