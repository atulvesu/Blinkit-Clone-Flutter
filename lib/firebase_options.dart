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
    apiKey: 'AIzaSyBDrZb1wjMSThX5yd7DHck6NdNDn4Vd38E',
    appId: '1:871219908467:web:097c1aa68555a452213f06',
    messagingSenderId: '871219908467',
    projectId: 'signin-76c70',
    authDomain: 'signin-76c70.firebaseapp.com',
    storageBucket: 'signin-76c70.appspot.com',
    measurementId: 'G-638YX5N92Z',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBw0AXK3hTtLv_gw_1B12uk5YL2AIw_IVw',
    appId: '1:871219908467:android:ec7bd09eef97bcb3213f06',
    messagingSenderId: '871219908467',
    projectId: 'signin-76c70',
    storageBucket: 'signin-76c70.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAdyMEwyXqvS3QsCXXbZgZI4BUefRbzsac',
    appId: '1:871219908467:ios:224001252c4b6581213f06',
    messagingSenderId: '871219908467',
    projectId: 'signin-76c70',
    storageBucket: 'signin-76c70.appspot.com',
    iosBundleId: 'com.example.blinkit',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAdyMEwyXqvS3QsCXXbZgZI4BUefRbzsac',
    appId: '1:871219908467:ios:224001252c4b6581213f06',
    messagingSenderId: '871219908467',
    projectId: 'signin-76c70',
    storageBucket: 'signin-76c70.appspot.com',
    iosBundleId: 'com.example.blinkit',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBDrZb1wjMSThX5yd7DHck6NdNDn4Vd38E',
    appId: '1:871219908467:web:e475bd8d57183373213f06',
    messagingSenderId: '871219908467',
    projectId: 'signin-76c70',
    authDomain: 'signin-76c70.firebaseapp.com',
    storageBucket: 'signin-76c70.appspot.com',
    measurementId: 'G-5FKKNT3TR7',
  );
}