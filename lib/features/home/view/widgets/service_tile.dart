import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:music_app/core/theme/app_theme.dart';

class ServiceTile extends StatelessWidget {
  final String leadingIcon;
  final String title;
  final String description;
  final String backgroundImage;
  final AlignmentGeometry alignment;
  final String routePath;

  const ServiceTile({
    super.key,
    required this.leadingIcon,
    required this.title,
    required this.description,
    required this.backgroundImage,
    required this.routePath,
    this.alignment = Alignment.center,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return GestureDetector(
      onTap: () => context.push(routePath),
      child: Container(
        height: 65,
        margin: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(backgroundImage),
            fit: BoxFit.cover,
            alignment: alignment,
            opacity: 0.2,
          ),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: AppTheme.borderColor,
          ),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Image.asset(leadingIcon),
            ),
            SizedBox(
              width: size.width * 0.595,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Syne',
                      fontWeight: FontWeight.w700,
                      color: AppTheme.fontColor,
                    ),
                  ),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'Syne',
                      fontWeight: FontWeight.w400,
                      color: AppTheme.fontColor,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ],
              ),
            ),
            const Spacer(),
            const Icon(
              Icons.arrow_right,
              color: AppTheme.iconColor,
            ),
          ],
        ),
      ),
    );
  }
}
