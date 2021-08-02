import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_web_ui_ux/helpers/reponsiveness.dart';
import 'package:flutter_app_web_ui_ux/widgets/large_screen.dart';
import 'package:flutter_app_web_ui_ux/widgets/small_screen.dart';
import 'package:flutter_app_web_ui_ux/widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar:topNavigationBar(context, scaffoldKey),
      drawer: Drawer(),
      body:ResponsiveWidget(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
      ),
    );
  }
}
