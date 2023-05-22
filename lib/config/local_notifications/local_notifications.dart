


import 'package:flutter_local_notifications/flutter_local_notifications.dart';



class LocalNotifications {

  static Future<void> requestPermissionLocalNotifications() async {

    final flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
    await flutterLocalNotificationsPlugin
     .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()
       ?.requestPermission();
  }

  static Future<void> initializeLocalNotifications() async {


    final flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

    const initializationSettingsAndroid = AndroidInitializationSettings('app_icon');
    //TODO iosconfiguration

    const initializationSettings = InitializationSettings(
      android: initializationSettingsAndroid, 
      //TODO ios configurations
    );

    await flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
    );
  }

}