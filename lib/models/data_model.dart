class Data {
  String name;
  String image;
  String adds;
  String price;
  String des;
  Data({
    required this.name,
    required this.image,
    required this.adds,
    required this.price,
    required this.des,
  });
}

List<Data> data = [
  Data(
    name: 'Cappuccino',
    image:
        'https://th.bing.com/th/id/OIP.fYqo-qbw7F_NRe5pg3y_gQHaE8?pid=ImgDet&rs=1',
    adds: 'With Almond Milk',
    price: '4.98',
    des:
        'The cappuccino we now know was developed in Italy from the Viennese drink “Kapuziner” brewed coffee, mixed with milk and cream.Nowadays the cappuccino has its classic definition which guides baristas around the world when they prepare it.',
  ),
  Data(
    name: 'Cappuccino',
    image:
        'https://s3-media1.fl.yelpcdn.com/bphoto/hlZv9ItiaMKwSJEgiMa2HQ/348s.jpg',
    adds: 'With Soy Milk',
    price: '5.14',
    des:
        'Nowadays the cappuccino has its classic definition which guides baristas around the world when they prepare it.A cappuccino is an espresso-based hot coffee beverage,The cappuccino we now know was developed in Italy from the Viennese drink “Kapuziner” brewed coffee,',
  )
];
