// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options_stg.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBah1B4kLvTHNkYz3IQnWXnfnpbvVMSbm4',
    appId: '1:744985366113:web:aa3345242d8d4ad2c1a420',
    messagingSenderId: '744985366113',
    projectId: 'snapgram-stage',
    authDomain: 'snapgram-stage.firebaseapp.com',
    storageBucket: 'snapgram-stage.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCZe5XkjT20v7UlQW1g5Jgdty6DZPjHxpg',
    appId: '1:744985366113:android:cb5eea49e553e62ec1a420',
    messagingSenderId: '744985366113',
    projectId: 'snapgram-stage',
    storageBucket: 'snapgram-stage.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAiePIKsnfvYIYnFUZiXoVe0xPeSn0ujNQ',
    appId: '1:744985366113:ios:2022abdaf68c641ac1a420',
    messagingSenderId: '744985366113',
    projectId: 'snapgram-stage',
    storageBucket: 'snapgram-stage.appspot.com',
    iosClientId: '744985366113-hbu8phli62npp4qn41r32vofte8knegv.apps.googleusercontent.com',
    iosBundleId: 'com.devshubh69.snapgram.stg',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAiePIKsnfvYIYnFUZiXoVe0xPeSn0ujNQ',
    appId: '1:744985366113:ios:1a0a9150b3caa819c1a420',
    messagingSenderId: '744985366113',
    projectId: 'snapgram-stage',
    storageBucket: 'snapgram-stage.appspot.com',
    iosClientId: '744985366113-rf1fdmu7uilule8e3q2u80ii3sbh9c81.apps.googleusercontent.com',
    iosBundleId: 'com.example.myApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBah1B4kLvTHNkYz3IQnWXnfnpbvVMSbm4',
    appId: '1:744985366113:web:e56956f141f72c7fc1a420',
    messagingSenderId: '744985366113',
    projectId: 'snapgram-stage',
    authDomain: 'snapgram-stage.firebaseapp.com',
    storageBucket: 'snapgram-stage.appspot.com',
  );
}