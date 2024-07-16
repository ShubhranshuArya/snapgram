// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options_dev.dart';
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
    apiKey: 'AIzaSyBJIlaDfwj3TZ_3ohAOgf0URnMzlnuE9po',
    appId: '1:532669712992:web:6e890e88c29f5d938f5105',
    messagingSenderId: '532669712992',
    projectId: 'snapgram-dev-4e0f0',
    authDomain: 'snapgram-dev-4e0f0.firebaseapp.com',
    storageBucket: 'snapgram-dev-4e0f0.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCXdzi9Q0ZrQYAR5SuFjU_Es130nSq3CxI',
    appId: '1:532669712992:android:852a108af012f7758f5105',
    messagingSenderId: '532669712992',
    projectId: 'snapgram-dev-4e0f0',
    storageBucket: 'snapgram-dev-4e0f0.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCULiL0K-J-T8XOWn52-MF_oA-YwRDvP58',
    appId: '1:532669712992:ios:ae700b6179777fb38f5105',
    messagingSenderId: '532669712992',
    projectId: 'snapgram-dev-4e0f0',
    storageBucket: 'snapgram-dev-4e0f0.appspot.com',
    iosClientId: '532669712992-rqok7ifoga54i431a1426mhqcu14c4u6.apps.googleusercontent.com',
    iosBundleId: 'com.devshubh69.snapgram.dev',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCULiL0K-J-T8XOWn52-MF_oA-YwRDvP58',
    appId: '1:532669712992:ios:4154d8d6b9a7f3c48f5105',
    messagingSenderId: '532669712992',
    projectId: 'snapgram-dev-4e0f0',
    storageBucket: 'snapgram-dev-4e0f0.appspot.com',
    iosClientId: '532669712992-3rllbq8hks3cd91v97cr8vkr3g0vru36.apps.googleusercontent.com',
    iosBundleId: 'com.example.myApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBJIlaDfwj3TZ_3ohAOgf0URnMzlnuE9po',
    appId: '1:532669712992:web:572a0bc6c9f5fd748f5105',
    messagingSenderId: '532669712992',
    projectId: 'snapgram-dev-4e0f0',
    authDomain: 'snapgram-dev-4e0f0.firebaseapp.com',
    storageBucket: 'snapgram-dev-4e0f0.appspot.com',
  );
}