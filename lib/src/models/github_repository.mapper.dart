// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'github_repository.dart';

class GithubRepositoryMapper extends ClassMapperBase<GithubRepository> {
  GithubRepositoryMapper._();

  static GithubRepositoryMapper? _instance;
  static GithubRepositoryMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GithubRepositoryMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'GithubRepository';

  static String _$name(GithubRepository v) => v.name;
  static const Field<GithubRepository, String> _f$name = Field('name', _$name);
  static String? _$description(GithubRepository v) => v.description;
  static const Field<GithubRepository, String> _f$description = Field(
    'description',
    _$description,
    opt: true,
  );
  static String _$htmlUrl(GithubRepository v) => v.htmlUrl;
  static const Field<GithubRepository, String> _f$htmlUrl = Field(
    'htmlUrl',
    _$htmlUrl,
    key: r'html_url',
  );
  static List<String> _$topics(GithubRepository v) => v.topics;
  static const Field<GithubRepository, List<String>> _f$topics = Field(
    'topics',
    _$topics,
    opt: true,
    def: const [],
  );

  @override
  final MappableFields<GithubRepository> fields = const {
    #name: _f$name,
    #description: _f$description,
    #htmlUrl: _f$htmlUrl,
    #topics: _f$topics,
  };

  static GithubRepository _instantiate(DecodingData data) {
    return GithubRepository(
      name: data.dec(_f$name),
      description: data.dec(_f$description),
      htmlUrl: data.dec(_f$htmlUrl),
      topics: data.dec(_f$topics),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static GithubRepository fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GithubRepository>(map);
  }

  static GithubRepository fromJson(String json) {
    return ensureInitialized().decodeJson<GithubRepository>(json);
  }
}

mixin GithubRepositoryMappable {
  String toJson() {
    return GithubRepositoryMapper.ensureInitialized()
        .encodeJson<GithubRepository>(this as GithubRepository);
  }

  Map<String, dynamic> toMap() {
    return GithubRepositoryMapper.ensureInitialized()
        .encodeMap<GithubRepository>(this as GithubRepository);
  }

  GithubRepositoryCopyWith<GithubRepository, GithubRepository, GithubRepository>
  get copyWith =>
      _GithubRepositoryCopyWithImpl<GithubRepository, GithubRepository>(
        this as GithubRepository,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return GithubRepositoryMapper.ensureInitialized().stringifyValue(
      this as GithubRepository,
    );
  }

  @override
  bool operator ==(Object other) {
    return GithubRepositoryMapper.ensureInitialized().equalsValue(
      this as GithubRepository,
      other,
    );
  }

  @override
  int get hashCode {
    return GithubRepositoryMapper.ensureInitialized().hashValue(
      this as GithubRepository,
    );
  }
}

extension GithubRepositoryValueCopy<$R, $Out>
    on ObjectCopyWith<$R, GithubRepository, $Out> {
  GithubRepositoryCopyWith<$R, GithubRepository, $Out>
  get $asGithubRepository =>
      $base.as((v, t, t2) => _GithubRepositoryCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class GithubRepositoryCopyWith<$R, $In extends GithubRepository, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get topics;
  $R call({
    String? name,
    String? description,
    String? htmlUrl,
    List<String>? topics,
  });
  GithubRepositoryCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _GithubRepositoryCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, GithubRepository, $Out>
    implements GithubRepositoryCopyWith<$R, GithubRepository, $Out> {
  _GithubRepositoryCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<GithubRepository> $mapper =
      GithubRepositoryMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get topics =>
      ListCopyWith(
        $value.topics,
        (v, t) => ObjectCopyWith(v, $identity, t),
        (v) => call(topics: v),
      );
  @override
  $R call({
    String? name,
    Object? description = $none,
    String? htmlUrl,
    List<String>? topics,
  }) => $apply(
    FieldCopyWithData({
      if (name != null) #name: name,
      if (description != $none) #description: description,
      if (htmlUrl != null) #htmlUrl: htmlUrl,
      if (topics != null) #topics: topics,
    }),
  );
  @override
  GithubRepository $make(CopyWithData data) => GithubRepository(
    name: data.get(#name, or: $value.name),
    description: data.get(#description, or: $value.description),
    htmlUrl: data.get(#htmlUrl, or: $value.htmlUrl),
    topics: data.get(#topics, or: $value.topics),
  );

  @override
  GithubRepositoryCopyWith<$R2, GithubRepository, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _GithubRepositoryCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

