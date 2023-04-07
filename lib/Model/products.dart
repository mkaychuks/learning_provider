class Product {
  String title;
  int price;
  String store;

  Product({required this.price, required this.store, required this.title});
}

List<Product> products = [
  Product(price: 100, store: "Divine Stores", title: "T-shirt"),
  Product(price: 10, store: "Main Market", title: "Boxers"),
  Product(price: 120, store: "Isiokwe", title: "Paracetamol"),
  Product(price: 110, store: "Ghana", title: "Inifnix hot 5"),
  Product(price: 90, store: "Emeka Offor", title: "Samsung s23 ultra"),
  Product(price: 1200, store: "US", title: "Starlink"),
  Product(price: 150, store: "Space-X", title: "Tesla"),
  Product(price: 0, store: "Youtube", title: "Tutorial"),
  Product(price: 1000, store: "Mercedes", title: "E-class")
];