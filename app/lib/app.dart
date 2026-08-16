import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import 'core/router/app_router.dart';

/// Root MaterialApp for Drive Controller.
class DriveControllerApp extends StatelessWidget {
  const DriveControllerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Drive Controller',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      routerConfig: appRouter,
    );
  }
}
