import 'package:env/env.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';
import 'package:snapgram/app/di/di.dart';
import 'package:snapgram/l10n/l10n.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        useMaterial3: true,
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: SafeArea(child: Scaffold(body: Text(getIt<AppFlavor>().getEnv(Env.iOSClientId)),)),
    );
  }
}
