import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA7xtAZvC_6DJZEFYgY3GATtOVABexQ5fQ",
            authDomain: "tabaritomovil-b9c7f.firebaseapp.com",
            projectId: "tabaritomovil-b9c7f",
            storageBucket: "tabaritomovil-b9c7f.appspot.com",
            messagingSenderId: "500609488516",
            appId: "1:500609488516:web:604de665bb4286845554d1",
            measurementId: "G-4PKKXJ335J"));
  } else {
    await Firebase.initializeApp();
  }
}
