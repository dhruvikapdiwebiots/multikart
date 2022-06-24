class HomeDealOfTheDayModel {
  String? name;
  String? image;
  String? byWhom;
  String? mrp;
  String? totalPrice;
  String? discount;
  bool? isFav;

  HomeDealOfTheDayModel({required this.name, this.image,this.byWhom,this.totalPrice,this.mrp,this.discount,this.isFav});

  factory HomeDealOfTheDayModel.fromJson(Map<dynamic, dynamic> json) {
    return HomeDealOfTheDayModel(
      name: json['name'] as String?,
      image: json['image'] as String?,
      byWhom: json['byWhom'] as String?,
      totalPrice: json['totalPrice'] as String?,
      mrp: json['mrp'] as String?,
      discount: json['discount'] as String?,
      isFav: json['isFav'] as bool?,
    );
  }
}
