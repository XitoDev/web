// dart format off
// ignore_for_file: type=lint

// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/server.dart';
import 'package:xitodev_website/constants/theme.dart' as _theme;
import 'package:xitodev_website/src/components/common/app_bar.dart' as _app_bar;
import 'package:xitodev_website/src/components/common/flex.dart' as _flex;
import 'package:xitodev_website/src/components/common/footer.dart' as _footer;
import 'package:xitodev_website/src/components/home/github_repos_list.dart'
    as _github_repos_list;
import 'package:xitodev_website/src/components/home/project_card.dart'
    as _project_card;
import 'package:xitodev_website/src/components/home/social_links.dart'
    as _social_links;
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
  clients: {
    _github_repos_list.GithubReposList:
        ClientTarget<_github_repos_list.GithubReposList>('github_repos_list'),
  },
  styles: () => [
    ..._theme.styles,
    ..._app_bar.Actions.styles,
    ..._app_bar.AppBar.styles,
    ..._app_bar.Leading.styles,
    ..._app_bar.Title.styles,
    ..._flex.Column.styles,
    ..._footer.Footer.styles,
    ..._project_card.ProjectCard.styles,
    ..._social_links.SocialLinks.styles,
    ..._main_layout.MainLayout.styles,
    ..._home_page.HomePage.styles,
  ],
);
