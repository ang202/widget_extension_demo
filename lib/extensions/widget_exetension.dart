import 'package:flutter/material.dart';

extension WidgetExtension on Widget {
  Widget padding(EdgeInsetsGeometry edge) => Padding(
        padding: edge,
        child: this,
      );

  Widget roundedBorder(BorderRadius radius) =>
      ClipRRect(borderRadius: radius, child: this);
}
