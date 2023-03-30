
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meta_seo/meta_seo.dart';

import '../screens/screeners.dart';
import '../screens/symbol_details.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        if (kIsWeb) {
          MetaSEO meta = MetaSEO();

          meta.ogTitle(ogTitle: 'Screeners Screen');
          meta.description(description: 'First Screen demo seo ');
          meta.keywords(keywords: 'Flutter, Dart, SEO, Meta, Web');
        }

        return const Screeners();
      },
    ),
    GoRoute(
      path: '/symbol_details',
      builder: (BuildContext context, GoRouterState state) {
        if (kIsWeb) {
          MetaSEO meta = MetaSEO();

          meta.ogTitle(ogTitle: 'symbol_details Screen');
          meta.description(description: 'Second Screen no demo ');
          meta.keywords(keywords: 'Javascript, stocks , trading , SEOTEST');
        }

        return const SymbolDetails();
      },
    ),
  ],
);
