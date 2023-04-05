import 'package:flutter/material.dart';
import 'package:flutter_demo_structure/core/locator.dart';
import 'package:flutter_demo_structure/generated/l10n.dart';
import 'package:flutter_demo_structure/ui/home/home_store/home_store.dart';
import 'package:flutter_demo_structure/ui/home/model/popular_movies.dart';
import 'package:flutter_demo_structure/util/api_utils.dart';
import 'package:flutter_demo_structure/values/export.dart';
import 'package:flutter_demo_structure/widget/loading.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobx/mobx.dart';

enum MovieType { upcoming, popular, latest }

class MoviesListPage extends StatefulWidget {
  final MovieType type;

  const MoviesListPage({super.key, this.type = MovieType.upcoming});

  @override
  State<MoviesListPage> createState() => _MoviesListPageState();
}

class _MoviesListPageState extends State<MoviesListPage>
    with TickerProviderStateMixin {
  ValueNotifier showLoading = ValueNotifier<bool>(true);
  List<ReactionDisposer>? _disposers;
  List<Result> movies = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    addDisposer();
    Future.delayed(
      0.seconds,
      () {
        switch (widget.type) {
          case MovieType.upcoming:
            homeStore.getUpcomingMovieList();
            break;
          case MovieType.popular:
            homeStore.getMovieList();
            break;
          case MovieType.latest:
            homeStore.getLatestMovieList();
            break;
        }
      },
    );
  }

  addDisposer() {
    debugPrint("Add reaction");
    _disposers = [
      reaction((_) => homeStore.movies, (response) async {
        showLoading.value = false;
        movies = response ?? [];
      }),
      reaction((_) => homeStore.errorMessage, (String? errorMessage) {
        if (errorMessage != null) {
          showLoading.value = false;
          "Error";
        }
      }),
    ];
    debugPrint(_disposers!.length.toString());
  }

  removeDisposer() {
    _disposers?.forEach((element) {
      element.reaction.dispose();
    });
  }

  @override
  void dispose() {
    super.dispose();
    removeDisposer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: AppColor.bgColor,
      body: _getBody(),
    );
  }

  Widget _getBody() {
    return ValueListenableBuilder(
      valueListenable: showLoading,
      builder: (BuildContext context, value, Widget? child) {
        return  Loading(
            backgroundTransparent: true,
            status: value,
            child: _getMovieList(context),
        );
      },
    );
  }

  Widget _getMovieList(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10.h,
        crossAxisSpacing: 10.w,
        childAspectRatio: MediaQuery.of(context).size.width /
            (MediaQuery.of(context).size.height / 1.2),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
        vertical: 20.h,
      ),

      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return _getMovieItem(movies[index], index);
      },
      itemCount: movies.length,
    );
  }

  Widget _getMovieItem(Result movie, int index) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          clipBehavior: Clip.none,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(
                12.r,
              ),
              child: Image.network(
                height: 200.h,
                fit: BoxFit.fitHeight,
                "$POSTER_IMAGE_PATH_PREFIX${movie.backdropPath.toString()}",
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(
                8.0,
              ).r,
              child: Text(
                textAlign: TextAlign.center,
                movie.title.toString(),
                style: textBold.copyWith(
                  color: AppColor.white,
                ),
                maxLines: 2,
              ),
            ),
          ],
        ),
        10.verticalSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              S.current.ratings,
              style: textBold.copyWith(
                color: AppColor.orange,
                fontSize: 14.sp,
              ),
            ),
            Text(
              movie.voteAverage.toString(),
              style: textBold.copyWith(
                color: AppColor.orange,
              ),
            ),
            Center(
              child: Icon(
                Icons.star,
                color: AppColor.orange,
                size: 16.r,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
