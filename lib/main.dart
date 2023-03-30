/* Developed by Eng Mouaz M AlShahmeh */
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:meta_seo/meta_seo.dart';
import 'package:go_router/go_router.dart';

import 'widgets/go_router.dart';

void main() {
  setUrlStrategy(PathUrlStrategy());

  if (kIsWeb) {
    MetaSEO().config();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Development GoRouter with MetaSEO Example',
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
    );
  }
}