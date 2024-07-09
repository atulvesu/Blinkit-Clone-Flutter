class SnacksModel {
  final String img;
  final String title;
  final int id;
  final List<Product> subData;

  SnacksModel({
    required this.id,
    required this.img,
    required this.title,
    required this.subData,
  });

  static List<SnacksModel> dummyData = [
    SnacksModel(
        id: 1,
        img:
            'https://images.unsplash.com/photo-1617102738820-bee2545405fd?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8Q2hpcHN8ZW58MHx8MHx8fDA%3D',
        title: 'Chips & Namkeen',
        subData: [
          Product(
              id: 1,
              img:
                  'https://images.unsplash.com/photo-1617102738820-bee2545405fd?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8Q2hpcHN8ZW58MHx8MHx8fDA%3D',
              oldPrice: 69,
              price: 53,
              name: 'Banana Chips'),
          Product(
              id: 2,
              img:
                  'https://images.unsplash.com/photo-1613462847848-f65a8b231bb5?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8Q2hpcHN8ZW58MHx8MHx8fDA%3D',
              oldPrice: 100,
              price: 150,
              name: 'Masala Potato..'),
          Product(
              id: 3,
              img:
                  'https://images.unsplash.com/photo-1599493356626-9fdbdabfd9bd?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8Q2hpcHN8ZW58MHx8MHx8fDA%3D',
              oldPrice: 21,
              price: 32,
              name: "Fresh Chips"),
          Product(
              id: 4,
              img:
                  'https://images.unsplash.com/photo-1599490659101-963323d1da50?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fENoaXBzfGVufDB8fDB8fHww',
              oldPrice: 100,
              price: 99,
              name: 'Desi Chips'),
          Product(
              id: 5,
              img:
                  'https://images.unsplash.com/photo-1600952841320-db92ec4047ca?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fENoaXBzfGVufDB8fDB8fHww',
              oldPrice: 40,
              price: 30,
              name: "Doritos"),
          Product(
              id: 6,
              img:
                  'https://images.unsplash.com/photo-1550259114-ad7188f0a967?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzF8fENoaXBzfGVufDB8fDB8fHww',
              oldPrice: 100,
              price: 90,
              name: "Dilli Chips"),
          Product(
              id: 7,
              img:
                  'https://images.unsplash.com/photo-1628791392322-de3fc6348d1b?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mzh8fENoaXBzfGVufDB8fDB8fHww',
              oldPrice: 100,
              price: 50,
              name: 'Yum Chipos'),
          Product(
              id: 8,
              img:
                  'https://images.unsplash.com/photo-1623238913973-21e45cced554?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTF8fENoaXBzfGVufDB8fDB8fHww',
              oldPrice: 200,
              price: 100,
              name: 'Potato Chips'),
          Product(
              id: 9,
              img:
                  'https://images.unsplash.com/photo-1585220202939-c10ec7c6dc4e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTV8fENoaXBzfGVufDB8fDB8fHww',
              oldPrice: 50,
              price: 39,
              name: "Keogh\'s Chips")
        ]),
    SnacksModel(
      id: 2,
      img:
          'https://images.unsplash.com/photo-1495147466023-ac5c588e2e94?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8U3dlZXRzfGVufDB8fDB8fHww',
      title: 'Sweets & Chocolates',
      subData: [
        Product(
            id: 1,
            img:
                'https://images.unsplash.com/photo-1558234469-50fc184d1cc9?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fFN3ZWV0c3xlbnwwfHwwfHx8MA%3D%3D',
            oldPrice: 69,
            price: 53,
            name: 'Cake'),
      ],
    ),
    SnacksModel(
        id: 3,
        img:
            'https://images.unsplash.com/photo-1625740822008-e45abf4e01d5?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8c29mdCUyMGRyaW5rc3xlbnwwfHwwfHx8MA%3D%3D',
        title: 'Drinks & Juices',
        subData: [
          Product(
              id: 1,
              img:
                  'https://plus.unsplash.com/premium_photo-1670469009826-db07ab733925?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8c29mdCUyMGRyaW5rc3xlbnwwfHwwfHx8MA%3D%3D',
              oldPrice: 102,
              price: 110,
              name: 'Product')
        ]),
    SnacksModel(
        id: 4,
        img:
            'https://plus.unsplash.com/premium_photo-1671379526961-1aebb82b317b?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8dGVhJTIwY29mZmVlfGVufDB8fDB8fHww',
        title: 'Tea, Coffee & Milk Drinks',
        subData: [
          Product(
              id: 1,
              img:
                  'https://images.unsplash.com/photo-1571505463102-48bae91c6028?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8dGVhJTIwY29mZmVlfGVufDB8fDB8fHww',
              oldPrice: 105,
              price: 110,
              name: 'Coffee')
        ]),
    SnacksModel(
        id: 5,
        img:
            'https://images.unsplash.com/photo-1591874879354-bf0a6e982c60?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8SU5zdGFudCUyMGZvb2R8ZW58MHx8MHx8fDA%3D',
        title: 'Instant Food',
        subData: [
          Product(
              id: 1,
              img:
                  'https://images.unsplash.com/photo-1612929633738-8fe44f7ec841?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fElOc3RhbnQlMjBmb29kfGVufDB8fDB8fHww',
              oldPrice: 12,
              price: 13,
              name: 'Noodles')
        ]),
    SnacksModel(
        id: 6,
        img:
            'https://plus.unsplash.com/premium_photo-1695865411429-fc175f8d408d?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8U2F1Y2VzJTIwJTI2JTIwU3ByZWFkc3xlbnwwfHwwfHx8MA%3D%3D',
        title: 'Sauces & Spreads',
        subData: [
          Product(
              id: 1,
              img:
                  'https://images.unsplash.com/photo-1643879397174-4f10ac503566?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fFNhdWNlcyUyMCUyNiUyMFNwcmVhZHN8ZW58MHx8MHx8fDA%3D',
              oldPrice: 121,
              price: 101,
              name: 'Sauces Videsi')
        ]),
    SnacksModel(
        id: 7,
        img:
            'https://images.unsplash.com/photo-1710983165044-0cc32d1aab4b?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8UGFhbnxlbnwwfHwwfHx8MA%3D%3D',
        title: 'Paan Corner',
        subData: [
          Product(
              id: 1,
              img:
                  'https://media.istockphoto.com/id/1879408224/photo/two-different-types-of-mouth-freshener-one-dried-fruit-diced-pieces-covered-with-siler-foil.webp?b=1&s=170667a&w=0&k=20&c=DV9H4ZCPhtEM4ApMLm2ZbxxMwq2ezeAhczCrLFTgwwo=',
              oldPrice: 12,
              price: 101,
              name: 'Paan Corner')
        ]),
    SnacksModel(
        id: 8,
        img:
            'https://images.unsplash.com/photo-1497034825429-c343d7c6a68f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aWNldyUyMGNyZWFtfGVufDB8fDB8fHww',
        title: 'Ice Cream',
        subData: [
          Product(
              id: 1,
              img:
                  'https://plus.unsplash.com/premium_photo-1681488354887-ab9968dd9bc7?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTN8fGljZXclMjBjcmVhbXxlbnwwfHwwfHx8MA%3D%3D',
              oldPrice: 101,
              price: 151,
              name: 'Softy')
        ]),
  ];
}

class Product {
  final int id;
  final String name;
  final String img;
  final int oldPrice;
  final int price;

  Product(
      {required this.id,
      required this.img,
      required this.oldPrice,
      required this.price,
      required this.name});
}
