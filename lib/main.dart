import 'package:catpad/theme.dart';
import 'package:catpad/ui/view.dart';
import 'package:catpad/util.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = createTextTheme(context, "Audiowide", "Audiowide");
    MaterialTheme theme = MaterialTheme(textTheme);

    return GetMaterialApp(
      darkTheme: theme.dark(),
      theme: theme.light(),
      home: PadPage(),
    );
  }
}
