import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class Card extends StatelessComponent {
  const Card({
    super.key,
    required this.child,
    this.width,
    this.height,
  });

  final Component child;
  final Unit? width;
  final Unit? height;

  @override
  Component build(BuildContext context) {
    return div(
      classes: 'card',
      styles: Styles(width: width, height: height),
      [child],
    );
  }

  @css
  static List<StyleRule> get styles => [
    css('.card', [
      css('&').styles(
        radius: .circular(16.px),
        overflow: .hidden,
        flex: Flex(grow: 0, shrink: 0),
      ),
    ]),
  ];
}
