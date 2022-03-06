import 'dart:convert';



class EventData {
  String id;
  String eventName;
  String eventDate;
  String time;
  String location;
  List<dynamic> rules;
  List<dynamic> judgingCriteria;
  String eventType;
  String? eventPosterURL;
  String registrationLink;
  String eventDescription;
  String submissionLink;
  bool eventOver;


  EventData(
      {required this.id,
        required this.eventDate,
        required this.eventName,
        required this.time,
        required this.location,
        required this.rules,
        required this.judgingCriteria,
        required this.eventType,
        required this.registrationLink,
        required this.submissionLink,
        required this.eventOver,
        this.eventPosterURL,
        required this.eventDescription,});

  get toJSON {
    return json.encode({
      "id": id,
      "eventName": eventName,
      "date": eventDate,
      "time": time,
      "location": location,
      "rules": rules,
      "registrationLink": registrationLink,
      "submissionLink": submissionLink,
      "judgingCriteria": judgingCriteria,
      "eventType": eventType,
      "eventPosterURL": eventPosterURL,
      "eventDescription": eventDescription
    });
  }
}
