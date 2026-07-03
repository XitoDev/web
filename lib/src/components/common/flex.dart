// ignore_for_file: camel_case_types
import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class Row extends StatelessComponent {
  const Row({
    super.key,
    required this.children,
    this.justifyContent,
    this.spacing,
    this.mainAxisSize = .auto,
    this.border,
    this.margin,
    this.padding,
    this.overflow = .auto,
  });

  final List<Component> children;
  final JustifyContent? justifyContent;
  final Unit? spacing;
  final Unit? mainAxisSize;
  final Border? border;
  final Margin? margin;
  final Margin? padding;
  final OverflowValue? overflow;

  @override
  Component build(BuildContext context) {
    return div(
      classes: 'row',
      children,
      styles: Styles(
        display: .flex,
        width: mainAxisSize,
        padding: padding,
        margin: margin,
        border: border,
        overflow: .only(x: overflow),
        justifyContent: justifyContent,
        gap: Gap(column: spacing),
      ),
    );
  }
}

class Column extends StatelessComponent {
  final List<Component> children;
  const Column({super.key, required this.children});

  @override
  Component build(BuildContext context) {
    return div(classes: 'column', children);
  }

  @css
  static List<StyleRule> get styles => [
    css('.column', [
      css('&').styles(
        display: .flex,
        width: 100.percent,
        flexDirection: .column,
        flexWrap: .wrap,
        gap: Gap.row(16.px),
      ),
    ]),
  ];
}
