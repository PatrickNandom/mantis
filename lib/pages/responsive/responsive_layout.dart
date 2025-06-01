import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileDashboard;
  final Widget webDashboard;

  const ResponsiveLayout({
    super.key,
    required this.mobileDashboard,
    required this.webDashboard,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth < 600) {
      return mobileDashboard;
    } else {
      return webDashboard;
    }
  }
}
