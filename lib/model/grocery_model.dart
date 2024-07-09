class GroceryModel {
  final String img;
  final String title;
  final int id;
  final List<Product> subData;
  int cartQuantity;

  GroceryModel({
    required this.id,
    required this.img,
    required this.title,
    required this.subData,
    this.cartQuantity = 0,
  });

  static List<GroceryModel> dummyData = [
    GroceryModel(
        id: 1,
        img:
            'https://plus.unsplash.com/premium_photo-1689596509894-f9dbcd4f5de9?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8RnJ1aXRzfGVufDB8fDB8fHww',
        title: 'Vegetable & Fruits',
        subData: [
          Product(
              id: 1,
              img:
                  'https://images.unsplash.com/photo-1558818498-28c1e002b655?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8VmVnZXRhYmxlc3xlbnwwfHwwfHx8MA%3D%3D',
              oldPrice: 69,
              price: 53,
              name: 'Tomato(Tamater)'),
          Product(
              id: 2,
              img:
                  'https://plus.unsplash.com/premium_photo-1677528816982-673398569f03?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8UG90YXRvfGVufDB8fDB8fHww',
              oldPrice: 100,
              price: 150,
              name: 'Potato(Aloo)'),
          Product(
              id: 3,
              img:
                  'https://images.unsplash.com/photo-1617692913859-e492ea72afb7?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bGFkeSUyMGZpbmdlcnN8ZW58MHx8MHx8fDA%3D',
              oldPrice: 21,
              price: 32,
              name: "Lady Finger"),
          Product(
              id: 4,
              img:
                  'https://plus.unsplash.com/premium_photo-1675731118620-4376f3834253?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTN8fFZlZ2V0YUJMRVN8ZW58MHx8MHx8fDA%3D',
              oldPrice: 100,
              price: 99,
              name: 'Carrot'),
          Product(
              id: 5,
              img:
                  'https://plus.unsplash.com/premium_photo-1663844169550-7fa698a59231?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fFZlZ2V0YUJMRVN8ZW58MHx8MHx8fDA%3D',
              oldPrice: 40,
              price: 30,
              name: "Peas"),
          Product(
              id: 6,
              img:
                  'https://images.unsplash.com/photo-1503623758111-863eb2abd7a9?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YmVldHJvb3R8ZW58MHx8MHx8fDA%3D',
              oldPrice: 100,
              price: 90,
              name: "Beetroot"),
          Product(
              id: 7,
              img:
                  'https://media.istockphoto.com/id/172868533/photo/a-cauliflower-with-foliage-isolated-on-a-white-background.webp?b=1&s=170667a&w=0&k=20&c=8s_jKsXPx6icb6KGlYw3jrwAfO3yDDq4Gnop6Ra2K9o=',
              oldPrice: 100,
              price: 50,
              name: 'Cauliflower'),
          Product(
              id: 8,
              img:
                  'https://plus.unsplash.com/premium_photo-1677006197950-85bca52d09e0?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8bXVzcm9vbXxlbnwwfHwwfHx8MA%3D%3D',
              oldPrice: 200,
              price: 100,
              name: 'Musroom'),
          Product(
              id: 9,
              img:
                  'https://plus.unsplash.com/premium_photo-1661963465934-55eeb52f64d2?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8Q2FiYmFnZXxlbnwwfHwwfHx8MA%3D%3D',
              oldPrice: 50,
              price: 39,
              name: "Cabbage")
        ]),
    GroceryModel(
      id: 2,
      img:
          'https://images.unsplash.com/photo-1628102491629-778571d893a3?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8R3JvY2VyeXxlbnwwfHwwfHx8MA%3D%3D',
      title: 'Atta, Rice & Dal',
      subData: [
        Product(
            id: 1,
            img:
                'https://images.unsplash.com/photo-1628575005417-6560070073f6?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDIwfHx8ZW58MHx8fHx8',
            oldPrice: 69,
            price: 53,
            name: 'Product'),
      ],
    ),
    GroceryModel(
        id: 3,
        img:
            'https://images.unsplash.com/photo-1588964895597-cfccd6e2dbf9?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8R3JvY2VyeXxlbnwwfHwwfHx8MA%3D%3D',
        title: 'Oil, Ghee & Masala',
        subData: [
          Product(
              id: 1,
              img:
                  'https://images.unsplash.com/photo-1610049455204-15837fe00de0?dpr=1&h=294&w=294&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxjb2xsZWN0aW9uLXRodW1ibmFpbHx8MnBSc0RZc0VSQnd8fGVufDB8fHx8fA%3D%3D',
              oldPrice: 102,
              price: 110,
              name: 'Product')
        ]),
    GroceryModel(
        id: 4,
        img:
            'https://images.unsplash.com/photo-1545601445-4d6a0a0565f0?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fEdyb2Nlcnl8ZW58MHx8MHx8fDA%3D',
        title: 'Dairy, Bread ',
        subData: [
          Product(
              id: 1,
              img:
                  'https://images.unsplash.com/photo-1529686398651-b8112f4bb98c?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDExfHx8ZW58MHx8fHx8',
              oldPrice: 105,
              price: 110,
              name: 'Product')
        ]),
    GroceryModel(
        id: 5,
        img:
            'https://plus.unsplash.com/premium_photo-1686534211436-3c31b0f57e18?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fEdyb2Nlcnl8ZW58MHx8MHx8fDA%3D',
        title: 'Bakery & Biscuit',
        subData: [
          Product(
              id: 1,
              img:
                  'https://images.unsplash.com/photo-1526152505827-d2f3b5b4a52a?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE3fHx8ZW58MHx8fHx8',
              oldPrice: 12,
              price: 13,
              name: 'Product')
        ]),
    GroceryModel(
        id: 6,
        img:
            'https://plus.unsplash.com/premium_photo-1686840551986-54b832f9f5c7?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        title: 'Dry Fruits & Biscuits',
        subData: [
          Product(
              id: 1,
              img:
                  'https://images.unsplash.com/photo-1484820540004-14229fe36ca4?dpr=1&h=294&w=294&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxjb2xsZWN0aW9uLXRodW1ibmFpbHx8NDZqUnFFOXZ2bjR8fGVufDB8fHx8fA%3D%3D',
              oldPrice: 121,
              price: 101,
              name: 'Product')
        ]),
    GroceryModel(
        id: 7,
        img:
            'https://images.unsplash.com/photo-1594400315019-a03cc9acb85a?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDJ8fHxlbnwwfHx8fHw%3D',
        title: 'Others',
        subData: [
          Product(
              id: 1,
              img:
                  'https://images.unsplash.com/photo-1556767576-5ec41e3239ea?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDJ8fHxlbnwwfHx8fHw%3D',
              oldPrice: 12,
              price: 101,
              name: 'Product')
        ]),
    GroceryModel(
        id: 8,
        img:
            'https://images.unsplash.com/photo-1594400316020-f357da8a2848?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDl8fHxlbnwwfHx8fHw%3D',
        title: 'Others',
        subData: [
          Product(
              id: 1,
              img:
                  'https://plus.unsplash.com/premium_photo-1663091461237-c35b4178892d?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDh8fHxlbnwwfHx8fHw%3D',
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
