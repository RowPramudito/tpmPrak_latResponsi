import 'package:flutter/material.dart';
import 'package:tpm_prak_latresponsi/pages/home_page.dart';

// code by:
// Rowang Pramudito
// 123200098 - IF-H

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
