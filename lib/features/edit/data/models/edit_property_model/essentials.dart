class Essentials {
	bool? wifi;
	bool? naturalGas;
	bool? balcony;
	bool? elevator;
	bool? privateGarden;
	bool? landLine;
	bool? kitchen;
	bool? parking;
	bool? conditioning;
	bool? electricityMeter;
	bool? waterMeter;

	Essentials({
		this.wifi, 
		this.naturalGas, 
		this.balcony, 
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
				wifi: json['wifi'] as bool?,
				naturalGas: json['naturalGas'] as bool?,
				balcony: json['balcony'] as bool?,
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
				'wifi': wifi,
				'naturalGas': naturalGas,
				'balcony': balcony,
				'elevator': elevator,
				'privateGarden': privateGarden,
				'landLine': landLine,
				'kitchen': kitchen,
				'parking': parking,
				'conditioning': conditioning,
				'electricityMeter': electricityMeter,
				'waterMeter': waterMeter,
			};
}
