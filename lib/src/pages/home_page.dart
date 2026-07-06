import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import 'package:xitodev_website/src/components/home/social_links.dart';
import 'package:xitodev_website/data/design_tokens.dart';

import 'package:xitodev_website/src/constants/home_constants.dart';
import 'package:xitodev_website/src/components/home/github_repos_list.dart';

class HomePage extends StatelessComponent {
  const HomePage({super.key});

  @override
  Component build(BuildContext context) {
    return div(classes: 'home-body', [
      section(classes: 'hero-section', [
        h1([Component.text(HomeConstants.mainTitle)]),
        p(classes: 'hero-desc', [Component.text(HomeConstants.mainDescription)]),
        const SocialLinks(),
      ]),
      // section(classes: 'videos-section', [
      //   span(classes: 'section-subtitle', [Component.text('Mis últimos intentos de ser youtuber'.toUpperCase())]),
      //   div(
      //     classes: 'section-header',
      //     [
      //       h2([Component.text('Mis últimos videos')]),
      //       button(classes: 'text-btn', [Component.text('[Ver más]')]),
      //     ],
      //   ),
      //   div(
      //     classes: 'horizontal-list',
      //     [
      //       ...List.generate(3, (index) {
      //         return const VideoCard(
      //           title: 'Un dia normal en la vida de un desarrollador',
      //           description:
      //               'Un dia normal en la vida de un desarrollador Un dia normal en la vida de un desarrollador Un dia normal en la vida de un desarrollador',
      //           videoId: 'N8sBC_eK7Z4?si=3E98VxVZ-fwN0Mh3',
      //         );
      //       }),
      //     ],
      //   ),
      // ]),
      section(classes: 'projects-section', [
        div(
          classes: 'section-header',
          [
            h2([Component.text('Herramientas y Experimentos')]),
            button(classes: 'text-btn', [Component.text('[Ver más]')]),
          ],
        ),
        const GithubReposList(),
      ]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css('.home-body', [
      css('&').styles(
        display: .flex,
        padding: .symmetric(vertical: 48.px),
        margin: .symmetric(horizontal: 24.px),
        flexDirection: .column,
        gap: Gap(column: 64.px),
      ),
      css('.hero-section').styles(
        display: .flex,
        width: 100.percent,
        maxWidth: 800.px,
        flexDirection: .column,
        gap: Gap(column: 24.px),
      ),
      css('.hero-desc').styles(
        margin: .zero,
        color: Color(AppColors.onSurfaceVariant),
        fontSize: 18.px,
        lineHeight: 1.6.em,
      ),
      css('.videos-section').styles(
        display: .flex,
        flexDirection: .column,
        gap: Gap(column: 24.px),
      ),
      css('.projects-section').styles(
        display: .flex,
        flexDirection: .column,
        gap: Gap(column: 24.px),
      ),
      css('.section-subtitle').styles(
        color: Color(AppColors.primary),
        fontSize: 12.px,
        fontWeight: .w600,
        letterSpacing: 1.2.px,
      ),
      css('h1').styles(
        margin: .zero,
        color: Color(AppColors.onSurface),
        fontSize: 48.px,
        fontWeight: .w700,
      ),
      css('h2').styles(
        margin: .zero,
        color: Color(AppColors.onSurface),
        fontSize: 32.px,
        fontWeight: .w600,
      ),
      css('.text-btn').styles(
        border: .none,
        cursor: .pointer,
        color: Color(AppColors.primary),
        fontSize: 16.px,
        fontWeight: .w600,
        backgroundColor: Color('transparent'),
      ),
      css('.text-btn:hover').styles(
        color: Color(AppColors.primaryContainer),
      ),
      css('.section-header').styles(
        display: .flex,
        flexDirection: .row,
        justifyContent: .spaceBetween,
        alignItems: .center,
      ),
      css('.horizontal-list').styles(
        display: .flex,
        width: 100.percent,
        flexDirection: .row,
        gap: Gap(column: 16.px),
      ),
    ]),
  ];
}
