// ignore_for_file: avoid_print, prefer_final_fields

import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class NotificationsToken {
  // static FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;
  static String? token;
  static StreamController<String> _messageStreamController =
      StreamController.broadcast();

  static Stream<String> get messageStreamController =>
      _messageStreamController.stream;

  static Future _backgroundHandler(RemoteMessage message) async {
    _messageStreamController
        .add(message.notification?.title ?? 'No Tiene Tituló');
  }

  static Future _onMessageHandler(RemoteMessage message) async {
    _messageStreamController
        .add(message.notification?.title ?? 'No Tiene Tituló');
  }

  static Future _onMessageOpenApp(RemoteMessage message) async {
    _messageStreamController
        .add(message.notification?.title ?? 'No Tiene Tituló');
  }

  static Future initializeApp() async {
    await Firebase.initializeApp();
    token = await FirebaseMessaging.instance.getToken();
    print('Token: $token');

    FirebaseMessaging.onBackgroundMessage(_backgroundHandler);
    FirebaseMessaging.onMessage.listen(_onMessageHandler);
    FirebaseMessaging.onMessageOpenedApp.listen(_onMessageOpenApp);
  }

  static closStreams() {
    _messageStreamController.close();
  }
}
