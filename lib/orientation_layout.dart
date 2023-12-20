import 'package:flutter/material.dart';

/// @author    Diego
/// @since     2022-06-10
/// @copyright 2022 Carshare Australia Pty Ltd.

class OrientationLayout extends StatelessWidget {
  final Widget? landscape;
  final Widget portrait;

  const OrientationLayout({required this.portrait, this.landscape, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;

    if (orientation == Orientation.landscape && landscape is Widget) {
      return landscape as Widget;
    }

    return portrait;
  }
}
