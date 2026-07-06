import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/github_repository.dart';

class GithubApiRepository {
  Future<List<GithubRepository>> fetchPublicRepositories() async {
    final response = await http.get(Uri.parse('https://api.github.com/orgs/XitoDev/repos'));
    
    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      return data.map((json) => GithubRepositoryMapper.fromMap(json as Map<String, dynamic>)).toList();
    } else {
      throw Exception('Failed to load repositories: ${response.statusCode}');
    }
  }
}
