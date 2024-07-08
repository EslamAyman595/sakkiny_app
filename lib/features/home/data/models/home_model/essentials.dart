// class Essentials {
//   bool? balcony;
//   bool? wifi;
//   bool? naturalGas;
//   bool? elevator;
//   bool? privateGarden;
//   bool? landLine;
//   bool? kitchen;
//   bool? parking;
//   bool? conditioning;
//   bool? electricityMeter;
//   bool? waterMeter;
//    List<String>? features;

//   Essentials({
//     this.balcony,
//     this.wifi,
//     this.naturalGas,
//     this.elevator,
//     this.privateGarden,
//     this.landLine,
//     this.kitchen,
//     this.parking,
//     this.conditioning,
//     this.electricityMeter,
//     this.waterMeter,
//   });

//   factory Essentials.fromJson(Map<String, dynamic> json) => Essentials(
//         balcony: json['balcony'] as bool?,
//         wifi: json['wifi'] as bool?,
//         naturalGas: json['naturalGas'] as bool?,
//         elevator: json['elevator'] as bool?,
//         privateGarden: json['privateGarden'] as bool?,
//         landLine: json['landLine'] as bool?,
//         kitchen: json['kitchen'] as bool?,
//         parking: json['parking'] as bool?,
//         conditioning: json['conditioning'] as bool?,
//         electricityMeter: json['electricityMeter'] as bool?,
//         waterMeter: json['waterMeter'] as bool?,
//       );

//   Map<String, dynamic> toJson() => {
//         'balcony': balcony,
//         'wifi': wifi,
//         'naturalGas': naturalGas,
//         'elevator': elevator,
//         'privateGarden': privateGarden,
//         'landLine': landLine,
//         'kitchen': kitchen,
//         'parking': parking,
//         'conditioning': conditioning,
//         'electricityMeter': electricityMeter,
//         'waterMeter': waterMeter,
//       };

//   // Other fields can be added here

//   // Essentials({this.features});

//   @override
//   String toString() {
//     return features?.join(', ') ?? '';
//   }
// }
class Essentials {
  bool? balcony;
  bool? wifi;
  bool? naturalGas;
  bool? elevator;
  bool? privateGarden;
  bool? landLine;
  bool? kitchen;
  bool? parking;
  bool? conditioning;
  bool? electricityMeter;
  bool? waterMeter;
  List<String>? features;

  Essentials({
    this.balcony,
    this.wifi,
    this.naturalGas,
    this.elevator,
    this.privateGarden,
    this.landLine,
    this.kitchen,
    this.parking,
    this.conditioning,
    this.electricityMeter,
    this.waterMeter,
  });

  factory Essentials.fromJson(Map<String, dynamic> json) => Essentials(
        balcony: json['balcony'] as bool?,
        wifi: json['wifi'] as bool?,
        naturalGas: json['naturalGas'] as bool?,
        elevator: json['elevator'] as bool?,
        privateGarden: json['privateGarden'] as bool?,
        landLine: json['landLine'] as bool?,
        kitchen: json['kitchen'] as bool?,
        parking: json['parking'] as bool?,
        conditioning: json['conditioning'] as bool?,
        electricityMeter: json['electricityMeter'] as bool?,
        waterMeter: json['waterMeter'] as bool?,
      );

  Map<String, dynamic> toJson() => {
        'balcony': balcony,
        'wifi': wifi,
        'naturalGas': naturalGas,
        'elevator': elevator,
        'privateGarden': privateGarden,
        'landLine': landLine,
        'kitchen': kitchen,
        'parking': parking,
        'conditioning': conditioning,
        'electricityMeter': electricityMeter,
        'waterMeter': waterMeter,
      };

  List<String> toList() {
    List<String> features = [];
    if (balcony == true) features.add('Balcony');
    if (wifi == true) features.add('WiFi');
    if (naturalGas == true) features.add('Natural Gas');
    if (elevator == true) features.add('Elevator');
    if (privateGarden == true) features.add('Private Garden');
    if (landLine == true) features.add('Land Line');
    if (kitchen == true) features.add('Kitchen');
    if (parking == true) features.add('Parking');
    if (conditioning == true) features.add('Conditioning');
    if (electricityMeter == true) features.add('Electricity Meter');
    if (waterMeter == true) features.add('Water Meter');
    return features;
  }

  @override
  String toString() {
    return features?.join(', ') ?? '';
  }
}
