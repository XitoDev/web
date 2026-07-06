/// The entrypoint for the **server** environment.
///
/// The [main] method will only be executed on the server during pre-rendering.
/// To run code on the client, check the `main.client.dart` file.
library;

import 'package:jaspr/dom.dart';
// Server-specific Jaspr import.
import 'package:jaspr/server.dart';
import 'package:xitodev_website/src/components/layout/main_layout.dart';

// Imports the [App] component.
import 'data/design_tokens.dart' as design_tokens;

// This file is generated automatically by Jaspr, do not remove or edit.
import 'main.server.options.dart';

import 'package:jaspr_riverpod/jaspr_riverpod.dart';

void main() {
  // Initializes the server environment with the generated default options.
  Jaspr.initializeApp(
    options: defaultServerOptions,
  );

  // Starts the app.
  //
  // [Document] renders the root document structure (<html>, <head> and <body>)
  // with the provided parameters and components.
  runApp(
    ProviderScope(
      child: Document(
        title: 'XitoDev - Desarrollador, aprendiz y Dart Lover ❤️',
        styles: [
          // Import Google Fonts for the design system
          css.import(
            'https://fonts.googleapis.com/css2?family=Montserrat:wght@500;600;700&family=Roboto+Flex:wght@400;500;600&family=JetBrains+Mono:wght@400;500&display=swap',
          ),
          // Base styles
          css('html, body').styles(
            width: 100.percent,
            height: 100.percent,
            padding: .zero,
            margin: .zero,
            overflow: .only(x: .hidden),
            color: const Color(design_tokens.AppColors.onBackground),
            fontFamily: const .list([
              FontFamily('Roboto Flex'),
              FontFamily('Roboto'),
              FontFamilies.sansSerif,
            ]),
            backgroundColor: const Color(design_tokens.AppColors.background),
          ),
        ],
        body: const MainLayout(),
      ),
    ),
  );
}
