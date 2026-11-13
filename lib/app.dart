import 'package:flutter/material.dart';

import 'core/app_theme.dart';
import 'screens/main_container_screen.dart';

class ATILocalApp extends StatelessWidget {
  const ATILocalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ATI - Agente Tutor Inteligente',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      home: const MainContainerScreen(),
    );
  }
}
