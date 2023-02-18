import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_color_generate/data/models/current_color_model.dart';
import 'package:test_color_generate/data/repositories/current_color_repository.dart';

/// color provider statement
class CurrentColorController extends GetxController {
  /// current color
  Rx<CurrentColorModel> currentColor =
      CurrentColorModel(color: Colors.transparent).obs;

  /// max integer of color
  final int maxColor = 0xffffffff;

  /// max integer of opacity
  final int maxOpacity = 0xff;

  /// repository
  final CurrentColorRepository repository = CurrentColorRepository();

  @override
  void onInit() {
    currentColor.value = repository.getCurrentColor();
    super.onInit();
  }

  /// generate new color
  void getRandomColor() {
    currentColor.value = currentColor.value.copyWith(
      color: Color(Random().nextInt(maxColor))
          .withAlpha(Random().nextInt(maxOpacity)),
    );
    repository.saveCurrentColor(currentColor.value);
  }
}
