import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

var detailHandler = new Handler(handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  //return new DetailView();
});

var rootHandler = new Handler(handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  //return new LoginScreen();
});

var homeHandler = new Handler(handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  //return new HomeController();
});