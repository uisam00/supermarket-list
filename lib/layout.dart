import 'package:flutter/material.dart';
import 'package:lista_mercado/pages/about.page.dart';
import 'package:lista_mercado/pages/home.page.dart';
import 'package:lista_mercado/pages/settings.page.dart';

class Layout {
  static final pages = [
    HomePage.tag,
    AboutPage.tag,
    SettingsPage.tag,
  ];

  static int currItem = 0;

  static Scaffold getContent(BuildContext context, content) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Layout.primary(),
        title: Center(
          child: Text('Market List'),
        ),
        actions: _getActions(context),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currItem,
        fixedColor: primary(),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.question_answer),
            title: Text('Sobre'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('Configurações'),
          ),
        ],
        onTap: (int index) {
          currItem = index;
          Navigator.of(context).pushNamed(pages[currItem]);
        },
      ),
      body: content,
    );
  }

  static List<Widget> _getActions(context) {
    List<Widget> items = List<Widget>();

    if (pages[currItem] != HomePage.tag) {
      return items;
    }

    TextEditingController _ctrlAdd = TextEditingController();

    items.add(
      GestureDetector(
        onTap: () {
          showDialog(
              context: context,
              //barrierDismissible: false,
              builder: (BuildContext ctx) {
                final input = TextFormField(
                  controller: _ctrlAdd,
                  decoration: InputDecoration(
                      hintText: 'Nome',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                      contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10)),
                );

                return AlertDialog(
                  title: Text('Nova Lista'),
                  content: SingleChildScrollView(
                    child: ListBody(
                      children: <Widget>[
                        input,
                      ],
                    ),
                  ),
                  actions: <Widget>[
                    RaisedButton(
                      color: Layout.secondary(),
                      child: Text(
                        'Cancelar',
                        style: TextStyle(
                          color: Layout.light(),
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(ctx).pop();
                      },
                    ),
                    RaisedButton(
                      color: Layout.primary(),
                      child: Text(
                        'Adicionar',
                        style: TextStyle(
                          color: Layout.light(),
                        ),
                      ),
                      onPressed: () {
                        print(_ctrlAdd.text);
                        Navigator.of(ctx).pop();
                      },
                    ),
                  ],
                );
              });
        },
        child: Icon(Icons.add),
      ),
    );

    items.add(
      Padding(
        padding: EdgeInsets.only(right: 20),
      ),
    );

    return items;
  }

  static Color primary({double opacity = 1}) =>
      Color.fromRGBO(62, 62, 89, opacity);
  static Color secondary({double opacity = 1}) =>
      Color.fromRGBO(150, 150, 150, opacity);
  static Color light({double opacity = 1}) =>
      Color.fromRGBO(242, 234, 228, opacity);
  static Color danger({double opacity = 1}) =>
      Color.fromRGBO(217, 74, 74, opacity);
  static Color sucess({double opacity = 1}) =>
      Color.fromRGBO(6, 166, 59, opacity);
  static Color info({double opacity = 1}) =>
      Color.fromRGBO(0, 122, 166, opacity);
  static Color warning({double opacity = 1}) =>
      Color.fromRGBO(166, 134, 0, opacity);
  static Color dark({double opacity = 1}) =>
      Color.fromRGBO(51, 51, 51, opacity);
}
