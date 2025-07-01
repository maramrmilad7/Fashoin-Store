class ProductModel {
  final String image;
  final String title;
  final String description;
  final double price;

 const ProductModel({required this.image, required this.title, required this.description, required this.price});

static List<ProductModel> products = [
    ProductModel(
      image: 'assets/product/product1.png',
      title: 'October collection',
      description: 'reversible angora cardigan',
      price: 292,
    ),
    ProductModel(
      image: 'assets/product/product2.png',
      title: 'October collection',
      description: 'reversible angora cardigan',
      price: 492,
    ),
    ProductModel(
      image: 'assets/product/product3.png',
      title: 'October collection',
      description: 'mnemo',
      price: 199,
    ),
 ProductModel(
      image: 'assets/product/product4.png',
      title: 'October collection',
      description: 'reversible angora cardigan',
      price: 120,
    ), ProductModel(
      image: 'assets/product/product5.png',
      title: 'October collection',
      description: 'reversible angora cardigan',
      price: 420,
    ), ProductModel(
      image: 'assets/product/product6.png',
      title: 'October collection',
      description: 'reversible angora cardigan',
      price: 120,
    ),  ];
}
