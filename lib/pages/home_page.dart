import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_color_generate/data/controllers/current_color_controller.dart';

/// home page
class HomePage extends StatefulWidget {
  /// app title
  final String title;

  ///constructor
  const HomePage({super.key, required this.title});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final CurrentColorController controller = Get.put(CurrentColorController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: GestureDetector(
        onTap: () => controller.getRandomColor(),
        child: Obx(() {
          return AnimatedContainer(
            color: controller.currentColor.value.color,
            duration: const Duration(seconds: 2),
            curve: Curves.fastOutSlowIn,
            child: Center(
              child: Text(
                'Hey there',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          );
        }),
      ),
    );
  }
}
