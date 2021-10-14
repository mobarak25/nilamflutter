class HomeSlider {
  final int id;
  final dynamic bidPrice, time;
  final String title, images, biddingStatus, btnText;

  HomeSlider({
    required this.id,
    required this.title,
    required this.images,
    required this.biddingStatus,
    required this.btnText,
    required this.bidPrice,
    required this.time,
  });
}

// Our demo Products

List<HomeSlider> demoHomeSlider = [
  HomeSlider(
    id: 1,
    title: "CURREN Sport Watches for Men Black",
    images: "assets/images/home_slider.png",
    biddingStatus: "Bidding is running out",
    bidPrice: 1200,
    time: "3d 7h 45m",
    btnText: "Make your bid 1",
  ),
  HomeSlider(
    id: 1,
    title: "CURREN Sport Watches for Men Black",
    images: "assets/images/home_slider.png",
    biddingStatus: "Bidding is running out",
    bidPrice: 1200,
    time: "3d 7h 45m",
    btnText: "Make your bid 2",
  ),
  HomeSlider(
    id: 1,
    title: "CURREN Sport Watches for Men Black",
    images: "assets/images/home_slider.png",
    biddingStatus: "Bidding is running out",
    bidPrice: 1200,
    time: "3d 7h 45m",
    btnText: "Make your bid",
  ),
];
