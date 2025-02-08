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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyBhRXVILBdXk8TW5VH4aA2x6T3AX8ZqpeQ',
    appId: '1:379483226841:web:18a6715d5b45d0107ab4c8',
    messagingSenderId: '379483226841',
    projectId: 'social-app-28812',
    authDomain: 'social-app-28812.firebaseapp.com',
    storageBucket: 'social-app-28812.firebasestorage.app',
    measurementId: 'G-YDZBBNE528',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAtgEI3jlitnVC_Wbae99GaKBx5IpzNjt8',
    appId: '1:379483226841:android:7e3939a0dbe983147ab4c8',
    messagingSenderId: '379483226841',
    projectId: 'social-app-28812',
    storageBucket: 'social-app-28812.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCzl1cPKsNY_QujxGsbtF_SWNg3O6psR08',
    appId: '1:379483226841:ios:08f4e7d4bc4afd8f7ab4c8',
    messagingSenderId: '379483226841',
    projectId: 'social-app-28812',
    storageBucket: 'social-app-28812.firebasestorage.app',
    iosBundleId: 'com.example.socialApp',
  );
}
