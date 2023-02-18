import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:test_color_generate/data/models/current_color_model.dart';

/// color repository
class CurrentColorRepository {
  /// local storage member
  final GetStorage box = GetStorage('ColorGenerator');

  static final CurrentColorRepository _singleton =
      CurrentColorRepository._internal();

  /// local storage singleton
  factory CurrentColorRepository() {
    return _singleton;
  }

  CurrentColorRepository._internal();

  /// get color
  CurrentColorModel getCurrentColor() {
    return box.hasData('CurrentColor')
        ? CurrentColorModel(color: Color(box.read<int>('CurrentColor') ?? 0))
        : CurrentColorModel(color: Colors.transparent);
  }

  /// save color
  void saveCurrentColor(CurrentColorModel currentColorModel) {
    box.write('CurrentColor', currentColorModel.color.value);
  }
}
