import 'package:flutter/services.dart';
import 'package:powersync_repository/powersync_repository.dart';
import 'package:shared/shared.dart';
import 'package:snapgram/app/app.dart';
import 'package:snapgram/bootstrap.dart';
import 'package:snapgram/firebase_options_dev.dart';

void main() {
  // const apiRepository = ApiRepository();
  bootstrap(
    (powerSyncRepository) {
      return const App();
    },
    options: DefaultFirebaseOptions.currentPlatform,
    appFlavor: AppFlavor.development(),
  );
}
