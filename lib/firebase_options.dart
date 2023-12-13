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
    apiKey: 'AIzaSyC9V5QCvqcafdOVO12e-qUD_mW0nFoMqL4',
    appId: '1:815613545298:web:c5676959475d011518088b',
    messagingSenderId: '815613545298',
    projectId: 'veriar',
    authDomain: 'veriar.firebaseapp.com',
    storageBucket: 'veriar.appspot.com',
    measurementId: 'G-BSXPRWGTVT',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBj8zLPgARhHaHY3NhG0rDcCizlHdCkJjE',
    appId: '1:815613545298:android:70246fa8164356b118088b',
    messagingSenderId: '815613545298',
    projectId: 'veriar',
    storageBucket: 'veriar.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAit9UKMBAfF1TXwI9tb3LnEhkxJOi8_8Q',
    appId: '1:815613545298:ios:d2742aeb21d32db018088b',
    messagingSenderId: '815613545298',
    projectId: 'veriar',
    storageBucket: 'veriar.appspot.com',
    iosBundleId: 'apps.too.veriar',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAit9UKMBAfF1TXwI9tb3LnEhkxJOi8_8Q',
    appId: '1:815613545298:ios:392b55e23db981e818088b',
    messagingSenderId: '815613545298',
    projectId: 'veriar',
    storageBucket: 'veriar.appspot.com',
    iosBundleId: 'apps.too.veriar.RunnerTests',
  );
}
