import 'package:jaspr_riverpod/jaspr_riverpod.dart';
import '../models/github_repository.dart';
import '../repositories/github_api_repository.dart';

final githubApiRepositoryProvider = Provider<GithubApiRepository>((ref) {
  return GithubApiRepository();
});

final githubReposProvider = AsyncNotifierProvider<GithubReposNotifier, List<GithubRepository>>(GithubReposNotifier.new);

class GithubReposNotifier extends AsyncNotifier<List<GithubRepository>> {
  @override
  Future<List<GithubRepository>> build() async {
    return _fetchRepositories();
  }

  Future<List<GithubRepository>> _fetchRepositories() async {
    final repository = ref.read(githubApiRepositoryProvider);
    return repository.fetchPublicRepositories();
  }
}
