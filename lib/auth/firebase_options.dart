// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDzEYyqYwK1UfdscS1apW8jwppbwUaXr1I',
    appId: '1:745871435681:web:77e75cb5e1b4585773cde0',
    messagingSenderId: '745871435681',
    projectId: 'uoembu-f3225',
    authDomain: 'uoembu-f3225.firebaseapp.com',
    storageBucket: 'uoembu-f3225.appspot.com',
    measurementId: 'G-7JLZ8KCGSM',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDDnL1b08LX3t5R8VddIw0qkV_AxgMS8QQ',
    appId: '1:745871435681:android:6df76eb51daed8c373cde0',
    messagingSenderId: '745871435681',
    projectId: 'uoembu-f3225',
    storageBucket: 'uoembu-f3225.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAxaYiporZH1fQ2ThJbOpr-jmXepJpxv60',
    appId: '1:745871435681:ios:f2c0f0c48e1b0e0973cde0',
    messagingSenderId: '745871435681',
    projectId: 'uoembu-f3225',
    storageBucket: 'uoembu-f3225.appspot.com',
    iosBundleId: 'com.lxmwaniky.universityOfEmbu',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAxaYiporZH1fQ2ThJbOpr-jmXepJpxv60',
    appId: '1:745871435681:ios:b93ee1a6fe2caf1c73cde0',
    messagingSenderId: '745871435681',
    projectId: 'uoembu-f3225',
    storageBucket: 'uoembu-f3225.appspot.com',
    iosBundleId: 'com.lxmwaniky.universityOfEmbu.RunnerTests',
  );
}
