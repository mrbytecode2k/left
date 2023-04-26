import 'package:flutter/material.dart';
//rutas widgetgit push test git
import 'package:left/routes/route.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}): super(key:key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes:  routes,
      initialRoute: 'welcome',
      theme: ThemeData()
    );
  }
}