import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:xitodev_website/data/design_tokens.dart';

class SocialLinks extends StatelessComponent {
  const SocialLinks({super.key});

  @override
  Component build(BuildContext context) {
    return div(
      classes: 'social-links',
      [
        _buildSocialButton('GitHub', 'https://github.com/xitodev'),
        _buildSocialButton('YouTube', 'https://youtube.com/@xitodev'),
        _buildSocialButton('Instagram', 'https://instagram.com/xitodev'),
        _buildSocialButton('Tiktok', 'https://tiktok.com/@xitodev.indevs.in'),
      ],
    );
  }

  Component _buildSocialButton(String text, String url) {
    return a(
      href: url,
      target: Target.blank,
      classes: 'social-btn',
      [Component.text(text)],
    );
  }

  @css
  static List<StyleRule> get styles => [
    css('.social-links').styles(
      display: .flex,
      flexDirection: .row,
      gap: Gap(column: 16.px),
    ),
    css('.social-btn').styles(
      padding: .symmetric(horizontal: 16.px, vertical: 8.px),
      border: .none,
      radius: .circular(8.px),
      cursor: .pointer,
      color: Color(AppColors.onSurface),
      fontSize: 14.px,
      fontWeight: .w500,
      textDecoration: TextDecoration.none,
      backgroundColor: Color(AppColors.surfaceContainerHigh),
    ),
    css('.social-btn:hover').styles(
      backgroundColor: Color(AppColors.surfaceContainerHighest),
    ),
  ];
}
