
// class PropertyImage {
// 	PropertyImage();

// 	factory PropertyImage.fromJson(Map<String, dynamic> json) {
// 		// TODO: implement fromJson
// 		throw UnimplementedError('PropertyImage.fromJson($json) is not implemented');
// 	}

// 	Map<String, dynamic> toJson() {
// 		// TODO: implement toJson
// 		throw UnimplementedError();
// 	}
// }
class PropertyImage {
  String? secureUrl;
  String? publicId;
  String? id;

  PropertyImage({this.secureUrl, this.publicId, this.id});

  factory PropertyImage.fromJson(Map<String, dynamic> json) => PropertyImage(
        secureUrl: json['secure_url'] as String?,
        publicId: json['public_id'] as String?,
        id: json['_id'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'secure_url': secureUrl,
        'public_id': publicId,
        '_id': id,
      };
}
