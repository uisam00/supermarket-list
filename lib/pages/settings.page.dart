import 'package:flutter/material.dart';
import 'package:lista_mercado/layout.dart';

class SettingsPage extends StatelessWidget {
  static String tag = 'settings.page';

  @override
  Widget build(BuildContext context) {
    final content = Center(
      child: Text(
        'Configurações',
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
