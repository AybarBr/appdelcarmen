// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.

/// Example:
 ///```dart
/// import 'firebase_options.dart';
 // ...
/// await Firebase.initializeApp(
  /// options = DefaultFirebaseOptions.currentPlatform,
/// );

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
    apiKey: 'AIzaSyAdgFoYZo672Y31fvXv_OORtlDqB2tiKgw',
    appId: '1:342062525095:web:ec0558d50550ce79240982',
    messagingSenderId: '342062525095',
    projectId: 'appdelcarmen',
    authDomain: 'appdelcarmen.firebaseapp.com',
    storageBucket: 'appdelcarmen.firebasestorage.app',
    measurementId: 'G-2BBHHERQ4E',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCGeMRIdKyb99-YLgVE0wMGl-AKZljgccQ',
    appId: '1:342062525095:android:84d0634c9f444991240982',
    messagingSenderId: '342062525095',
    projectId: 'appdelcarmen',
    storageBucket: 'appdelcarmen.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAcybiwU1yMhVsdGhWIwreEhFZ47-1JQrc',
    appId: '1:342062525095:ios:b35bc96eeab078a8240982',
    messagingSenderId: '342062525095',
    projectId: 'appdelcarmen',
    storageBucket: 'appdelcarmen.firebasestorage.app',
    iosBundleId: 'com.example.appdelcarmen',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAcybiwU1yMhVsdGhWIwreEhFZ47-1JQrc',
    appId: '1:342062525095:ios:b35bc96eeab078a8240982',
    messagingSenderId: '342062525095',
    projectId: 'appdelcarmen',
    storageBucket: 'appdelcarmen.firebasestorage.app',
    iosBundleId: 'com.example.appdelcarmen',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAdgFoYZo672Y31fvXv_OORtlDqB2tiKgw',
    appId: '1:342062525095:web:32b8658af1aec65b240982',
    messagingSenderId: '342062525095',
    projectId: 'appdelcarmen',
    authDomain: 'appdelcarmen.firebaseapp.com',
    storageBucket: 'appdelcarmen.firebasestorage.app',
    measurementId: 'G-R3HQK3B3BL',
  );
}
