import 'package:flutter/material.dart';
import 'package:maple_file/app/router.dart';
import 'package:maple_file/common/widgets/responsive.dart';

import "pages/help.dart";
import "pages/about.dart";
import "pages/index.dart";
import "pages/not_found.dart";

Future<void> init(CustomRouter router) async {
  router.registerMany({
    "/": (context) {
      if (Breakpoint.isSmall(context)) {
        return const IndexScreen();
      }
      return const DesktopIndexScreen();
    },
    '/help': (context) {
      return const HelpScreen();
    },
    '/help/webview': (context) {
      return HelpWebViewScreen.fromRoute(ModalRoute.of(context));
    },
    '/about': (context) {
      return const AboutScreen();
    },
    '/404': (context) {
      return const NotFoundScreen();
    },
  });
}
