import 'package:flutter/material.dart';

class Product{
  final String name;
  final int id;
  final int price;
  final String image;

  Product({
    required this.name,
    required this.id,
    required this.price,
    required this.image
  });
}

List<Product> vegetables = [
  Product(name: "Onion", id: 1, price: 20, image: "assets/vegetable_images/onion.jpg"),
  Product(name: "Carrot", id: 2, price: 80, image: "assets/vegetable_images/onion.jpg"),
  Product(name: "Potato", id: 3, price: 40, image: "assets/vegetable_images/onion.jpg"),
  Product(name: "Cucumber", id: 4, price: 50, image: "assets/vegetable_images/onion.jpg"),
];

List<Product> fruits = [
  Product(name: "Apple", id: 5, price: 100, image: "assets/vegetable_images/onion.jpg"),
  Product(name: "Mango", id: 6, price: 100, image: "assets/vegetable_images/onion.jpg"),
  Product(name: "Apple", id: 5, price: 100, image: "assets/vegetable_images/onion.jpg"),
  Product(name: "Apple", id: 5, price: 100, image: "assets/vegetable_images/onion.jpg"),
  Product(name: "Apple", id: 5, price: 100, image: "assets/vegetable_images/onion.jpg"),
];