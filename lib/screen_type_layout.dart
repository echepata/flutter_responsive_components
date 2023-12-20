import 'package:flutter/material.dart';
import 'package:fleetcutter_helpers/Enums/device_screen_type.dart';
import 'package:fleetcutter_responsive_components/responsive_widget.dart';

/// @author    Diego
/// @since     2022-06-10
/// @copyright 2022 Carshare Australia Pty Ltd.

class ScreenTypeLayout extends StatelessWidget {
  final Widget mobile;
  final Widget? smallMobile;
  final Widget? tablet;
  final Widget? desktop;

  const ScreenTypeLayout({
    required this.mobile,
    this.tablet,
    this.desktop,
    this.smallMobile,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      builder: (context, sizingInformation) {
        try {
          switch (sizingInformation.deviceScreenType) {
            case DeviceScreenType.smallMobile:
              return smallMobile as Widget;
            case DeviceScreenType.tablet:
              return tablet as Widget;
            case DeviceScreenType.desktop:
              try {
                return desktop as Widget;
              } catch (_) {
                return tablet as Widget;
              }
            case DeviceScreenType.mobile:
            default:
              return mobile;
          }
        } catch (_) {
          return mobile;
        }
      },
    );
  }
}
