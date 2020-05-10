import 'package:flutter/material.dart';
import 'package:lista_mercado/layout.dart';
import 'package:lista_mercado/pages/about.page.dart';
import 'package:lista_mercado/pages/home.page.dart';
import 'package:lista_mercado/pages/settings.page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    HomePage.tag: (context) => HomePage(),
    AboutPage.tag: (context) => AboutPage(),
    SettingsPage.tag: (context) => SettingsPage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MarketList',
      theme: ThemeData(
        textTheme: TextTheme(
          headline: TextStyle(
            fontSize: 48,
            fontWeight: FontWeight.bold,
          ),
          title: TextStyle(
            fontSize: 22,
            fontStyle: FontStyle.italic,
            color: Layout.primary(),
          ),
          body1: TextStyle(fontSize: 14),
        ),
        primaryColor: Layout.primary(),
        accentColor: Layout.secondary(),
        brightness: Brightness.light,
      ),
      home: HomePage(),
      routes: routes,
    );
  }
}
