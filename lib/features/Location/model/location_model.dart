import 'package:cloud_firestore/cloud_firestore.dart';

class LocationModel {
  String locationName;
  num lat;
  num lon;
  Timestamp createdOn;

  LocationModel(
      {required this.createdOn,
      required this.lat,
      required this.locationName,
      required this.lon});

  LocationModel.fromJson(Map<String, Object?> json)
      : this(
            locationName: json['location_name']! as String,
            lat: json['latitude']! as num,
            lon: json['longitude']! as num,
            createdOn: json['created_on']! as Timestamp);

  LocationModel copyWith({
    String? locationName,
    num? lat,
    num? lon,
    Timestamp? createdOn,
  }) {
    return LocationModel(
        createdOn: createdOn ?? this.createdOn,
        lat: lat ?? this.lat,
        locationName: locationName ?? this.locationName,
        lon: lon ?? this.lon);
  }
  Map<String , Object?> toJson(){
    return {
      'location_name' : locationName,
      'latitude' : lat,
      'longitude' : lon,
      'created_on' : createdOn
    };
  }
}
