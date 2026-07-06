import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import 'package:xitodev_website/data/design_tokens.dart';

class ProjectCard extends StatelessComponent {
  const ProjectCard({
    super.key,
    required this.title,
    required this.description,
    required this.technologies,
    required this.url,
    this.icon,
  });

  final String title;
  final String description;
  final List<String> technologies;
  final String url;
  final String? icon;

  @override
  Component build(BuildContext context) {
    return div(
      classes: 'project-card-container',
      [
        div(classes: 'project-card', [
          div(classes: 'project-card-header', [
            button(classes: 'project-icon', [Component.text(icon ?? 'Icon')]),
            h3([Component.text(title)]),
          ]),
          p(classes: 'project-desc', [Component.text(description)]),
          hr(classes: 'project-divider'),
          div(
            classes: 'project-actions',
            [
              span(classes: 'tech-stack', [Component.text(technologies.join(' - '))]),
              a(
                href: url,
                target: Target.blank,
                classes: 'action-btn',
                [Component.text('Ver más')],
              ),
            ],
          ),
        ]),
      ],
    );
  }

  @css
  static List<StyleRule> get styles => [
    css('.project-card-container').styles(
      width: 300.px,
      radius: .circular(16.px),
      overflow: .hidden,
      flex: Flex(grow: 0, shrink: 0),
    ),
    css('.project-card', [
      css('&').styles(
        display: .flex,
        height: 100.percent,
        padding: .all(24.px),
        boxSizing: .borderBox,
        flexDirection: .column,
        gap: Gap(column: 16.px),
        backgroundColor: Color(AppColors.surfaceContainerHigh),
      ),
      css('.project-card-header').styles(
        display: .flex,
        flexDirection: .column,
        alignItems: AlignItems.start,
        gap: Gap(column: 12.px),
      ),
      css('h3').styles(
        margin: .zero,
        color: Color(AppColors.onSurface),
        fontSize: 20.px,
        fontWeight: .w600,
      ),
      css('.project-desc').styles(
        margin: .zero,
        color: Color(AppColors.onSurfaceVariant),
        fontSize: 14.px,
        lineHeight: 1.5.em,
      ),
      css('.project-icon').styles(
        padding: .all(8.px),
        border: .none,
        radius: .circular(8.px),
        color: Color(AppColors.onSurface),
        backgroundColor: Color(AppColors.surfaceContainerHighest),
      ),
      css('.tech-stack').styles(
        color: Color(AppColors.onSurfaceVariant),
        fontSize: 12.px,
      ),
      css('.action-btn').styles(
        padding: .symmetric(horizontal: 16.px, vertical: 8.px),
        border: .none,
        radius: .circular(8.px),
        cursor: .pointer,
        color: Color(AppColors.onPrimaryContainer),
        backgroundColor: Color(AppColors.primaryContainer),
      ),
      css('.project-actions').styles(
        display: .flex,
        flexDirection: .row,
        justifyContent: .spaceBetween,
        alignItems: .center,
      ),
      css('.project-divider').styles(
        width: 250.px,
        height: 1.px,
        margin: .symmetric(vertical: 16.px),
        border: .none,
        backgroundColor: Color(AppColors.outlineVariant),
      ),
    ]),
  ];
}
