import 'package:dart_mappable/dart_mappable.dart';

part 'github_repository.mapper.dart';

@MappableClass()
class GithubRepository with GithubRepositoryMappable {
  const GithubRepository({
    required this.name,
    this.description,
    required this.htmlUrl,
    this.topics = const [],
  });

  final String name;
  final String? description;
  @MappableField(key: 'html_url')
  final String htmlUrl;
  final List<String> topics;
}
