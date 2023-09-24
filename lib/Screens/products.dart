import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../Model/productModel.dart';
class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
   List<Product> productList= [
     Product(1, "Burger", "assets/images/1.jpeg", "M 300"),
     Product(2, "Rice And Meat", "assets/images/2.jpeg", "s 100"),
     Product(3, "Pizza", "assets/images/3.jpeg", "M 200"),
     Product(4, "Rice And chicken", "assets/images/4.jpeg", "L 400"),

     Product(5, "Burger", "assets/images/1.jpeg", "M 300"),
     Product(6, "Rice And Meat", "assets/images/2.jpeg", "s 100"),
     Product(7, "Pizza", "assets/images/3.jpeg", "M 200"),
     Product(8, "Rice And chicken", "assets/images/4.jpeg", "L 400"),
     Product(1, "Burger", "assets/images/1.jpeg", "M 300"),
     Product(2, "Rice And Meat", "assets/images/2.jpeg", "s 100"),
     Product(3, "Pizza", "assets/images/3.jpeg", "M 200"),
     Product(4, "Rice And chicken", "assets/images/4.jpeg", "L 400"),


   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,

        title: const Text(
          "ProductList" ,
          style: TextStyle(
              color: Colors.white,

         ),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_bag_outlined))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
            itemCount: productList.length,
            itemBuilder: (context,index){
              return Card(
                child: ListTile(
                  leading: CircleAvatar(

                    backgroundImage: AssetImage(productList[index].image),

                  ),
                  title: Text(productList[index].name ,style: TextStyle(color: Colors.black),),
                  subtitle:Text(productList[index].price) ,
                  trailing: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: ElevatedButton(
                      onPressed: () {
                        context.go("/Cart");
                      }
                      ,
                      child: const Text("Add To Card"),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green
                      ),

                    ),
                  ),

                ),
              );

            }
        ),
      ),
    );
  }
}
