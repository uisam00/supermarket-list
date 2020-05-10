import 'package:flutter/material.dart';
import 'package:lista_mercado/layout.dart';

class AboutPage extends StatelessWidget {
  static String tag = 'about.page';

  @override
  Widget build(BuildContext context) {
    final content = Center(
      child: Text(
        'Esse app foi criado por Ui Sam',
        style: TextStyle(
          color: Layout.dark(),
        ),
      ),
    );
    return Layout.getContent(
      context,
      content,
    );
  }
}
