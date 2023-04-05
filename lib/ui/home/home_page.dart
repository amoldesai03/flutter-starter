import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_demo_structure/generated/l10n.dart';
import 'package:flutter_demo_structure/res.dart';
import 'package:flutter_demo_structure/ui/home/movie_list_page.dart';
import 'package:flutter_demo_structure/values/export.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  /// Controller to handle PageView and also handles initial page
  final _pageController = PageController(initialPage: 0);
  late ValueNotifier<String> appBarTitle;

  int maxCount = 3;

  /// widget list
  final List<Widget> bottomBarPages = [
    const MoviesListPage(
      type: MovieType.upcoming,
    ),
    const MoviesListPage(
      type: MovieType.popular,
    ),
    const MoviesListPage(
      type: MovieType.latest,
    ),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    appBarTitle = ValueNotifier(S.current.upcomingMovies);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: AppColor.bgColor,
      appBar: AppBar(
        elevation: 1,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        backgroundColor: AppColor.white.withOpacity(0.08),
        centerTitle: true,
        title: ValueListenableBuilder(
          valueListenable: appBarTitle,
          builder: (context, String value, child) => Text(
            value,
            style: textBold.copyWith(
              fontSize: 18.sp,
              color: AppColor.white,
            ),
          ),
        ),
      ),
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(
            bottomBarPages.length, (index) => bottomBarPages[index]),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: AppColor.bgColor,
        buttonBackgroundColor: AppColor.transparent,
        color: AppColor.white.withOpacity(0.12),
        height: 64.h,
        items:  const <Widget>[
          ImageIcon(AssetImage(Res.icons8_upcoming_64),color: AppColor.orange,),
          ImageIcon(AssetImage(Res.icons8_popular_100),color: AppColor.orange,),
          ImageIcon(AssetImage(Res.icons8_top_rated_64),color: AppColor.orange,),
        ],
        onTap: (index) {
          switch (index) {
            case 0:
              {
                appBarTitle.value = S.current.upcomingMovies;
                break;
              }
            case 1:
              {
                appBarTitle.value = S.current.popularMovies;
                break;
              }
            case 2:
              {
                appBarTitle.value = S.current.latestMovies;
                break;
              }
          }
          _pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeIn,
          );
        },
      ),
    );
  }
}
