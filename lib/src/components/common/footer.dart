import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:xitodev_website/data/design_tokens.dart';
import 'package:xitodev_website/src/components/common/flex.dart';

class Footer extends StatelessComponent {
  const Footer();

  @override
  Component build(BuildContext context) {
    return footer(
      [
        Row(
          justifyContent: .spaceBetween,
          mainAxisSize: 100.percent,
          border: .symmetric(vertical: .solid(color: Color(AppColors.primary))),
          margin: .symmetric(vertical: 24.px),
          padding: .symmetric(horizontal: 24.px, vertical: 24.px),
          children: [
            h3([.text('XitoDev ')]),
            Row(
              spacing: 8.px,
              children: [
                button([
                  .text('GitHub'),
                ]),
                button([
                  .text('YouTube'),
                ]),
                button([
                  .text('Instagram'),
                ]),
                button([
                  .text('Tiktok'),
                ]),
              ],
            ),
            a(
              href: 'https://jaspr.site',
              target: .blank,
              [JasprBadge.dark()],
            ),
          ],
        ),
        .text('© 2026 XitoDev: Desarrollado con Dart.'),
      ],
    );
  }

  @css
  static List<StyleRule> get styles => [
    css('footer').styles(
      display: .flex,
      flexDirection: .column,
      alignItems: .center,
    ),
  ];
}
