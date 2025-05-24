import 'package:flutter/material.dart';
import 'package:music_app/core/theme/app_theme.dart';

class SecondaryPages extends StatelessWidget {
  final String leadingIcon;
  final String title;
  const SecondaryPages({
    super.key,
    required this.leadingIcon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Row(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                leadingIcon,
                scale: 0.75,
                color: AppTheme.gradientColor1,
              ),
              Text(
                title,
                style: TextStyle(
                  color: AppTheme.fontColor,
                  fontSize: 20,
                  fontFamily: 'Syne',
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
