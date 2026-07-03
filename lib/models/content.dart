/// Site content models
///
/// These models represent the core data structures for the XitoDev website,
/// such as projects, blog posts, and profile information.

class Project {
  final String id;
  final String title;
  final String description;
  final String? imageUrl;
  final List<String> technologies;
  final String? url;
  final String? githubUrl;

  const Project({
    required this.id,
    required this.title,
    required this.description,
    this.imageUrl,
    required this.technologies,
    this.url,
    this.githubUrl,
  });

  factory Project.fromJson(Map<String, dynamic> json) {
    return Project(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      imageUrl: json['imageUrl'] as String?,
      technologies: List<String>.from(json['technologies'] as List),
      url: json['url'] as String?,
      githubUrl: json['githubUrl'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'description': description,
    'imageUrl': imageUrl,
    'technologies': technologies,
    'url': url,
    'githubUrl': githubUrl,
  };
}

class BlogPost {
  final String id;
  final String title;
  final String slug;
  final String description;
  final String content;
  final DateTime publishedAt;
  final List<String> tags;
  final String? author;
  final String? featuredImage;

  const BlogPost({
    required this.id,
    required this.title,
    required this.slug,
    required this.description,
    required this.content,
    required this.publishedAt,
    required this.tags,
    this.author,
    this.featuredImage,
  });

  factory BlogPost.fromJson(Map<String, dynamic> json) {
    return BlogPost(
      id: json['id'] as String,
      title: json['title'] as String,
      slug: json['slug'] as String,
      description: json['description'] as String,
      content: json['content'] as String,
      publishedAt: DateTime.parse(json['publishedAt'] as String),
      tags: List<String>.from(json['tags'] as List),
      author: json['author'] as String?,
      featuredImage: json['featuredImage'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'slug': slug,
    'description': description,
    'content': content,
    'publishedAt': publishedAt.toIso8601String(),
    'tags': tags,
    'author': author,
    'featuredImage': featuredImage,
  };
}

class SiteConfig {
  final String title;
  final String description;
  final String url;
  final String author;
  final String? logo;
  final Map<String, String> socialLinks;

  const SiteConfig({
    required this.title,
    required this.description,
    required this.url,
    required this.author,
    this.logo,
    required this.socialLinks,
  });

  factory SiteConfig.fromJson(Map<String, dynamic> json) {
    return SiteConfig(
      title: json['title'] as String,
      description: json['description'] as String,
      url: json['url'] as String,
      author: json['author'] as String,
      logo: json['logo'] as String?,
      socialLinks: Map<String, String>.from(
        json['socialLinks'] as Map<String, dynamic>,
      ),
    );
  }

  Map<String, dynamic> toJson() => {
    'title': title,
    'description': description,
    'url': url,
    'author': author,
    'logo': logo,
    'socialLinks': socialLinks,
  };
}
