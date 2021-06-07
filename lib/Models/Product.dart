import 'package:flutter/material.dart';

class Product{
  final String name;
  final int id;
  final int price;
  final String image;
  final String type;

  Product({
    required this.name,
    required this.id,
    required this.price,
    required this.image,
    required this.type
  });
}


List<Product> vegetables = [
  Product(name: "Onion", id: 1, price: 20, image: "assets/vegetable_images/onion.jpg",type: "Vegetables"),
  Product(name: "Carrot", id: 2, price: 80, image: "assets/vegetable_images/carrot.jpg",type: "Vegetables"),
  Product(name: "Potato", id: 3, price: 40, image: "assets/vegetable_images/potato.jpg",type: "Vegetables"),
  Product(name: "Cucumber", id: 4, price: 50, image: "assets/vegetable_images/cucumber.jpg",type: "Vegetables"),
];

List<Product> fruits = [
  Product(name: "Apple", id: 5, price: 100, image: "assets/fruit_images/apple.jpg",type:"Fruits"),
  Product(name: "Mango", id: 6, price: 80, image: "assets/fruit_images/mango.jpg",type:"Fruits"),
  Product(name: "Orange", id: 7, price: 60, image: "assets/fruit_images/orange.jpg",type:"Fruits"),
  Product(name: "Kiwi", id: 8, price: 150, image: "assets/fruit_images/kiwi.jpg",type:"Fruits"),
];

List<Product> pulses = [
  Product(name: "Dry Beans", id: 9, price: 120, image: "assets/pulses_images/dry_beans.jpg",type:"Pulses"),
  Product(name: "Green Gram", id: 10, price: 180, image: "assets/pulses_images/green_gram.jpg",type:"Pulses"),
  Product(name: "Lobia", id: 11, price: 160, image: "assets/pulses_images/lobia.jpg",type:"Pulses"),
  Product(name: "masoor", id: 12, price: 50, image: "assets/pulses_images/masoor.png",type:"Pulses"),
];

List<Product> cereals = [
  Product(name: "Apple", id: 5, price: 100, image: "assets/fruit_images/apple.jpg",type:"Cereals"),
  Product(name: "Mango", id: 6, price: 80, image: "assets/fruit_images/mango.jpg",type:"Cereals"),
  Product(name: "Orange", id: 7, price: 60, image: "assets/fruit_images/orange.jpg",type:"Cereals"),
  Product(name: "Kiwi", id: 8, price: 150, image: "assets/fruit_images/kiwi.jpg",type:"Cereals"),
];

List<Product> etc = [
  Product(name: "Apple", id: 5, price: 100, image: "assets/fruit_images/apple.jpg",type:"etc"),
  Product(name: "Mango", id: 6, price: 80, image: "assets/fruit_images/mango.jpg",type:"etc"),
  Product(name: "Orange", id: 7, price: 60, image: "assets/fruit_images/orange.jpg",type:"etc"),
  Product(name: "Kiwi", id: 8, price: 150, image: "assets/fruit_images/kiwi.jpg",type:"etc"),
];



List<List<Product>> productNames = [vegetables, fruits, pulses, cereals, etc];