import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAhx7IBUBEHcd61nEBMlu3aiI3nnHOc_K4",
            authDomain: "appsexteen.firebaseapp.com",
            projectId: "appsexteen",
            storageBucket: "appsexteen.appspot.com",
            messagingSenderId: "22370141265",
            appId: "1:22370141265:web:a081cbd4649aeaab266470",
            measurementId: "G-MXRBJP5J7D"));
  } else {
    await Firebase.initializeApp();
  }
}
