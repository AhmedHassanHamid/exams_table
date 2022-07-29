class Exams {
  int? id;
  Subject? subject;
  Subject? grade;
  String? date;
  String? startTime;
  String? endTime;
  String? periodType;

  Exams(
      {this.id,
      this.subject,
      this.grade,
      this.date,
      this.startTime,
      this.endTime,
      this.periodType});

  Exams.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    subject =
        json['subject'] != null ? new Subject.fromJson(json['subject']) : null;
    grade = json['grade'] != null ? new Subject.fromJson(json['grade']) : null;
    date = json['date'];
    startTime = json['start_time'];
    endTime = json['end_time'];
    periodType = json['periodType'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.subject != null) {
      data['subject'] = this.subject!.toJson();
    }
    if (this.grade != null) {
      data['grade'] = this.grade!.toJson();
    }
    data['date'] = this.date;
    data['start_time'] = this.startTime;
    data['end_time'] = this.endTime;
    data['periodType'] = this.periodType;
    return data;
  }
}

class Subject {
  int? id;
  String? name;

  Subject({this.id, this.name});

  Subject.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}