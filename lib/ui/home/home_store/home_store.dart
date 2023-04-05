import 'package:flutter/material.dart';
import 'package:flutter_demo_structure/core/di/api/app_exceptions.dart';
import 'package:flutter_demo_structure/core/di/api/repo/authentication_repository.dart';
import 'package:flutter_demo_structure/core/di/api/response/api_base/api_base.dart';
import 'package:flutter_demo_structure/core/locator.dart';
import 'package:flutter_demo_structure/ui/home/model/popular_movies.dart';
import 'package:mobx/mobx.dart';

part 'home_store.g.dart';

class HomeStore = _HomeStoreBase with _$HomeStore;

abstract class _HomeStoreBase with Store {

  @observable
  List<Result>? movies;

  @observable
  String? errorMessage;

  @action
  Future getMovieList() async {
    try {
      errorMessage = null;
      var commonStoreFuture =
          ObservableFuture<PopularMovies>(authRepo.getMoviesList());
      var getMovieResponse = await commonStoreFuture;
      if (getMovieResponse.results!.isNotEmpty == true) {
          movies = getMovieResponse.results;
      } else {
        errorMessage = "erroe";
      }

    } on AppException catch (e) {
      errorMessage = e.toString();
    } catch (e, st) {
      debugPrint("onCatch.....");
      debugPrint(e.toString());
      debugPrint(st.toString());
      errorMessage = "False";
    }
  }

  @action
  Future getUpcomingMovieList() async {

    try {
      errorMessage = null;
      var commonStoreFuture =
          ObservableFuture<PopularMovies>(authRepo.getUpcomingMoviesList());
      var getMovieResponse = await commonStoreFuture;
      if (getMovieResponse.results!.isNotEmpty == true) {
        movies = getMovieResponse.results;
      } else {
        errorMessage = "Problem Fetching Movies";
      }

    } on AppException catch (e) {
      errorMessage = e.toString();
    } catch (e, st) {
      debugPrint("onCatch.....");
      debugPrint(e.toString());
      debugPrint(st.toString());
      errorMessage = "False";
    }
  }

  @action
  Future getLatestMovieList() async {

    try {
      errorMessage = null;
      var commonStoreFuture =
      ObservableFuture<PopularMovies>(authRepo.getLatestMoviesList());
      var getMovieResponse = await commonStoreFuture;
      if (getMovieResponse.results!.isNotEmpty == true) {
        movies = getMovieResponse.results;
      } else {
        errorMessage = "Problem Fetching Movies";
      }

    } on AppException catch (e) {
      errorMessage = e.toString();
    } catch (e, st) {
      debugPrint("onCatch.....");
      debugPrint(e.toString());
      debugPrint(st.toString());
      errorMessage = "False";
    }
  }
}

final homeStore = locator<HomeStore>();
