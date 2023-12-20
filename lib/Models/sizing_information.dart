import 'package:flutter/material.dart';
import 'package:fleetcutter_helpers/Enums/device_screen_type.dart';

/// @author    Diego
/// @since     2022-06-10
/// @copyright 2022 Carshare Australia Pty Ltd.

class SizingInformation {
  final Orientation orientation;
  final DeviceScreenType deviceScreenType;
  final Size screenSize;
  final Size localWidgetSize;

  SizingInformation(
      {required this.orientation,
      required this.deviceScreenType,
      required this.screenSize,
      required this.localWidgetSize});

  @override
  String toString() {
    return 'Orientation: $orientation. DeviceType: $deviceScreenType. ScreenSize $screenSize. LocalWidgetSize $localWidgetSize.';
  }
}
