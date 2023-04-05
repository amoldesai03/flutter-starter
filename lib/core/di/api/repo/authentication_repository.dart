import 'package:flutter_demo_structure/core/di/api/api_end_points.dart';
import 'package:flutter_demo_structure/core/di/api/http_client.dart';
import 'package:flutter_demo_structure/core/di/api/response/api_base/api_base.dart';
import 'package:flutter_demo_structure/core/locator.dart';
import 'package:flutter_demo_structure/ui/auth/model/user_profile_response.dart';
import 'package:flutter_demo_structure/ui/home/model/popular_movies.dart';

abstract class IUserAuthRepository {
  Future<SingleResponse> login(Map<String, dynamic> data);
  Future getMoviesList();
  Future getUpcomingMoviesList();
  Future getLatestMoviesList();
}

class UserAuthRepository extends IUserAuthRepository {
  @override
  Future<PopularMovies> getMoviesList() async {
    var map = <String, dynamic>{
      "api_key": "945922ea1069137c480cb7b1b8319693",
      "language": "en-US",
      "page": "1"
    };

    final response =
        await client.get(APIEndPoints.moviePopular, queryParms: map);
    // final finalData = PopularMovies.fromJson(response,
    //     create: PopularMovies.fromJson);
    final finalData = PopularMovies.fromJson(response);

    return finalData;
  }

  @override
  Future<PopularMovies> getUpcomingMoviesList() async {
    var map = <String, dynamic>{
      "api_key": "945922ea1069137c480cb7b1b8319693",
      "language": "en-US",
      "page": "1"
    };

    final response =
        await client.get(APIEndPoints.movieUpcoming, queryParms: map);
    // final finalData = PopularMovies.fromJson(response,
    //     create: PopularMovies.fromJson);
    final finalData = PopularMovies.fromJson(response);

    return finalData;
  }

  @override
  Future<PopularMovies> getLatestMoviesList() async {
    var map = <String, dynamic>{
      "api_key": "945922ea1069137c480cb7b1b8319693",
      "language": "en-US",
      "page": "1"
    };

    final response =
    await client.get(APIEndPoints.movieLatest, queryParms: map);
    // final finalData = PopularMovies.fromJson(response,
    //     create: PopularMovies.fromJson);
    final finalData = PopularMovies.fromJson(response);

    return finalData;
  }

  @override
  Future<SingleResponse> login(Map<String, dynamic> data) async {
    final client = locator<HttpClient>();
    final response = await client.post(
      APIEndPoints.login,
      body: data,
    );
    final finalData =
        SingleResponse<UserData>.fromJson(response, create: UserData.fromJson);
    return finalData;
  }
}

final client = locator<HttpClient>();
final authRepo = locator<UserAuthRepository>();
