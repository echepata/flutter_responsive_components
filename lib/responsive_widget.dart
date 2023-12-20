import 'package:flutter/material.dart';
import 'package:fleetcutter_helpers/platform_helper.dart';
import 'package:fleetcutter_responsive_components/Models/sizing_information.dart';

/// @author    Diego
/// @since     2022-06-10
/// @copyright 2022 Carshare Australia Pty Ltd.

class ResponsiveWidget extends StatelessWidget {
  final Widget Function(
      BuildContext context, SizingInformation sizingInformation) builder;

  const ResponsiveWidget({Key? key, required this.builder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      MediaQueryData mediaQuery = MediaQuery.of(context);
      SizingInformation sizingInformation = SizingInformation(
          orientation: mediaQuery.orientation,
          deviceScreenType: getDeviceType(mediaQuery),
          screenSize: mediaQuery.size,
          localWidgetSize: Size(constraints.maxWidth, constraints.maxHeight));

      return builder(context, sizingInformation);
    });
  }
}
