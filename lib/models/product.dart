class CraftedBy {
  List<Product>? data;
  // Links? links;
  // Meta? meta;

  CraftedBy({
    this.data,
    // this.links,
    // this.meta,
  });

  factory CraftedBy.fromJson(Map<String, dynamic> json) => CraftedBy(
    data: json["data"] == null ? [] : List<Product>.from(json["data"]!.map((x) => Product.fromJson(x))),
    // links: json["links"] == null ? null : Links.fromJson(json["links"]),
    // meta: json["meta"] == null ? null : Meta.fromJson(json["meta"]),
  );

  Map<String, dynamic> toJson() => {
    "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
    // "links": links?.toJson(),
    // "meta": meta?.toJson(),
  };
}

class Product {
  String? id;
  String name;
  String description;
  String? price;
  int? stock;
  String? material;
  String? color;
  int? customisable;
  String? imagePath;
  // List<Category>? categories;
  // Business? business;
  // List<Review>? review;

  Product({
    this.id,
    required this.name,
    required this.description,
    this.price,
    this.stock,
    this.material,
    this.color,
    this.customisable,
    this.imagePath,
    // this.categories,
    // this.business,
    // this.review,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    id: json["id"],
    name: json["name"],
    description: json["description"],
    price: json["price"],
    stock: json["stock"],
    material: json["material"],
    color: json["color"],
    customisable: json["customisable"],
    imagePath: json["image_path"],
    // categories: json["categories"] == null ? [] : List<Category>.from(json["categories"]!.map((x) => Category.fromJson(x))),
    // business: json["business"] == null ? null : Business.fromJson(json["business"]),
    // review: json["review"] == null ? [] : List<Review>.from(json["review"]!.map((x) => Review.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "description": description,
    "price": price,
    "stock": stock,
    "material": material,
    "color": color,
    "customisable": customisable,
    "image_path": imagePath,
    // "categories": categories == null ? [] : List<dynamic>.from(categories!.map((x) => x.toJson())),
    // "business": business?.toJson(),
    // "review": review == null ? [] : List<dynamic>.from(review!.map((x) => x.toJson())),
  };
}

//
// class Business {
//   String? id;
//   String? name;
//   String? website;
//   String? email;
//   String? phoneNumber;
//
//   Business({
//     this.id,
//     this.name,
//     this.website,
//     this.email,
//     this.phoneNumber,
//   });
//
//   factory Business.fromJson(Map<String, dynamic> json) => Business(
//     id: json["id"],
//     name: json["name"],
//     website: json["website"],
//     email: json["email"],
//     phoneNumber: json["phone_number"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "name": name,
//     "website": website,
//     "email": email,
//     "phone_number": phoneNumber,
//   };
// }
//
// class Category {
//   String? id;
//   String? name;
//
//   Category({
//     this.id,
//     this.name,
//   });
//
//   factory Category.fromJson(Map<String, dynamic> json) => Category(
//     id: json["id"],
//     name: json["name"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "name": name,
//   };
// }
//
// class Review {
//   String? id;
//   int? rating;
//   String? comment;
//   String? productId;
//   DateTime? createdAt;
//
//   Review({
//     this.id,
//     this.rating,
//     this.comment,
//     this.productId,
//     this.createdAt,
//   });
//
//   factory Review.fromJson(Map<String, dynamic> json) => Review(
//     id: json["id"],
//     rating: json["rating"],
//     comment: json["comment"],
//     productId: json["product_id"],
//     createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "rating": rating,
//     "comment": comment,
//     "product_id": productId,
//     "created_at": createdAt?.toIso8601String(),
//   };
// }
//
// class Links {
//   String? first;
//   String? last;
//   dynamic prev;
//   String? next;
//
//   Links({
//     this.first,
//     this.last,
//     this.prev,
//     this.next,
//   });
//
//   factory Links.fromJson(Map<String, dynamic> json) => Links(
//     first: json["first"],
//     last: json["last"],
//     prev: json["prev"],
//     next: json["next"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "first": first,
//     "last": last,
//     "prev": prev,
//     "next": next,
//   };
// }
//
// class Meta {
//   int? currentPage;
//   int? from;
//   int? lastPage;
//   List<Link>? links;
//   String? path;
//   int? perPage;
//   int? to;
//   int? total;
//
//   Meta({
//     this.currentPage,
//     this.from,
//     this.lastPage,
//     this.links,
//     this.path,
//     this.perPage,
//     this.to,
//     this.total,
//   });
//
//   factory Meta.fromJson(Map<String, dynamic> json) => Meta(
//     currentPage: json["current_page"],
//     from: json["from"],
//     lastPage: json["last_page"],
//     links: json["links"] == null ? [] : List<Link>.from(json["links"]!.map((x) => Link.fromJson(x))),
//     path: json["path"],
//     perPage: json["per_page"],
//     to: json["to"],
//     total: json["total"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "current_page": currentPage,
//     "from": from,
//     "last_page": lastPage,
//     "links": links == null ? [] : List<dynamic>.from(links!.map((x) => x.toJson())),
//     "path": path,
//     "per_page": perPage,
//     "to": to,
//     "total": total,
//   };
// }
//
// class Link {
//   String? url;
//   String? label;
//   bool? active;
//
//   Link({
//     this.url,
//     this.label,
//     this.active,
//   });
//
//   factory Link.fromJson(Map<String, dynamic> json) => Link(
//     url: json["url"],
//     label: json["label"],
//     active: json["active"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "url": url,
//     "label": label,
//     "active": active,
//   };
// }