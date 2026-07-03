import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:xitodev_website/src/components/common/card.dart';
import 'package:xitodev_website/src/components/common/divider.dart';
import 'package:xitodev_website/src/components/common/flex.dart';
import 'package:xitodev_website/src/constants/home_constants.dart';

class HomePage extends StatelessComponent {
  const HomePage({super.key});

  @override
  Component build(BuildContext context) {
    return div(classes: 'home-body', [
      section(classes: 'intro', [
        h1([.text(HomeConstants.mainTitle)]),
        p([.text(HomeConstants.mainDescription)]),
        Row(
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
      ]),
      section([
        .text('Mis últimos intentos de ser youtuber'.toUpperCase()),
        Row(
          justifyContent: .spaceBetween,
          children: [
            h2([.text('Mis últimos videos')]),
            button([.text('[Ver más]')]),
          ],
        ),
        Row(
          spacing: 16.px,
          mainAxisSize: 100.percent,
          children: List.generate(3, (index) {
            return Card(
              width: 300.px,
              child: Column(
                children: [
                  iframe(
                    src: 'https://www.youtube.com/embed/N8sBC_eK7Z4?si=3E98VxVZ-fwN0Mh3',
                    width: 300,
                    allow: 'accelerometer',
                    name: 'YouTube video player',
                    [],
                  ),
                  h3([.text('Un dia normal en la vida de un desarrollador')]),
                  p([
                    .text(
                      'Un dia normal en la vida de un desarrollador Un dia normal en la vida de un desarrollador Un dia normal en la vida de un desarrollador',
                    ),
                  ]),
                ],
              ),
            );
          }),
        ),
      ]),
      section([
        Row(
          justifyContent: .spaceBetween,
          children: [
            h2([.text('Herramientas y Experimentos')]),
            button([.text('[Ver más]')]),
          ],
        ),
        Row(
          children: [
            Card(
              width: 300.px,
              child: Column(
                children: [
                  button([.text('Icon')]),
                  h3([.text('XitoDev Website')]),
                  p([
                    .text(
                      'Un dia normal en la vida de un desarrollador Un dia '
                      'normal en la vida de un desarrollador Un dia normal en '
                      'la vida de un desarrollador',
                    ),
                  ]),
                  Divider(size: 250.px),
                  Row(
                    children: [
                      .text('Jaspr - Dart'),
                      button([.text('icon')]),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css('.home-body', [
      css('&').styles(
        display: .flex,
        margin: .symmetric(horizontal: 24.px),
        flexDirection: .column,
      ),
      css('.intro').styles(width: 50.percent),
    ]),
  ];
}
