import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';
import 'package:xitodev_website/src/components/common/app_bar.dart';
import 'package:xitodev_website/src/components/common/footer.dart';
import 'package:xitodev_website/src/pages/home_page.dart';
// import 'package:xitodev_website/src/pages/projects_page.dart';
// import 'package:xitodev_website/src/pages/videos_page.dart';

class MainLayout extends StatelessComponent {
  const MainLayout({super.key});

  @override
  Component build(BuildContext context) {
    return div(
      classes: 'main',
      [
        AppBar(),
        Router(
          routes: [
            Route(
              path: '/',
              title: 'XitoDev - Desarrollador, aprendiz y Dart Lover ❤️',
              builder: (context, state) => const HomePage(),
            ),
            // Route(
            //   path: '/videos',
            //   title: 'Videos',
            //   builder: (context, state) => const VideosPage(),
            // ),
            // Route(
            //   path: '/projects',
            //   title: 'Proyectos',
            //   builder: (context, state) => const ProjectsPage(),
            // ),
          ],
        ),
        Footer(),
      ],
    );
  }

  @css
  static List<StyleRule> get styles => [
    css('.main', [
      css('&').styles(
        display: .flex,
        // width: 100.percent,
        minHeight: 100.vh,
        flexDirection: .column,
      ),
      // css('& > :first-child').styles(
      //   margin: .only(bottom: 4.rem),
      // ),
    ]),
  ];
}
