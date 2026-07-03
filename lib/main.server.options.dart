// dart format off
// ignore_for_file: type=lint

// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/server.dart';
import 'package:xitodev_website/constants/theme.dart' as _theme;
import 'package:xitodev_website/src/components/common/app_bar.dart' as _app_bar;
import 'package:xitodev_website/src/components/common/card.dart' as _card;
import 'package:xitodev_website/src/components/common/flex.dart' as _flex;
import 'package:xitodev_website/src/components/common/footer.dart' as _footer;
import 'package:xitodev_website/src/components/layout/main_layout.dart'
    as _main_layout;
import 'package:xitodev_website/src/pages/home_page.dart' as _home_page;

/// Default [ServerOptions] for use with your Jaspr project.
///
/// Use this to initialize Jaspr **before** calling [runApp].
///
/// Example:
/// ```dart
/// import 'main.server.options.dart';
///
/// void main() {
///   Jaspr.initializeApp(
///     options: defaultServerOptions,
///   );
///
///   runApp(...);
/// }
/// ```
ServerOptions get defaultServerOptions => ServerOptions(
  clientId: 'main.client.dart.js',
  styles: () => [
    ..._theme.styles,
    ..._app_bar.Actions.styles,
    ..._app_bar.AppBar.styles,
    ..._app_bar.Leading.styles,
    ..._app_bar.Title.styles,
    ..._card.Card.styles,
    ..._flex.Column.styles,
    ..._footer.Footer.styles,
    ..._main_layout.MainLayout.styles,
    ..._home_page.HomePage.styles,
  ],
);
