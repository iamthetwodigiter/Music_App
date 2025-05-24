import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:music_app/core/theme/app_theme.dart';
import 'package:music_app/features/home/view/pages/home_page.dart';
import 'package:music_app/features/secondary/view/pages/secondary_pages.dart';
import 'package:music_app/features/home/view/pages/services_page.dart';

class AppRouter {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _shellNavigatorKey = GlobalKey<NavigatorState>();

  static const String home = '/';
  static const String news = '/news';
  static const String trackbox = '/trackbox';
  static const String projects = '/projects';

  static const String musicProduction = '/music-production';
  static const String mixingMastering = '/mixing-mastering';
  static const String lyricsWriting = '/lyrics-writing';
  static const String vocals = '/vocals';

  static final GoRouter router = GoRouter(
    initialLocation: home,
    navigatorKey: _rootNavigatorKey,
    debugLogDiagnostics: true,
    routes: [
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) {
          return ScaffoldWithNavBar(child: child);
        },
        routes: [
          GoRoute(
            path: home,
            builder: (context, state) => const HomePage(),
          ),
          GoRoute(
            path: news,
            builder: (context, state) => const SecondaryPages(
              leadingIcon: 'assets/images/bottom_icons/news.png',
              title: 'News',
            ),
          ),
          GoRoute(
            path: trackbox,
            builder: (context, state) => const SecondaryPages(
              leadingIcon: 'assets/images/bottom_icons/trackbox.png',
              title: 'TrackBox',
            ),
          ),
          GoRoute(
            path: projects,
            builder: (context, state) => const SecondaryPages(
              leadingIcon: 'assets/images/bottom_icons/projects.png',
              title: 'Projects',
            ),
          ),
        ],
      ),
      GoRoute(
        path: musicProduction,
        builder: (context, state) => const ServicesPage(
          leadingIcon: 'assets/images/tiles_icons/tile_1.png',
          title: 'Music Production',
        ),
      ),
      GoRoute(
        path: mixingMastering,
        builder: (context, state) => const ServicesPage(
          leadingIcon: 'assets/images/tiles_icons/tile_2.png',
          title: 'Mixing & Mastering',
        ),
      ),
      GoRoute(
        path: lyricsWriting,
        builder: (context, state) => const ServicesPage(
          leadingIcon: 'assets/images/tiles_icons/tile_3.png',
          title: 'Lyrics Writing',
        ),
      ),
      GoRoute(
        path: vocals,
        builder: (context, state) => const ServicesPage(
          leadingIcon: 'assets/images/tiles_icons/tile_4.png',
          title: 'Vocals',
        ),
      ),
    ],
  );
}

class ScaffoldWithNavBar extends StatefulWidget {
  final Widget child;

  const ScaffoldWithNavBar({super.key, required this.child});

  @override
  State<ScaffoldWithNavBar> createState() => _ScaffoldWithNavBarState();
}

class _ScaffoldWithNavBarState extends State<ScaffoldWithNavBar> {
  int _selectedIndex = 0;

  Widget _bottomNavBar(String iconPath, String label, int index) {
    return GestureDetector(
      onTap: () {
        setState(() => _selectedIndex = index);
        switch (index) {
          case 0:
            context.go(AppRouter.home);
            break;
          case 1:
            context.go(AppRouter.news);
            break;
          case 2:
            context.go(AppRouter.trackbox);
            break;
          case 3:
            context.go(AppRouter.projects);
            break;
        }
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _selectedIndex == index
              ? Container(
                  height: 6,
                  width: 12,
                  decoration: BoxDecoration(
                    color: AppTheme.fontColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(6),
                      bottomRight: Radius.circular(6),
                    ),
                  ),
                )
              : SizedBox(),
          Column(
            children: [
              Image.asset(
                iconPath,
                color: _selectedIndex == index
                    ? AppTheme.fontColor
                    : AppTheme.inactiveIconColor,
                height: 22,
                width: 22,
              ),
              Text(
                label,
                style: TextStyle(
                    color: _selectedIndex == index
                        ? AppTheme.fontColor
                        : AppTheme.inactiveIconColor,
                    fontFamily: 'Syne',
                    fontSize: 11,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 5)
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: widget.child,
      bottomNavigationBar: SafeArea(
        child: Container(
          height: 55,
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: AppTheme.bottomNavbarColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5),
              topRight: Radius.circular(5),
            ),
            border: Border(
              top: BorderSide(
                color: AppTheme.borderColor,
                width: 0.85,
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _bottomNavBar(
                'assets/images/bottom_icons/home.png',
                'Home',
                0,
              ),
              _bottomNavBar(
                'assets/images/bottom_icons/news.png',
                'News',
                1,
              ),
              _bottomNavBar(
                'assets/images/bottom_icons/trackbox.png',
                'TrackBox',
                2,
              ),
              _bottomNavBar(
                'assets/images/bottom_icons/projects.png',
                'Projects',
                3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
