// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeStore on _HomeStoreBase, Store {
  late final _$moviesAtom =
      Atom(name: '_HomeStoreBase.movies', context: context);

  @override
  List<Result>? get movies {
    _$moviesAtom.reportRead();
    return super.movies;
  }

  @override
  set movies(List<Result>? value) {
    _$moviesAtom.reportWrite(value, super.movies, () {
      super.movies = value;
    });
  }

  late final _$errorMessageAtom =
      Atom(name: '_HomeStoreBase.errorMessage', context: context);

  @override
  String? get errorMessage {
    _$errorMessageAtom.reportRead();
    return super.errorMessage;
  }

  @override
  set errorMessage(String? value) {
    _$errorMessageAtom.reportWrite(value, super.errorMessage, () {
      super.errorMessage = value;
    });
  }

  late final _$getMovieListAsyncAction =
      AsyncAction('_HomeStoreBase.getMovieList', context: context);

  @override
  Future<dynamic> getMovieList() {
    return _$getMovieListAsyncAction.run(() => super.getMovieList());
  }

  late final _$getUpcomingMovieListAsyncAction =
      AsyncAction('_HomeStoreBase.getUpcomingMovieList', context: context);

  @override
  Future<dynamic> getUpcomingMovieList() {
    return _$getUpcomingMovieListAsyncAction
        .run(() => super.getUpcomingMovieList());
  }

  late final _$getLatestMovieListAsyncAction =
      AsyncAction('_HomeStoreBase.getLatestMovieList', context: context);

  @override
  Future<dynamic> getLatestMovieList() {
    return _$getLatestMovieListAsyncAction
        .run(() => super.getLatestMovieList());
  }

  @override
  String toString() {
    return '''
movies: ${movies},
errorMessage: ${errorMessage}
    ''';
  }
}
