import '../../config.dart';


var productList = Product(
    name: "floral print skirt with white top",
    title: "Floral Skirts",
    description:
        "Black, off-white and peach-coloured printed flared skirt, has zip closure, attached lining",
    rating: 4.5,
    ratingPoints: 20,
    price: 35,
    discountPrice: 32,
    discount: "20%",
    quantity: 0,
    totalReview: 24,
    policy:
        "This product is eligible for returns and size replacements. Please initiate returns/replacements from the 'My Orders' section in the App within 7 days of delivery. Please ensure the product is in its original condition with all tags attached.",
    size: [
      SizeModel(title: "S", isAvailable: true),
      SizeModel(title: "M", isAvailable: true),
      SizeModel(title: "L", isAvailable: true),
      SizeModel(title: "XL", isAvailable: false),
    ],
    color: [
      ColorModel(id: 1, color: const Color(0xFFE6E6FA), isAvailable: true),
      ColorModel(id: 2, color: const Color(0xFFF5F5F5), isAvailable: true),
      ColorModel(id: 3, color: const Color(0xFFB0C4DE), isAvailable: true),
      ColorModel(id: 4, color: const Color(0xFFE6A199), isAvailable: true),
      ColorModel(id: 5, color: const Color(0xFF4F4652), isAvailable: false),
    ],
    images: [
      Images(image: imageAssets.product1, colorId: 1),
      Images(image: imageAssets.product2, colorId: 1),
      Images(image: imageAssets.product3, colorId: 1),
      Images(image: imageAssets.product4, colorId: 2),
      Images(image: imageAssets.product5, colorId: 2),
      Images(image: imageAssets.product6, colorId: 2),
      Images(image: imageAssets.product7, colorId: 3),
      Images(image: imageAssets.product8, colorId: 3),
      Images(image: imageAssets.product9, colorId: 3),
      Images(image: imageAssets.product10, colorId: 4),
      Images(image: imageAssets.product11, colorId: 4),
      Images(image: imageAssets.product12, colorId: 4),
    ],
    detail: [
      Detail(
          title: "Product Details",
          description:
              "Black, off-white and peach-coloured printed flared skirt, has zip closure, attached lining"),
      Detail(
          title: "Model Size & Fit",
          description: "The model (height 5'8) is wearing a size 28"),
      Detail(
          title: "Material & Care",
          description: "100% polyester, Machine-wash"),
      Detail(title: "Product Code", description: "460356366_floral"),
    ],
    reviews: [
      Reviews(
          name: "Mark Jacob",
          description:
              "It's a really cute skirt! I didn't expect to feel so good in a polyester material. The print is slightly less bright than what is shown in the product description.",
          size: "L",
          rating: 4,
          disLike: 20,
          like: 2,
          date: "20 Aug, 2021",
          image: imageAssets.avtar),
      Reviews(
          name: "Mark Jacob",
          description:
              "Wow.. but it should have more flairs. mind-blowing purchase..🤗",
          size: "XL",
          rating: 4,
          disLike: 20,
          like: 2,
          date: "20 Aug, 2021",
          image: imageAssets.avtar1)
    ],
    offer: Offer(
      title: "Use code MULTIKART10 to get flat 10%",
      code: "MULTIKART10",
      desc:
          "Use code MULTIKART10 to get flat 10% off on minimum order of \$200.00. Offer valid for first time users only",
    ));
