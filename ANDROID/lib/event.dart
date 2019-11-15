class Event{
  String name;
  String speaker;
  String start_time;
  String finish_time;
  String room;
  Event({this.name, this.speaker, this.start_time, this.finish_time, this.room});

  factory Event.fromJson(Map<String, dynamic> parsedJson){
    return Event(
      name:parsedJson['name'],
      speaker:parsedJson['speaker'],
      start_time:parsedJson['start_time'],
      finish_time:parsedJson['finish_time'],
      room:parsedJson['room'],
    );
  }
}




class Day{
  int day;
  List<Event> event;
  Day({this.day, this.event});

  factory Day.fromJson(Map<String, dynamic> parsedJson){
    return Day(
      day: parsedJson['day'],
      var list = parsedJson['events'] as List;
      List<Event> event = list.map((i) => Event.fromJson(i)).toList();
    );
  }
}

class Conference{
  List<Day> days;
  
  factory Conference.fromJson(Map<String, dynamic> parsedJson){
    return Conference(
      var list = parsedJson['conference'] as List;
      List<Day> days = list.map((i) => Day.fromJson(i)).toList();
    );
  }
}


class User{
  String name;
  List<String> contact_list;
  String last_location;
  int toggle;
  factory User.fromJson(Map<String, dynamic> parsedJson){
    return User(
      name :parsedJson['name'],
      contact_list : parsedJson['Contact_List'] as List,
      last_location : parsedJson['Last_Location'],
      toggle : parsedJson['toggle'],    
    );
  }
}

