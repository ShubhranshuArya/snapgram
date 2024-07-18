import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:snapgram/l10n/l10n.dart';
import 'package:snapgram/login/view/login_page.dart';

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: const AppTheme().theme,
      darkTheme: const AppDarkTheme().theme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const LoginPage(),
    );
  }
}
