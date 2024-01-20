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
    apiKey: 'AIzaSyAcpEZwW0lobsxv0tzjLokVV1Uwk1Hg8cA',
    appId: '1:22811831062:web:bcaa93aa3425cc9e0f7e37',
    messagingSenderId: '22811831062',
    projectId: 'fir-work-56f58',
    authDomain: 'fir-work-56f58.firebaseapp.com',
    storageBucket: 'fir-work-56f58.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAqGUSAOmAR9cBQWgx1giv-AlBwyi_bpjg',
    appId: '1:22811831062:android:db0254565ade038c0f7e37',
    messagingSenderId: '22811831062',
    projectId: 'fir-work-56f58',
    storageBucket: 'fir-work-56f58.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCPr_TknbohKMhIJhJ5WthMhW4YrBmqQp0',
    appId: '1:22811831062:ios:c259e89bcddfd34a0f7e37',
    messagingSenderId: '22811831062',
    projectId: 'fir-work-56f58',
    storageBucket: 'fir-work-56f58.appspot.com',
    iosBundleId: 'com.example.firebaseWork',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCPr_TknbohKMhIJhJ5WthMhW4YrBmqQp0',
    appId: '1:22811831062:ios:18f795e1f824c9b30f7e37',
    messagingSenderId: '22811831062',
    projectId: 'fir-work-56f58',
    storageBucket: 'fir-work-56f58.appspot.com',
    iosBundleId: 'com.example.firebaseWork.RunnerTests',
  );
}