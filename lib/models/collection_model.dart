class CollectionModel {
  final String image, title;

const  CollectionModel({required this.image, required this.title});

static List<CollectionModel> collections = [
    CollectionModel(
      image: 'assets/Cover/cover1.png',
      title: 'October Collection',
    ),
    CollectionModel(
      image: 'assets/Cover/cover2.png',
      title: 'Winter Collection',
    ),
    CollectionModel(
      image: 'assets/Cover/cover3.png',
      title: 'Summer Collection',
    ),
  ];

}
