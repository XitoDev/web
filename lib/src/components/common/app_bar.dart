import 'package:jaspr/dom.dart' hide Spacing;
import 'package:jaspr/jaspr.dart';
import 'package:xitodev_website/data/design_tokens.dart';

class AppBar extends StatelessComponent {
  const AppBar({super.key});

  @override
  Component build(BuildContext context) {
    return header([
      nav([
        Leading(),
        Title(),
        Actions(),
      ]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css('header', [
      css('&').styles(
        display: .flex,
        // position: Position.fixed(top: 0.px, left: 0.px, right: 0.px),
        // zIndex: const ZIndex(1000),
        width: 100.percent,
        height: 4.rem,
        // margin: .only(bottom: 4.rem),
        alignItems: .center,
      ),
      css('nav', [
        css('&').styles(
          display: .flex,
          width: 100.percent,
          height: 100.percent,
          padding: .symmetric(horizontal: 4.px),
          justifyContent: .spaceBetween,
          alignItems: .center,
        ),
        css('.leading').styles(
          display: .flex,
          justifyContent: .start,
          flex: Flex(grow: 1, basis: 0.px),
        ),
        css('.title').styles(
          display: .flex,
          justifyContent: .center,
          flex: Flex(grow: 1, basis: 0.px),
        ),
        css('.actions').styles(
          display: .flex,
          justifyContent: .end,
          flex: Flex(grow: 1, basis: 0.px),
        ),
      ]),
    ]),
    css.media(MediaQuery.screen(minWidth: 768.px), [
      css('header nav').styles(
        padding: .symmetric(horizontal: 4.px),
      ),
    ]),
  ];
}

class Leading extends StatelessComponent {
  @override
  Component build(BuildContext context) {
    return a(
      href: '/',
      classes: 'leading',
      [.text('XitoDev')],
    );
  }

  @css
  static List<StyleRule> get styles => [
    css('a').styles(
      color: Color(AppColors.primary),
      fontSize: 16.px,
      textDecoration: .none,
    ),
  ];
}

class Title extends StatelessComponent {
  @override
  Component build(BuildContext context) {
    var activePath = context.url;
    return div(classes: 'title', [
      for (var route in [
        (label: 'Proyectos', path: '/projects'),
        (label: 'Videos', path: '/videos'),
      ])
        a(
          href: route.path,
          classes: activePath == route.path ? 'active' : '',
          [.text(route.label)],
        ),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css('.title', [
      css('&').styles(
        display: .flex,
        justifyContent: .center,
        alignItems: .center,
        gap: Gap.all(16.px),
      ),
      css('a', [
        css('&').styles(
          padding: .symmetric(horizontal: 4.px),
          fontSize: 12.px,
          textDecoration: .none,
        ),
        css('&.active').styles(
          border: Border.only(bottom: .solid(color: Color(AppColors.primary))),
          color: Color(AppColors.primary),
          fontWeight: .bold,
        ),
      ]),
    ]),
  ];
}

class Actions extends StatelessComponent {
  @override
  Component build(BuildContext context) {
    return div(classes: 'actions', []);
  }

  @css
  static List<StyleRule> get styles => [
    css('.actions', [
      css('&').styles(
        display: .flex,
        justifyContent: .end,
        alignItems: .center,
      ),
      css('a').styles(
        padding: .symmetric(horizontal: 4.px),
        color: Color(AppColors.secondary),
        fontSize: 12.px,
      ),
    ]),
  ];
}
