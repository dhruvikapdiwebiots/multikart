class HomeFindStyleCategoryModel {
  String? name;
  String? image;
  String? categoryId;
  String? mrp;
  String? totalPrice;
  String? discount;
  bool? isFav;

  HomeFindStyleCategoryModel({required this.name, this.image,this.categoryId,this.totalPrice,this.mrp,this.discount,this.isFav});

  factory HomeFindStyleCategoryModel.fromJson(Map<dynamic, dynamic> json) {
    return HomeFindStyleCategoryModel(
      name: json['name'] as String?,
      image: json['image'] as String?,
      categoryId: json['categoryId'] as String?,
      totalPrice: json['totalPrice'] as String?,
      mrp: json['mrp'] as String?,
      discount: json['discount'] as String?,
      isFav: json['isFav'] as bool?,
    );
  }
}
