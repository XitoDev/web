import 'package:jaspr/dom.dart' hide Colors;
import 'package:jaspr/jaspr.dart';
import '../src/components/common/app_bar.dart';
import '../data/design_tokens.dart';

/// Default layout for all pages
/// Provides header, footer, and main content area with consistent styling
class DefaultLayout extends StatelessComponent {
  final List<Component> children;
  final String? title;
  final bool showHeader;
  final bool showFooter;

  const DefaultLayout({
    super.key,
    required this.children,
    this.title,
    this.showHeader = true,
    this.showFooter = true,
  });

  @override
  Component build(BuildContext context) {
    return div(
      classes: 'default-layout',
      attributes: {
        'style':
            '''
          display: flex;
          flex-direction: column;
          min-height: 100vh;
          background-color: ${AppColors.background};
          color: ${AppColors.onBackground};
        ''',
      },
      [
        if (showHeader) const AppBar(),
        div(
          classes: 'layout-content',
          attributes: {
            'style': '''
              flex: 1;
              display: flex;
              flex-direction: column;
              width: 100%;
            ''',
          },
          children,
        ),
        if (showFooter) _buildFooter(),
      ],
    );
  }

  Component _buildFooter() {
    return footer(
      attributes: {
        'style':
            '''
          background-color: ${AppColors.surfaceContainer};
          border-top: 1px solid ${AppColors.outline};
          padding: 48px 64px;
          margin-top: 64px;
        ''',
      },
      [
        div(
          attributes: {
            'style': '''
              max-width: 1280px;
              margin: 0 auto;
              text-align: center;
            ''',
          },
          [
            p(
              attributes: {
                'style':
                    '''
                  font-size: 14px;
                  color: ${AppColors.onSurfaceVariant};
                  margin: 0;
                ''',
              },
              [.text('© 2026 XitoDev. Built with Jaspr and Dart ❤️')],
            ),
          ],
        ),
      ],
    );
  }

  @css
  static List<StyleRule> get styles => [
    css('.default-layout', [
      css('&').styles(
        width: 100.percent,
      ),
    ]),
  ];
}
