// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
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
    apiKey: 'AIzaSyC6w7-bU5F3SvIgo4nHXw5KCxjidUFJhWk',
    appId: '1:35342065988:web:65d9697460bcbd68293711',
    messagingSenderId: '35342065988',
    projectId: 'projeto-david-ee44d',
    authDomain: 'projeto-david-ee44d.firebaseapp.com',
    storageBucket: 'projeto-david-ee44d.firebasestorage.app',
    measurementId: 'G-HWDSRVR80Q',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC9llh4WlxDohhHNj4SCoNOEE784m-8xA4',
    appId: '1:35342065988:android:1e2600c09e0fa7e0293711',
    messagingSenderId: '35342065988',
    projectId: 'projeto-david-ee44d',
    storageBucket: 'projeto-david-ee44d.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyANYUUbcqFZrOROlFvSqgV7VsJVbVWl1I4',
    appId: '1:35342065988:ios:45d348c444a7bcfd293711',
    messagingSenderId: '35342065988',
    projectId: 'projeto-david-ee44d',
    storageBucket: 'projeto-david-ee44d.firebasestorage.app',
    iosBundleId: 'com.example.loginRegisterApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyANYUUbcqFZrOROlFvSqgV7VsJVbVWl1I4',
    appId: '1:35342065988:ios:45d348c444a7bcfd293711',
    messagingSenderId: '35342065988',
    projectId: 'projeto-david-ee44d',
    storageBucket: 'projeto-david-ee44d.firebasestorage.app',
    iosBundleId: 'com.example.loginRegisterApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyC6w7-bU5F3SvIgo4nHXw5KCxjidUFJhWk',
    appId: '1:35342065988:web:891d21594e4eb5c7293711',
    messagingSenderId: '35342065988',
    projectId: 'projeto-david-ee44d',
    authDomain: 'projeto-david-ee44d.firebaseapp.com',
    storageBucket: 'projeto-david-ee44d.firebasestorage.app',
    measurementId: 'G-CEZJEXZN06',
  );
}