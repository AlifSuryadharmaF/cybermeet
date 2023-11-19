// To parse this JSON data, do
//
//     final event = eventFromJson(jsonString);

import 'dart:convert';

List<Event> eventFromJson(String str) =>
    List<Event>.from(json.decode(str).map((x) => Event.fromJson(x)));

String eventToJson(List<Event> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Event {
  int id;
  String title;
  DateTime dateSchedule;
  String meetingCode;
  DateTime createdAt;
  DateTime updatedAt;

  Event({
    required this.id,
    required this.title,
    required this.dateSchedule,
    required this.meetingCode,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Event.fromJson(Map<String, dynamic> json) => Event(
        id: json["id"],
        title: json["title"],
        dateSchedule: DateTime.parse(json["date_schedule"]),
        meetingCode: json["meeting_code"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "date_schedule": dateSchedule.toIso8601String(),
        "meeting_code": meetingCode,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
