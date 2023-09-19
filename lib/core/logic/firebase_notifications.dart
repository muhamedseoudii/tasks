// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter/material.dart';
//
// Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async
// {
//   // AwesomeNotifications().getInitialNotificationAction().asStream().listen((event) {
//   //   if (event != null) {
//   //     debugPrint("onMessage");
//   //     // AppNotifications().notifyNow(channelId: event.channelKey!, title: event.title, body: event.body);
//   //    createNotify();
//   //     debugPrint("firebaseMessagingBackgroundHandler");
//   //   }
//   // });
//   // AwesomeNotifications().createNotificationFromJsonData(message.data);
// }
//
// // void init(){
// //   // AwesomeNotifications().initialize(
// //   //   // set the icon to null if you want to use the default app icon
// //   //   //   'resource://drawable/res_app_icon',
// //   //     null,
// //   //     [
// //   //       NotificationChannel(
// //   //           channelGroupKey: 'my_channel_id',
// //   //           channelKey: 'my_channel_id',
// //   //           channelName: 'Basic notifications',
// //   //           channelDescription: 'Notification channel for basic tests',
// //   //           defaultColor: Color(0xFF9D50DD),
// //   //           importance: NotificationImportance.High,
// //   //           ledColor: Colors.white)
// //   //     ],
// //   //     // Channel groups are only visual and are not required
// //   //     channelGroups: [
// //   //       NotificationChannelGroup(
// //   //           channelGroupKey: 'my_channel_id',
// //   //           channelGroupName: 'Basic group')
// //   //     ],
// //   //     debug: true
// //   // );
// //
// //   FirebaseMessaging.onMessage.listen((event) {
// //     print(event.data);
// //     createNotify();
// //   });
// //   FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
// //   FirebaseMessaging.onMessageOpenedApp.listen((event) { });
// //
// //   AwesomeNotifications().setListeners(
// //       onActionReceivedMethod:         NotificationController.onActionReceivedMethod,
// //       onNotificationCreatedMethod:    NotificationController.onNotificationCreatedMethod,
// //       onNotificationDisplayedMethod:  NotificationController.onNotificationDisplayedMethod,
// //       onDismissActionReceivedMethod:  NotificationController.onDismissActionReceivedMethod
// //   );
// // }
//
// // createNotify(){
// //   requestPermission();
// //   AwesomeNotifications().createNotification(
// //       content: NotificationContent(
// //           id: 10,
// //           channelKey: 'my_channel_id',
// //           title: 'Simple Notification',
// //           body: 'Simple body',
// //           actionType: ActionType.Default
// //       )
// //   );
// // }
//
//
// // void requestPermission(){
// //   AwesomeNotifications().isNotificationAllowed().then((isAllowed) {
// //     if (!isAllowed) {
// //       // This is just a basic example. For real apps, you must show some
// //       // friendly dialog box before call the request method.
// //       // This is very important to not harm the user experience
// //       AwesomeNotifications().requestPermissionToSendNotifications();
// //     }
// //   });
// // }
//
//
//
//
//
// class NotificationController {
//
//   /// Use this method to detect when a new notification or a schedule is created
//   @pragma("vm:entry-point")
//   static Future <void> onNotificationCreatedMethod(ReceivedNotification receivedNotification) async {
//     // Your code goes here
//   }
//
//   /// Use this method to detect every time that a new notification is displayed
//   @pragma("vm:entry-point")
//   static Future <void> onNotificationDisplayedMethod(ReceivedNotification receivedNotification) async {
//     // Your code goes here
//   }
//
//   /// Use this method to detect if the user dismissed a notification
//   @pragma("vm:entry-point")
//   static Future <void> onDismissActionReceivedMethod(ReceivedAction receivedAction) async {
//     // Your code goes here
//   }
//
//   /// Use this method to detect when the user taps on a notification or action button
//   @pragma("vm:entry-point")
//   static Future <void> onActionReceivedMethod(ReceivedAction receivedAction) async {
//     // Your code goes here
//
//     // Navigate into pages, avoiding to open the notification details page over another details page already opened
//     // MyApp.navigatorKey.currentState?.pushNamedAndRemoveUntil('/notification-page',
//     //         (route) => (route.settings.name != '/notification-page') || route.isFirst,
//     //     arguments: receivedAction);
//   }
// }