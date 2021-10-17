import 'package:flutter/material.dart';

class RecommendedProduc {
  final int id, qty, totalRating, sold, totalBid;
  final String category, title, condition, stockType, time, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, startingBid, lastbid, price, shipping;
  final bool isFavourite, isPopular, isRating, isAuction;

  RecommendedProduc({
    required this.id,
    this.price = 0,
    this.sold = 0,
    this.shipping = 0.0,
    this.totalBid = 0,
    required this.category,
    required this.qty,
    required this.title,
    this.condition = "New",
    this.stockType = "Single",
    this.time = "",
    required this.images,
    required this.colors,
    this.rating = 0,
    this.totalRating = 0,
    this.isFavourite = false,
    this.isRating = false,
    this.isPopular = false,
    this.isAuction = false,
    this.startingBid = 0,
    this.lastbid = 0,
    required this.description,
  });
}

// Our demo Products

List<RecommendedProduc> demoRecommendedProduc = [
  RecommendedProduc(
    id: 1,
    price: 500,
    sold: 5,
    shipping: 50,
    isRating: true,
    rating: 4.8,
    totalRating: 3,
    qty: 4,
    category: "Electronics",
    images: [
      "assets/images/product_5.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "TARION Camera Backpack",
    description: description,
    isFavourite: true,
    isPopular: true,
  ),
  RecommendedProduc(
    id: 2,
    isAuction: true,
    startingBid: 2000,
    lastbid: 20000,
    totalBid: 19,
    qty: 4,
    category: "Electronics",
    time: "8 Hours Left",
    images: ["assets/images/product_6.png"],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Rose Water for Face & Hair",
    description: description,
    isFavourite: true,
    isPopular: true,
  ),
  RecommendedProduc(
    id: 3,
    qty: 4,
    category: "Electronics",
    time: "2 Dey, 3 Hours Left",
    images: [
      "assets/images/product_7.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Victiv 72-inch Camera",
    startingBid: 10000,
    lastbid: 11000,
    description: description,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  RecommendedProduc(
    id: 4,
    qty: 4,
    category: "Electronics",
    time: "2 Dey, 3 Hours Left",
    images: [
      "assets/images/product_8.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "VEATOOL 5.0 Bluetooth gives you what you want in your gaming from over precision control your games to sharing",
    startingBid: 10000,
    lastbid: 11000,
    description: description,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  RecommendedProduc(
    id: 5,
    qty: 4,
    category: "Electronics",
    time: "2 Dey, 3 Hours Left",
    images: [
      "assets/images/product_9.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "VEATOOL 5.0 Bluetooth gives you what",
    startingBid: 10000,
    lastbid: 11000,
    description: description,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  RecommendedProduc(
    id: 6,
    qty: 4,
    category: "Electronics",
    time: "2 Dey, 3 Hours Left",
    images: [
      "assets/images/product_10.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "VEATOOL 5.0 Bluetooth gives you what",
    startingBid: 10000,
    lastbid: 11000,
    description: description,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  RecommendedProduc(
    id: 7,
    qty: 4,
    category: "Electronics",
    time: "2 Dey, 3 Hours Left",
    images: [
      "assets/images/product_11.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "VEATOOL 5.0 Bluetooth gives you what gives you what",
    startingBid: 10000,
    lastbid: 11000,
    description: description,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
];

const String description = "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …";
