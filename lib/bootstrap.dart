import 'dart:async';
import 'dart:developer';

import 'package:app_ui/app_ui.dart';
import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import 'package:powersync_repository/powersync_repository.dart';
import 'package:shared/shared.dart';
import 'package:snapgram/app/di/di.dart';


typedef AppBuilder = FutureOr<Widget> Function(
  PowerSyncRepository,
);

class AppBlocObserver extends BlocObserver {
  const AppBlocObserver();

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    logD('onChange(${bloc.runtimeType}, $change)');
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    logD('onError(${bloc.runtimeType}, $error, $stackTrace)');
    super.onError(bloc, error, stackTrace);
  }
}

Future<void> bootstrap(
  AppBuilder builder, {
  required FirebaseOptions options,
  required AppFlavor appFlavor,
}) async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  Bloc.observer = const AppBlocObserver();

  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      setupDi(appFlavor: appFlavor);

      await Firebase.initializeApp();

      final powerSyncRepository = PowerSyncRepository(env: appFlavor.getEnv,);
      await powerSyncRepository.initialize();

      runApp(await builder(powerSyncRepository));

      SystemUiOverlayTheme.setPortraitOrientation();

    },
    (error, stack) {
      logE(error.toString(), stackTrace: stack);
    },
  );
}
