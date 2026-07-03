import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class Divider extends StatelessComponent {
  const Divider({
    super.key,
    this.color,
    this.orientation = .horizontal,
    this.size,
  });

  final Color? color;
  final DividerOrientation orientation;
  final Unit? size;

  @override
  Component build(BuildContext context) {
    return div(
      styles: Styles(
        width: orientation == .horizontal ? 100.percent : 1.px,
        height: orientation == .vertical ? 100.percent : 1.px,
        border: .all(color: color ?? Colors.gray, width: size ?? 1.px),
      ),
      [],
    );
  }
}

enum DividerOrientation { horizontal, vertical }
