class HomeFindStyleCategoryModel {
  String? name;
  String? image;
  String? categoryId;
  String? mrp;
  String? totalPrice;
  String? discount;
  bool? isFav;
  bool isNew;
  double? rating;

  HomeFindStyleCategoryModel({required this.name, this.image,this.categoryId,this.totalPrice,this.mrp,this.discount,this.isFav,this.rating,this.isNew = false});

  factory HomeFindStyleCategoryModel.fromJson(Map<dynamic, dynamic> json) {
    return HomeFindStyleCategoryModel(
      name: json['name'] as String?,
      image: json['image'] as String?,
      categoryId: json['categoryId'] as String?,
      totalPrice: json['totalPrice'] as String?,
      mrp: json['mrp'] as String?,
      discount: json['discount'] as String?,
      isFav: json['isFav'] as bool?,
      isNew: json['isNew'] as bool,
      rating: json['rating'] as double?,
    );
  }
}
