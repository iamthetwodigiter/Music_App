import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:music_app/core/router/app_router.dart';
import 'package:music_app/core/theme/app_theme.dart';
import 'package:music_app/features/home/viewmodel/services_provider.dart';
import 'package:music_app/features/home/view/widgets/service_tile.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<String> iconPaths = [
      'assets/images/tiles_icons/tile_1.png',
      'assets/images/tiles_icons/tile_2.png',
      'assets/images/tiles_icons/tile_3.png',
      'assets/images/tiles_icons/tile_4.png',
    ];

    final List<String> iconBGPaths = [
      'assets/images/tiles_bg/tile_1.png',
      'assets/images/tiles_bg/tile_2.png',
      'assets/images/tiles_bg/tile_3.png',
      'assets/images/tiles_bg/tile_4.png',
    ];

    final List<AlignmentGeometry> alignments = [
      Alignment.center,
      Alignment.center,
      Alignment.bottomCenter,
      Alignment.topCenter,
    ];

    final servicesAsync = ref.watch(servicesProvider);
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      body: SafeArea(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Column(
            children: [
              Container(
                height: size.height * 0.4,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      AppTheme.gradientColor1,
                      AppTheme.gradientColor1,
                      AppTheme.gradientColor2,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      height: size.height * 0.1,
                      width: size.width,
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: size.height * 0.075,
                            width: size.width * 0.75,
                            child: TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: AppTheme.backgroundColor,
                                iconColor: AppTheme.iconColor,
                                isDense: true,
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: 11,
                                  horizontal: 12,
                                ),
                                hintText: 'Search "Punjabi Lyrics"',
                                hintStyle: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Syne',
                                  fontWeight: FontWeight.w500,
                                ),
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: AppTheme.fontColor,
                                ),
                                suffixIconConstraints: BoxConstraints(
                                  minHeight: 21,
                                  minWidth: 30,
                                  maxHeight: 21,
                                  maxWidth: 45,
                                ),
                                suffixIcon: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    RotatedBox(
                                      quarterTurns: 1,
                                      child: Divider(
                                        color: AppTheme.fontColor,
                                        thickness: 0.25,
                                      ),
                                    ),
                                    Icon(
                                      Icons.mic,
                                      size: 20,
                                      color: AppTheme.fontColor,
                                    ),
                                  ],
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                          Image.asset(
                            'assets/images/avatar.png',
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: size.height * 0.3,
                          width: size.width * 0.2,
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Positioned(
                                bottom: 12,
                                left: -40,
                                child: Image.asset(
                                  'assets/images/track.png',
                                  height: 121,
                                  width: 121,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: size.height * 0.3,
                          width: size.width * 0.6,
                          padding: EdgeInsets.symmetric(vertical: 30),
                          child: Column(
                            children: [
                              Text(
                                'Claim your',
                                style: TextStyle(
                                  color: AppTheme.fontColor,
                                  fontFamily: 'Syne',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                'Free Demo',
                                style: TextStyle(
                                  color: AppTheme.fontColor,
                                  fontSize: 45,
                                  fontFamily: 'Lobster',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                'for Custom Music Production',
                                style: TextStyle(
                                  color: AppTheme.fontColor,
                                  fontFamily: 'Syne',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: 10),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  fixedSize: Size(100, 40),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                    vertical: 6,
                                    horizontal: 12,
                                  ),
                                ),
                                onPressed: () {},
                                child: Text(
                                  'Book Now',
                                  style: TextStyle(
                                    color: AppTheme.backgroundColor,
                                    fontSize: 13,
                                    fontFamily: 'Syne',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.3,
                          width: size.width * 0.2,
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Positioned(
                                bottom: 15,
                                right: -48,
                                child: Image.asset(
                                  'assets/images/keyboard.png',
                                  height: 125,
                                  width: 125,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: SingleChildScrollView(
                    child: SizedBox(
                      height: size.height * 0.5,
                      width: size.width,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 20,
                            ),
                            child: Text(
                              'Hire hand-picked Pros for popular music services',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Syne',
                                color: AppTheme.fontColor,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Expanded(
                            child: servicesAsync.when(
                              data: (services) {
                                return ListView.builder(
                                  itemCount: services.length + 1,
                                  itemBuilder: (context, index) {
                                    if (index == services.length) {
                                      return const SizedBox(height: 60);
                                    }
                                    final service = services[index];
                                    return ServiceTile(
                                      leadingIcon: iconPaths.elementAt(index),
                                      title: service.title,
                                      description: service.description,
                                      backgroundImage:
                                          iconBGPaths.elementAt(index),
                                      alignment: alignments[index],
                                      routePath: _getRoutePath(service.id),
                                    );
                                  },
                                );
                              },
                              loading: () => const Center(
                                  child: CircularProgressIndicator()),
                              error: (error, stack) => Center(
                                child: Text('Error loading services: $error'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _getRoutePath(String serviceId) {
    switch (serviceId) {
      case 'music_production':
        return AppRouter.musicProduction;
      case 'mixing_mastering':
        return AppRouter.mixingMastering;
      case 'lyrics_writing':
        return AppRouter.lyricsWriting;
      case 'vocals':
        return AppRouter.vocals;
      default:
        return AppRouter.home;
    }
  }
}
