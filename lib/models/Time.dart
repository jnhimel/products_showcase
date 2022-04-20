class Time {
  Time({
    required this.updated,
    required this.updatedIso,
  });

  String updated;
  DateTime updatedIso;

  factory Time.fromJson(Map<String, dynamic> json) => Time(
        updated: json["updated"],
        updatedIso: DateTime.parse(json["updatedISO"]),
      );

  Map<String, dynamic> toJson() => {
        "updated": updated,
        "updatedISO": updatedIso.toIso8601String(),
      };
}
