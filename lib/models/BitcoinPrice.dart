import 'Time.dart';

class BitcoinPrice {
  BitcoinPrice({
    required this.bpi,
    required this.disclaimer,
    required this.time,
  });

  Map<String, double> bpi;
  String disclaimer;
  Time time;

  factory BitcoinPrice.fromJson(Map<dynamic, dynamic> json) => BitcoinPrice(
        bpi: Map.from(json["bpi"])
            .map((k, v) => MapEntry<String, double>(k, v.toDouble())),
        disclaimer: json["disclaimer"],
        time: Time.fromJson(json["time"]),
      );

  Map<String, dynamic> toJson() => {
        "bpi": Map.from(bpi).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "disclaimer": disclaimer,
        "time": time.toJson(),
      };
}
