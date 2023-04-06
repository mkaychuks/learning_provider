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
  Product(price: 1000, store: "Mercedes", title: "E-class")
];