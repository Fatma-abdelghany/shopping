import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../Model/productModel.dart';

class ShoppingCart extends StatefulWidget {
  const ShoppingCart({super.key});

  @override
  State<ShoppingCart> createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  List<Product> productList = [
    Product(1, "Burger", "assets/images/1.jpeg", "M 300"),
    Product(2, "Rice And Meat", "assets/images/2.jpeg", "s 100"),
    Product(3, "Pizza", "assets/images/3.jpeg", "M 200"),
    Product(4, "Rice And chicken", "assets/images/4.jpeg", "L 400"),
  ];

  int numOfProduct = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Shopping Cart",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back)),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.shopping_bag_outlined))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
            itemCount: productList.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(productList[index].image),
                  ),
                  title: Text(
                    productList[index].name,
                    style: TextStyle(color: Colors.black),
                  ),
                  subtitle: Text(productList[index].price),
                  trailing: FittedBox(
                    fit: BoxFit.fill,
                    child: Column(
                      children: [
                        IconButton(
                            onPressed: () {},
                            iconSize: 40,
                            color: Colors.black,
                            icon: Icon(Icons.delete)),
                        SizedBox(height: 10,),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          child: Row(
                            children: [
                              IconButton(
                                  onPressed: () {
                                    setState(() {
                                      numOfProduct--;
                                    });
                                  },
                                  iconSize: 30,
                                  color: Colors.white,
                                  icon: Icon(Icons.remove)
                              ),
                              SizedBox(width: 20,),
                              Text("$numOfProduct" ,style: TextStyle(fontSize: 20,fontWeight:FontWeight.w900,color: Colors.white),),
                              SizedBox(width: 20,),

                              IconButton(
                                  onPressed: () {
                                    setState(() {
                                      numOfProduct++;
                                    });
                                  },
                                  iconSize: 30,
                                  color: Colors.white,
                                  icon: Icon(Icons.add)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}

// child: Column(
//   children: [
//     IconButton(onPressed: (){}, icon: Icon(Icons.delete)),
//
//     Container(
//       color: Colors.green,
//       child: Row(
//         children: [
//           IconButton(
//               onPressed: (){
//                 setState(() {
//                 numOfProduct++;
//               });},
//               icon: Icon(Icons.add)),
//           Text("$numOfProduct"),
//           IconButton(
//               onPressed: (){
//                 setState(() {
//                   numOfProduct--;
//                 });
//           }, icon: Icon(Icons.minimize)),
//
//         ],
//       ),
//     ),
