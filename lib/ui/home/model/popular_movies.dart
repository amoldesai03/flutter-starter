import 'package:json_annotation/json_annotation.dart';

part 'popular_movies.g.dart';

@JsonSerializable(ignoreUnannotated: true)
class PopularMovies {
  @JsonKey(name: 'page')
  final int? page;
  @JsonKey(name: 'results')
  final List<Result>? results;
  @JsonKey(name: 'total_results')
  final int? totalResults;
  @JsonKey(name: 'total_pages')
  final int? totalPages;

  PopularMovies({this.page, this.results, this.totalResults, this.totalPages});

  factory PopularMovies.fromJson(Map<String, dynamic> json) =>
      _$PopularMoviesFromJson(json);

  Map<String, dynamic> toJson() => _$PopularMoviesToJson(this);
}

@JsonSerializable(ignoreUnannotated: true)
class Result {
  @JsonKey(name: 'poster_path')
  final String? posterPath;
  @JsonKey(name: 'adult')
  final bool? adult;
  @JsonKey(name: 'overview')
  final String? overview;
  @JsonKey(name: 'release_date')
  final String? releaseDate;
  @JsonKey(name: 'genre_ids')
  final List<int>? genreIds;
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'original_title')
  final String? originalTitle;
  @JsonKey(name: 'original_language')
  final String? originalLanguage;
  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;
  @JsonKey(name: 'popularity')
  final double? popularity;
  @JsonKey(name: 'vote_count')
  final int? voteCount;
  @JsonKey(name: 'video')
  final bool? video;
  @JsonKey(name: 'vote_average')
  final double? voteAverage;

  Result(
      {this.posterPath,
      this.adult,
      this.overview,
      this.releaseDate,
      this.genreIds,
      this.id,
      this.originalTitle,
      this.originalLanguage,
      this.title,
      this.backdropPath,
      this.popularity,
      this.voteCount,
      this.video,
      this.voteAverage});

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);

  Map<String, dynamic> toJson() => _$ResultToJson(this);
}
