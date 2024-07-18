import 'package:shared/shared.dart';
import 'package:snapgram/app/app.dart';
import 'package:snapgram/bootstrap.dart';
import 'package:snapgram/firebase_options_prod.dart';

void main() {
  // const apiRepository = ApiRepository();
  bootstrap(
    (powerSyncRepository) {
      return const AppView();
    },
    options: DefaultFirebaseOptions.currentPlatform,
    appFlavor: AppFlavor.production()
  );
}
