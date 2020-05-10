import 'package:flutter/material.dart';
import 'package:lista_mercado/layout.dart';
import 'package:lista_mercado/pages/about.page.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home.page';

  @override
  Widget build(BuildContext context) {
    final content = Center(
        child: Column(
      children: <Widget>[
        Text('Hi World'),
        RaisedButton(
          child: Text('Sobre'),
          onPressed: () {
            Navigator.of(context).pushNamed(AboutPage.tag);
          },
        ),
      ],
    ));

    return Layout.getContent(context, content);
  }
}
