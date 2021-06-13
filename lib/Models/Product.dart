import 'package:flutter/material.dart';

class Category{
  final String name;
  final int price;
  final int quantity;
  final String scale;

  Category({
    required this.name,
    required this.price,
    required this.quantity,
    required this.scale
  });
}

class Product{
  final String name;
  final int id;
  final String image;
  final String type;
  final Color color;
  List<Category> categories;

  Product({
    required this.name,
    required this.id,
    required this.image,
    required this.type,
    required this.color,
    required this.categories
  });
}

//Vegetables
List<Product> vegetables = [
  Product(
    name: "Onion",
    id: 1,
    image: "assets/vegetable_images/onion.png",
    type: "Vegetables",color: Colors.white,
    categories: [
      Category(name: "Big onion",price: 100,quantity: 20, scale: "Kg"),
      Category(name: "Medium onion",price: 80,quantity: 30, scale: "Kg"),
      Category(name: "Small onion",price: 70,quantity: 10, scale: "Kg")
    ]
  ),

  Product(
    name: "Carrot",
    id: 2,
    image: "assets/vegetable_images/carrot.png",
    type: "Vegetables",
    color: Colors.orange[300]!,
    categories: [
      Category(name: "Long carrot",price: 100,quantity: 20, scale: "Kg"),
      Category(name: "Thick Carrot",price: 80,quantity: 30, scale: "Kg"),
      Category(name: "Medium Size",price: 70,quantity: 10, scale: "Kg"),
      Category(name: "Small Size",price: 50,quantity: 10, scale: "Kg"),
    ]
  ),

  Product(
    name: "Potato",
    id: 3,
    image: "assets/vegetable_images/potato.png",
    type: "Vegetables",
    color: Colors.yellow[300]!,
    categories: [
      Category(name: "Rounded Potato",price: 100,quantity: 20, scale: "kg"),
      Category(name: "Medium Potato",price: 80,quantity: 30, scale: "kg"),
      Category(name: "Baby Potato",price: 70,quantity: 10, scale: "kg"),
    ]
  ),

  Product(
    name: "Cucumber",
    id: 4,
    image: "assets/vegetable_images/cucumber.png",
    type: "Vegetables",
    color: Colors.green,
    categories: [
      Category(name: "Long Cucumber",price: 100,quantity: 20, scale: "kg" ),
      Category(name: "Thick Cucumber",price: 80,quantity: 30, scale: "kg"),
      Category(name: "Medium Cucumber",price: 70,quantity: 10, scale: "kg"),
      Category(name: "Small Cucumber",price: 50,quantity: 10, scale: "kg"),
    ]
  ),
];

//Fruits
List<Product> fruits = [
  Product(
    name: "Apple",
    id: 5,
    image: "assets/fruit_images/apple.png",
    type:"Fruits",
    color: Colors.red[300]!,
    categories: [
      Category(name: "Kashmir apple", price: 180, quantity: 20, scale: "Kg"),
      Category(name: "Medium apple", price: 150, quantity: 10, scale: "Kg"),
      Category(name: "Small apple", price: 120, quantity: 10, scale: "Kg"),
    ]
  ),
  Product(
    name: "Mango",
    id: 6,
    image: "assets/fruit_images/mango.png",
    type:"Fruits",
    color: Colors.yellow[300]!,
    categories: [
      Category(name: "Alphonso Mango", price: 180, quantity: 20, scale: "Kg"),
      Category(name: "Kesar Mango", price: 150, quantity: 10, scale: "Kg"),
      Category(name: "Badami Mangoes", price: 120, quantity: 10, scale: "Kg"),
    ]
  ),
  Product(
    name: "Orange",
    id: 7,
    image: "assets/fruit_images/orange.png",
    type:"Fruits",
    color: Colors.orange[300]!,
    categories: [
      Category(name: "Navel Orange", price: 180, quantity: 20, scale: "Kg"),
      Category(name: "Blood Orange", price: 150, quantity: 10, scale: "Kg"),
      Category(name: "Mandarin Orange", price: 120, quantity: 10, scale: "Kg"),
    ]
  ),
  Product(
    name: "Kiwi",
    id: 8,
    image: "assets/fruit_images/kiwi.png",
    type:"Fruits",
    color: Colors.green[300]!,
    categories: [
      Category(name: "Green Kiwi", price: 180, quantity: 20, scale: "Kg"),
      Category(name: "Golden Kiwi", price: 150, quantity: 10, scale: "Kg"),
      Category(name: "Hardy Kiwi.", price: 120, quantity: 10, scale: "Kg"),
    ]
  ),
];

//Pulses
List<Product> pulses = [
  Product(
    name: "Dry Beans",
    id: 9,
    image: "assets/pulses_images/dry_beans.png",
    type:"Pulses",
    color: Colors.brown[200]!,
    categories: [
      Category(name: "Normal beans", price: 100, quantity: 10, scale: "Kg")
    ]
  ),
  Product(
    name: "Green Gram",
    id: 10,
    image: "assets/pulses_images/green_gram.png",
    type:"Pulses",
    color:Colors.green[300]!,
    categories: [
      Category(name: "Normal grams", price: 70, quantity: 10, scale: "Kg")
    ]
  ),
  Product(
    name: "Lobia",
    id: 11,
    image: "assets/pulses_images/lobia.png",
    type:"pulses",
    color: Colors.white,
    categories: [
      Category(name: "Normal Lobia", price: 80, quantity: 8, scale: "Kg")
    ]
  ),
  Product(
    name: "masoor",
    id: 12,
    image: "assets/pulses_images/masoor.png",
    type:"pulses",
    color: Colors.brown[200]!,
    categories:[
      Category(name: "Red massor", price: 100, quantity: 10, scale: "Kg"),
      Category(name: "Brown massor", price: 80, quantity: 15, scale: "Kg"),
    ]
  )
];

List<Product> pulses2 = [
  Product(
      name: "Dry Beans",
      id: 9,
      image: "assets/pulses_images/dry_beans.png",
      type:"Pulses",
      color: Colors.brown[200]!,
      categories: [
        Category(name: "Normal beans", price: 100, quantity: 10, scale: "Kg")
      ]
  ),
  Product(
      name: "Green Gram",
      id: 10,
      image: "assets/pulses_images/green_gram.png",
      type:"Pulses",
      color:Colors.green[300]!,
      categories: [
        Category(name: "Normal grams", price: 70, quantity: 10, scale: "Kg")
      ]
  ),
  Product(
      name: "Lobia",
      id: 11,
      image: "assets/pulses_images/lobia.png",
      type:"pulses",
      color: Colors.white,
      categories: [
        Category(name: "Normal Lobia", price: 80, quantity: 8, scale: "Kg")
      ]
  ),
  Product(
      name: "masoor",
      id: 12,
      image: "assets/pulses_images/masoor.png",
      type:"pulses",
      color: Colors.brown[200]!,
      categories:[
        Category(name: "Red massor", price: 100, quantity: 10, scale: "Kg"),
        Category(name: "Brown massor", price: 80, quantity: 15, scale: "Kg"),
      ]
  )
];

List<List<Product>> productNames = [vegetables, fruits, pulses, pulses2];