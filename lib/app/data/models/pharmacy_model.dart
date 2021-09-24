// To parse this JSON data, do
//
//     final pharmacy = pharmacyFromJson(jsonString);


class Result {
    Result({
        this.name,
        this.dist,
        this.address,
        this.phone,
        this.loc,
    });

    final String? name;
    final String? dist;
    final String? address;
    final String? phone;
    final String? loc;

    factory Result.fromJson(Map<String, dynamic> json) => Result(
        name: json["name"],
        dist: json["dist"],
        address: json["address"],
        phone: json["phone"],
        loc: json["loc"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "dist": dist,
        "address": address,
        "phone": phone,
        "loc": loc,
    };
}
