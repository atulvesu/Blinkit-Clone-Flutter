class HomeModel {
  final String img;
  final String title;
  final int id;
  final List<Product> subData;

  HomeModel({
    required this.id,
    required this.img,
    required this.title,
    required this.subData,
  });

  static List<HomeModel> dummyData = [
    HomeModel(
        id: 1,
        img:
            'https://images.unsplash.com/photo-1519710164239-da123dc03ef4?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8SG9tZSUyMGFuZCUyMGxpZmUlMjBzdHlsZXxlbnwwfHwwfHx8MA%3D%3D',
        title: 'Home & LifeStyle',
        subData: [
          Product(
              id: 1,
              img:
                  'https://plus.unsplash.com/premium_photo-1671379513621-bd4bff9f7557?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8c29hcCUyMGFuZCUyMHNoYXBvb3xlbnwwfHwwfHx8MA%3D%3D',
              oldPrice: 69,
              price: 53,
              name: 'Soap '),
          Product(
              id: 2,
              img:
                  'https://plus.unsplash.com/premium_photo-1671379515272-b32810cfc630?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8c29hcCUyMGFuZCUyMHNoYXBvb3xlbnwwfHwwfHx8MA%3D%3D',
              oldPrice: 100,
              price: 150,
              name: 'Soap'),
          Product(
              id: 3,
              img:
                  'https://images.unsplash.com/photo-1546552768-9e3a94b38a59?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8c29hcCUyMGFuZCUyMHNoYXBvb3xlbnwwfHwwfHx8MA%3D%3D',
              oldPrice: 21,
              price: 32,
              name: "Soap"),
          Product(
              id: 4,
              img:
                  'https://images.unsplash.com/photo-1556227702-5ec9eb8df3ff?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fHNvYXAlMjBhbmQlMjBzaGFwb298ZW58MHx8MHx8fDA%3D',
              oldPrice: 100,
              price: 99,
              name: 'Soap'),
          Product(
              id: 5,
              img:
                  'https://images.unsplash.com/photo-1556228578-f9707385e031?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fHNvYXAlMjBhbmQlMjBzaGFwb298ZW58MHx8MHx8fDA%3D',
              oldPrice: 40,
              price: 30,
              name: "Soap"),
          Product(
              id: 6,
              img:
                  'https://images.unsplash.com/photo-1604565750665-3501b2c00194?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fHNvYXAlMjBhbmQlMjBzaGFwb298ZW58MHx8MHx8fDA%3D',
              oldPrice: 100,
              price: 90,
              name: "Soap"),
          Product(
              id: 7,
              img:
                  'https://images.unsplash.com/photo-1556037914-bc3c9094e061?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fHNvYXAlMjBhbmQlMjBzaGFwb298ZW58MHx8MHx8fDA%3D',
              oldPrice: 100,
              price: 50,
              name: 'Soap'),
          Product(
              id: 8,
              img:
                  'https://images.unsplash.com/photo-1604603815783-2bd94c5a819f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8c29hcCUyMGFuZCUyMHNoYXBvb3xlbnwwfHwwfHx8MA%3D%3D',
              oldPrice: 200,
              price: 100,
              name: 'Soap'),
          Product(
              id: 9,
              img:
                  'https://images.unsplash.com/photo-1603533627544-4b256401b1ee?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fHNvYXAlMjBhbmQlMjBzaGFwb298ZW58MHx8MHx8fDA%3D',
              oldPrice: 50,
              price: 39,
              name: "Soap")
        ]),
    HomeModel(
      id: 2,
      img:
          'https://plus.unsplash.com/premium_photo-1677849533990-ad83e1d7024e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aGFpciUyMHByb2R1Y3RzfGVufDB8fDB8fHww',
      title: 'Cleaners & Repellents',
      subData: [
        Product(
            id: 1,
            img:
                'https://images.unsplash.com/photo-1610705267928-1b9f2fa7f1c5?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8aGFpciUyMHByb2R1Y3RzfGVufDB8fDB8fHww',
            oldPrice: 69,
            price: 53,
            name: 'Product'),
      ],
    ),
    HomeModel(
        id: 3,
        img:
            'https://plus.unsplash.com/premium_photo-1673709635732-c83149ac689d?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8RWxlY3Ryb25pY3N8ZW58MHx8MHx8fDA%3D',
        title: 'Electronics',
        subData: [
          Product(
              id: 1,
              img:
                  'https://images.unsplash.com/photo-1592659762303-90081d34b277?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8RWxlY3Ryb25pY3N8ZW58MHx8MHx8fDA%3D',
              oldPrice: 102,
              price: 110,
              name: 'Product')
        ]),
    HomeModel(
        id: 4,
        img:
            'https://images.unsplash.com/photo-1577741314755-048d8525d31e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8R2FtZXN8ZW58MHx8MHx8fDA%3D',
        title: 'Games',
        subData: [
          Product(
              id: 1,
              img:
                  'https://images.unsplash.com/photo-1611996575749-79a3a250f948?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fEdhbWVzfGVufDB8fDB8fHww',
              oldPrice: 105,
              price: 110,
              name: 'Games')
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
