// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/gallery_localizations.dart';
import 'package:gallery/data/gallery_options.dart';
import 'package:gallery/studies/starter/home.dart';
import 'package:gallery/studies/starter/routes.dart' as routes;

const _primaryColor = Color(0xFF6200EE);

class StarterApp extends StatelessWidget {
  const StarterApp({Key key}) : super(key: key);

  static const String defaultRoute = routes.defaultRoute;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      restorationScopeId: 'starter_app',
      title: GalleryLocalizations.of(context).starterAppTitle,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: GalleryLocalizations.localizationsDelegates,
      supportedLocales: GalleryLocalizations.supportedLocales,
      locale: GalleryOptions.of(context).locale,
      initialRoute: StarterApp.defaultRoute,
      routes: {
        StarterApp.defaultRoute: (context) => const _Home(),
      },
      theme: ThemeData(
        primaryColor: _primaryColor,
        highlightColor: Colors.transparent,
        colorScheme: const ColorScheme(
          primary: _primaryColor,
          primaryContainer: Color(0xFF3700B3),
          secondary: Color(0xFF03DAC6),
          secondaryContainer: Color(0xFF018786),
          background: Colors.white,
          surface: Colors.white,
          onBackground: Colors.black,
          error: Color(0xFFB00020),
          onError: Colors.white,
          onPrimary: Colors.white,
          onSecondary: Colors.black,
          onSurface: Colors.black,
          brightness: Brightness.light,
        ),
        dividerTheme: const DividerThemeData(
          thickness: 1,
          color: Color(0xFFE5E5E5),
        ),
        platform: GalleryOptions.of(context).platform,
      ),
    );
  }
}

class _Home extends StatelessWidget {
  const _Home();

  @override
  Widget build(BuildContext context) {
    return const ApplyTextOptions(
      child: HomePage(),
    );
  }
}
