class ItemModel {
  final int id;
  final String title;
  final String subtitle;
  final double price;
  final String image;
  bool isFavorite;
  bool inCart;

  ItemModel({
    this.id,
    this.title,
    this.image,
    this.subtitle,
    this.price,
    this.isFavorite = false,
    this.inCart = false,
  });

  copyWith({
    String title,
    String subtitle,
    double price,
    bool isFavorite,
    String image,
    bool inCart,
  }) {
    return ItemModel(
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      price: price ?? this.price,
      isFavorite: isFavorite ?? this.isFavorite,
      inCart: inCart ?? this.inCart,
      image: image ?? this.image,
    );
  }

  set tgFavorite(bool value) {
    this.isFavorite = value;
  }
}
