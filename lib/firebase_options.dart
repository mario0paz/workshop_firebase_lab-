
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.

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
      default:
        throw UnsupportedError(
            'DefaultFirebaseOptions are not supported for this platform.');
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyC6VdAEKqkP7i2bsYDY8E3b1wDW-a9eX08',
    appId: '1:98776303506:web:15b7637ac792588502a34b',
    messagingSenderId: '98776303506',
    projectId: 'fir-flutter-codelab-ddebf',
    authDomain: 'fir-flutter-codelab-ddebf.firebaseapp.com',
    storageBucket: 'fir-flutter-codelab-ddebf.appspot.com',
    measurementId: 'G-0L4EJHPKH0',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAuNMvHtzvXGrPjb74CkBE9-IfT8F9AU70',
    appId: '1:98776303506:android:991467e40d2d163102a34b',
    messagingSenderId: '98776303506',
    projectId: 'fir-flutter-codelab-ddebf',
    storageBucket: 'fir-flutter-codelab-ddebf.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: '',
    appId: '',
    messagingSenderId: '',
    projectId: '',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: '',
    appId: '',
    messagingSenderId: '',
    projectId: '',
  );
}