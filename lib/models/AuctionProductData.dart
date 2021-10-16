import 'package:flutter/material.dart';

class AuctionProduct {
  final int id;
  final String category, title, condition, stockType, time, description;
  final int qty;
  final List<String> images;
  final List<Color> colors;
  final double rating, startingBid, lastbid;
  final bool isFavourite, isPopular;

  AuctionProduct({
    required this.id,
    required this.category,
    required this.qty,
    required this.title,
    this.condition = "New",
    this.stockType = "Single",
    required this.time,
    required this.images,
    required this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    required this.startingBid,
    required this.lastbid,
    required this.description,
  });
}

// Our demo Products

List<AuctionProduct> demoAuctionProduct = [
  AuctionProduct(
    id: 1,
    qty: 4,
    category: "Electronics",
    time: "1 Dey, 6 Hours Left",
    images: [
      "assets/images/featured_auction_1.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Wireless Controller for PS4™",
    startingBid: 2000,
    lastbid: 20000,
    description: description,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  AuctionProduct(
    id: 1,
    qty: 4,
    category: "Electronics",
    time: "8 Hours Left",
    images: ["assets/images/featured_auction_2.png"],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Wireless Controller for PS4™",
    startingBid: 2000,
    lastbid: 2000,
    description: description,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  AuctionProduct(
    id: 1,
    qty: 4,
    category: "Electronics",
    time: "2 Dey, 3 Hours Left",
    images: [
      "assets/images/featured_auction_3.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Wireless Controller for PS4™",
    startingBid: 10000,
    lastbid: 11000,
    description: description,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
];

const String description =
    "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …";
