import 'package:flutter/material.dart';
import 'package:music_app/core/theme/app_theme.dart';

class ServicesPage extends StatelessWidget {
  final String leadingIcon;
  final String title;
  const ServicesPage({
    super.key,
    required this.leadingIcon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.backgroundColor,
        elevation: 0,
        title: Text(
          title,
          style: TextStyle(
            color: AppTheme.fontColor,
            fontFamily: 'Syne',
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Column(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                leadingIcon,
                scale: 0.75,
              ),
              Text(
                'You are viewing $title page',
                style: TextStyle(
                  color: AppTheme.fontColor,
                  fontFamily: 'Syne',
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
