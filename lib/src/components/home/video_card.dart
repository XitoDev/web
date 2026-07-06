import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:xitodev_website/data/design_tokens.dart';

class VideoCard extends StatelessComponent {
  const VideoCard({
    super.key,
    required this.title,
    required this.description,
    required this.videoId,
  });

  final String title;
  final String description;
  final String videoId;

  @override
  Component build(BuildContext context) {
    return div(
      classes: 'video-card',
      [
        iframe(
          src: 'https://www.youtube.com/embed/${videoId.split("?").first}',
          attributes: {
            'allowfullscreen': 'true',
            'allow': 'accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture',
            'frameborder': '0',
          },
          [],
        ),
        div(classes: 'video-info', [
          h3([Component.text(title)]),
          p([Component.text(description)]),
        ]),
      ],
    );
  }

  @css
  static List<StyleRule> get styles => [
    css('.video-card').styles(
      display: .flex,
      flexDirection: .column,
      width: 300.px,
      radius: .circular(16.px),
      overflow: .hidden,
      flex: Flex(grow: 0, shrink: 0),
      backgroundColor: Color(AppColors.surfaceContainerHigh),
    ),
    css('.video-card iframe').styles(
      width: 100.percent,
      height: 170.px,
      border: .none,
    ),
    css('.video-info').styles(
      padding: .all(16.px),
      display: .flex,
      flexDirection: .column,
      gap: Gap(column: 8.px),
    ),
    css('.video-info h3').styles(
      margin: .zero,
      color: Color(AppColors.onSurface),
      fontSize: 18.px,
      fontWeight: .w600,
    ),
    css('.video-info p').styles(
      margin: .zero,
      color: Color(AppColors.onSurfaceVariant),
      fontSize: 14.px,
      lineHeight: 1.5.em,
    ),
  ];
}
