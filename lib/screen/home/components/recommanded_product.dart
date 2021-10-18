import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:nilam/constants.dart';
import 'package:nilam/models/RecommendedProductData.dart';
import 'package:nilam/screen/home/components/price.dart';
import 'package:nilam/screen/product_details/product_details_screen.dart';

class RecommendedProduct extends StatelessWidget {
  const RecommendedProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: StaggeredGridView.countBuilder(
        staggeredTileBuilder: (int index) => StaggeredTile.fit(2),
        shrinkWrap: true,
        physics: ScrollPhysics(),
        //or use commited 2 lines for scroll
        // scrollDirection: Axis.vertical,
        // physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 4,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        itemCount: demoRecommendedProduc.length,
        itemBuilder: (BuildContext context, int index) => GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, ProductDetailsScreen.routeName);
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: kBorderColor),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: kBorderColor.withOpacity(0.4),
                  offset: Offset(1, 1),
                  spreadRadius: 1,
                  blurRadius: 2,
                ),
              ],
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  child: Image.asset(
                    demoRecommendedProduc[index].images[0],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        demoRecommendedProduc[index].title,
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xFF333741),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 5),
                      if (demoRecommendedProduc[index].isRating) _buildRating(index),
                      SizedBox(height: 5),
                      Price(
                        price: demoRecommendedProduc[index].price,
                        lastBid: demoRecommendedProduc[index].lastbid,
                        startingBid: demoRecommendedProduc[index].startingBid,
                        isAuction: demoRecommendedProduc[index].isAuction,
                      ),
                      SizedBox(height: 3),
                      if (!demoRecommendedProduc[index].isAuction)
                        Text(
                          "${demoRecommendedProduc[index].sold.toString()} Sold",
                          style: TextStyle(fontSize: 13),
                        ),
                      SizedBox(height: 2),
                      if (!demoRecommendedProduc[index].isAuction)
                        Text(
                          "Shipping: tk ${demoRecommendedProduc[index].shipping.toString()}",
                          style: TextStyle(fontSize: 13),
                        ),
                      if (demoRecommendedProduc[index].isAuction) _buildTotalBid(index),
                      if (demoRecommendedProduc[index].isAuction)
                        Text(
                          "${demoRecommendedProduc[index].time}",
                          style: TextStyle(fontSize: 13),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Text _buildTotalBid(int index) {
    return Text.rich(
      TextSpan(
        text: "Bid:",
        style: TextStyle(fontSize: 13),
        children: [
          TextSpan(
            text: "${demoRecommendedProduc[index].totalBid.toString()}",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: kPrimaryColor,
            ),
          ),
        ],
      ),
    );
  }

  Row _buildRating(int index) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 5,
            vertical: 2,
          ),
          margin: EdgeInsets.only(right: 5),
          decoration: BoxDecoration(color: Color(0XFFDDF6F3), borderRadius: BorderRadius.circular(5)),
          child: Row(
            children: [
              Text(
                demoRecommendedProduc[index].rating.toString(),
                style: TextStyle(color: kGreenColor, fontSize: 12),
              ),
              Icon(Icons.star, size: 12, color: kGreenColor)
            ],
          ),
        ),
        Text("(${demoRecommendedProduc[index].totalRating})", style: TextStyle(fontSize: 12)),
      ],
    );
  }
}
