class Item {
  int id;
  String title;
  String subtitle;
  double price;
  bool isFavorite;
  bool inCart;

  Item({
    this.id,
    this.title,
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
    bool inCart,
  }) {
    return Item(
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      price: price ?? this.price,
      isFavorite: isFavorite ?? this.isFavorite,
      inCart: inCart ?? this.inCart,
    );
  }
}
