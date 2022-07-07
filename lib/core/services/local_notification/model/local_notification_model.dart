class LocalNotificationModel {
  //you should use unique id for each notification
  final int id;
  final String? title;
  final String? body;
  final String? payload;
  final DateTime? dateTime;

  LocalNotificationModel({
    required this.id,
    this.title,
    this.body,
    this.payload,
    this.dateTime,
  });
}
