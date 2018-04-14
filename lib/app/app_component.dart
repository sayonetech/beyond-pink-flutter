import 'package:beyondpink/intro_page_view.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import './application.dart';

class AppComponent extends StatefulWidget {

  @override
  State createState() {
    return new AppComponentState();
  }
}

class AppComponentState extends State<AppComponent> {

  AppComponentState() {
    final router = new Router();
    //  Routes.configureRoutes(router);
    Application.router = router;
  }


  @override
  Widget build(BuildContext context) {
    final app = new MaterialApp(
      title: 'Fluro',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new IntroPageView(),
      //   onGenerateRoute: Application.router.generator,
    );
    print("initial route = ${app.initialRoute}");
    return app;
  }
}