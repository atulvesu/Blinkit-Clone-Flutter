class BathModel {
  final String img;
  final String title;
  final int id;
  final List<Product> subData;

  BathModel({
    required this.id,
    required this.img,
    required this.title,
    required this.subData,
  });

  static List<BathModel> dummyData = [
    BathModel(
        id: 1,
        img:
            'https://images.unsplash.com/photo-1580437082423-4f0e58a2d413?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8YmF0aCUyMHByb2R1Y3RzfGVufDB8fDB8fHww',
        title: 'Bath & Body',
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
    BathModel(
      id: 2,
      img:
          'https://plus.unsplash.com/premium_photo-1677849533990-ad83e1d7024e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aGFpciUyMHByb2R1Y3RzfGVufDB8fDB8fHww',
      title: 'Hair',
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
    BathModel(
        id: 3,
        img:
            'https://images.unsplash.com/photo-1606424359367-af69e3da9832?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8RmFjZSUyMGNyZWFtfGVufDB8fDB8fHww',
        title: 'Skin & Face',
        subData: [
          Product(
              id: 1,
              img:
                  'https://images.unsplash.com/photo-1621770522713-8b47c60a6227?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8RmFjZSUyMGNyZWFtfGVufDB8fDB8fHww',
              oldPrice: 102,
              price: 110,
              name: 'Product')
        ]),
    BathModel(
        id: 4,
        img:
            'https://images.unsplash.com/photo-1596462502278-27bfdc403348?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8YmVhdXR5JTIwcHJvZHVjdHN8ZW58MHx8MHx8fDA%3D',
        title: 'Beauty',
        subData: [
          Product(
              id: 1,
              img:
                  'https://images.unsplash.com/photo-1625753783470-ec2ab4efeeec?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8YmVhdXR5JTIwcHJvZHVjdHN8ZW58MHx8MHx8fDA%3D',
              oldPrice: 105,
              price: 110,
              name: 'Product')
        ]),
    BathModel(
        id: 5,
        img:
            'https://images.unsplash.com/photo-1523501859272-afa857e87881?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8RmVtaW5pbmV8ZW58MHx8MHx8fDA%3D',
        title: 'Feminine',
        subData: [
          Product(
              id: 1,
              img:
                  'https://images.unsplash.com/photo-1527683040093-3a2b80ed1592?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fEZlbWluaW5lfGVufDB8fDB8fHww',
              oldPrice: 12,
              price: 13,
              name: 'Product')
        ]),
    BathModel(
        id: 6,
        img:
            'https://images.unsplash.com/photo-1491013516836-7db643ee125a?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YmFieSUyMGNhcmUlMjBwcm9kdWN0c3xlbnwwfHwwfHx8MA%3D%3D',
        title: 'Baby Care',
        subData: [
          Product(
              id: 1,
              img:
                  'https://images.unsplash.com/photo-1475178278683-8c225ae5ec3e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fGJhYnklMjBjYXJlJTIwcHJvZHVjdHN8ZW58MHx8MHx8fDA%3D',
              oldPrice: 121,
              price: 101,
              name: 'Product')
        ]),
    BathModel(
        id: 7,
        img:
            'https://plus.unsplash.com/premium_photo-1668487826874-ecb21f98bb19?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8SGVhbHRoJTIwYW5kZiUyMHBoYVJNQXxlbnwwfHwwfHx8MA%3D%3D',
        title: 'Health',
        subData: [
          Product(
              id: 1,
              img:
                  'https://images.unsplash.com/photo-1494597564530-871f2b93ac55?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8SGVhbHRoJTIwYW5kZiUyMHBoYVJNQXxlbnwwfHwwfHx8MA%3D%3D',
              oldPrice: 12,
              price: 101,
              name: 'Health')
        ]),
    BathModel(
        id: 8,
        img:
            'https://images.unsplash.com/photo-1512867957657-38dbae50a35b?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fEhlYWx0aCUyMGFuZGYlMjBwaGFSTUF8ZW58MHx8MHx8fDA%3D',
        title: 'Wellness',
        subData: [
          Product(
              id: 1,
              img:
                  'https://plus.unsplash.com/premium_photo-1682310231531-148748e7684f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTN8fEhlYWx0aCUyMGFuZGYlMjBwaGFSTUF8ZW58MHx8MHx8fDA%3D',
              oldPrice: 101,
              price: 151,
              name: 'Product')
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
