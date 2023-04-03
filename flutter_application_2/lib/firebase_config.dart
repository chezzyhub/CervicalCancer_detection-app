/* import 'package:firebase_core/firebase_core.dart' show Firebase, FirebaseOptions;

class FirebaseConfig {
  static Future<void> initialize() async {
    final config = {
      {
  "project_info": {
    "project_number": "112495846289",
    "project_id": "flutter-application2-38cdd",
    "storage_bucket": "flutter-application2-38cdd.appspot.com"
  },
  "client": [
    {
      "client_info": {
        "mobilesdk_app_id": "1:112495846289:android:e1bb603d514431ec1f7030",
        "android_client_info": {
          "package_name": "com.example.flutter_application_2"
        }
      },
      "oauth_client": [
        {
          "client_id": "112495846289-iiqg5jnb3k705ib8s23uqq7ssu7r4d0k.apps.googleusercontent.com",
          "client_type": 3
        }
      ],
      "api_key": [
        {
          "current_key": "AIzaSyA_3lN9fQN5F6aaCeboXHNSRENMyymQ4Rg"
        }
      ],
      "services": {
        "appinvite_service": {
          "other_platform_oauth_client": [
            {
              "client_id": "112495846289-iiqg5jnb3k705ib8s23uqq7ssu7r4d0k.apps.googleusercontent.com",
              "client_type": 3
            },
            {
              "client_id": "112495846289-q6vus2tchnmf50v2chp1nslvodul08kt.apps.googleusercontent.com",
              "client_type": 2,
              "ios_info": {
                "bundle_id": "com.example.flutterApplication2"
              }
            }
          ]
        }
      }
    }
  ],
  "configuration_version": "1"
}
      // Replace with your own config object
    };
    await Firebase.initializeApp(
      options: FirebaseOptions.fromMap(config),
    );
  }
}
 */