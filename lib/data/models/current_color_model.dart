import 'package:flutter/material.dart';

/// color model for next improvment
class CurrentColorModel {
  /// background color
  final Color color;

  ///constructor
  CurrentColorModel({
    required this.color,
  });

  ///constructor copyWith
  CurrentColorModel copyWith({
    Color? color,
  }) {
    return CurrentColorModel(
      color: color ?? this.color,
    );
  }

  @override
  String toString() => 'CurrentColor(color: $color)';
}
