import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDbOU0To4df7fp71Hc1jqZGDF0z3iTwAsQ",
            authDomain: "eventia-ecf23.firebaseapp.com",
            projectId: "eventia-ecf23",
            storageBucket: "eventia-ecf23.firebasestorage.app",
            messagingSenderId: "577002978244",
            appId: "1:577002978244:web:e5c81807d2280e361e0291"));
  } else {
    await Firebase.initializeApp();
  }
}
