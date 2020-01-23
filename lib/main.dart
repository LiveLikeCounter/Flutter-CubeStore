import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './screens/product.dart';
import './screens/productbox.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'SofiaPro',
      ),
      title: 'Cube Store',
      initialRoute: '/product',
      routes: {
        '/': (ctx) => Product(),
        Product.routeName: (ctx) => Product(),
        ProductBox.routeName: (ctx) => ProductBox(),
      },
      onGenerateRoute: (settings) {
        // print(settings.arguments);
        // print(settings.name);
        return;
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (ctx) => Product(),
        );
      },
    );
  }
}
