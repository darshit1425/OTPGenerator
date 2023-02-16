import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '1.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/':(context) => Screen(),
    },
  ));
}
