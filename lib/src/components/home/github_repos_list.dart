import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_riverpod/jaspr_riverpod.dart';

import 'package:xitodev_website/src/components/home/project_card.dart';
import 'package:xitodev_website/src/providers/github_repos_provider.dart';

@client
class GithubReposList extends StatelessComponent {
  const GithubReposList({super.key});

  @override
  Component build(BuildContext context) {
    final reposAsync = context.watch(githubReposProvider);

    return reposAsync.when(
      data: (repos) {
        return div(
          classes: 'horizontal-list',
          [
            for (final repo in repos)
              ProjectCard(
                title: repo.name,
                description: repo.description ?? 'Sin descripción',
                technologies: repo.topics,
                url: repo.htmlUrl,
                icon: '🚀',
              ),
          ],
        );
      },
      loading: () => div([Component.text('Cargando repositorios...')]),
      error: (error, stackTrace) => div([Component.text('Error al cargar repositorios')]),
    );
  }
}
