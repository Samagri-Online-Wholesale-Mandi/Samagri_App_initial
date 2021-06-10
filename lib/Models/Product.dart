import 'package:flutter/material.dart';

class Product{
  final String name;
  final int id;
  final int price;
  final String image;
  final String type;
  final Color color;

  Product({
    required this.name,
    required this.id,
    required this.price,
    required this.image,
    required this.type,
    required this.color
  });
}


List<Product> vegetables = [
  Product(name: "Onion", id: 1, price: 20, image: "assets/vegetable_images/onion.png",type: "Vegetables",color: Colors.white),
  Product(name: "Carrot", id: 2, price: 80, image: "assets/vegetable_images/carrot.png",type: "Vegetables",color: Colors.orange[300]!),
  Product(name: "Potato", id: 3, price: 40, image: "assets/vegetable_images/potato.png",type: "Vegetables",color: Colors.yellow[300]!),
  Product(name: "Cucumber", id: 4, price: 50, image: "assets/vegetable_images/cucumber.png",type: "Vegetables",color: Colors.green),
];

List<Product> fruits = [
  Product(name: "Apple", id: 5, price: 100, image: "assets/fruit_images/apple.png",type:"Fruits",color: Colors.red[300]!),
  Product(name: "Mango", id: 6, price: 80, image: "assets/fruit_images/mango.png",type:"Fruits",color: Colors.yellow[300]!),
  Product(name: "Orange", id: 7, price: 60, image: "assets/fruit_images/orange.png",type:"Fruits",color: Colors.orange[300]!),
  Product(name: "Kiwi", id: 8, price: 150, image: "assets/fruit_images/kiwi.png",type:"Fruits",color: Colors.green[300]!),
];

List<Product> pulses = [
  Product(name: "Dry Beans", id: 9, price: 120, image: "assets/pulses_images/dry_beans.png",type:"Pulses",color: Colors.brown[200]!),
  Product(name: "Green Gram", id: 10, price: 180, image: "assets/pulses_images/green_gram.png",type:"Pulses",color:Colors.green[300]! ),
  Product(name: "Lobia", id: 11, price: 160, image: "assets/pulses_images/lobia.png",type:"pulses",color: Colors.white),
  Product(name: "masoor", id: 12, price: 50, image: "assets/pulses_images/masoor.png",type:"pulses",color: Colors.brown[200]!),
];

List<List<Product>> productNames = [vegetables, fruits, pulses];