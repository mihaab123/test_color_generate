import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:test_color_generate/pages/home_page.dart';

void main() async {
  await GetStorage.init('ColorGenerator');
  runApp(const Main());
}

/// main class
class Main extends StatelessWidget {
  ///constructor
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Generate Colors',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(title: 'Generate Colors'),
    );
  }
}
