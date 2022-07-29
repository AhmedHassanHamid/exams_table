import 'package:student_table_task/data/models/table_models.dart';

class TableResponse {
  int? status;
  List<Exams>? exams;
  
  TableResponse({
    this.status,
    this.exams,
  });


  factory TableResponse.fromJson(Map<String, dynamic> json) => TableResponse(
        status: json["status"],
        exams: json["exams"] != null
            ? List<Exams>.from(
                json["exams"].map((x) => Exams.fromJson(x)))
            : json["exams"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "exams": List<dynamic>.from(exams!.map((x) => x.toJson())),
      };
}