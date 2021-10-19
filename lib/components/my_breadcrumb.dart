import 'package:flutter/material.dart';
import 'package:flutter_breadcrumb/flutter_breadcrumb.dart';
import 'package:nilam/constants.dart';

class Mybreadcrumb extends StatelessWidget {
  const Mybreadcrumb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> mylist = ["Technology", "Home decore", "Wallpaper", "Technology"];
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          BreadCrumb.builder(
            itemCount: mylist.length,
            builder: (index) {
              return BreadCrumbItem(
                content: Text("${mylist[index]}"),
              );
            },
            divider: Icon(Icons.chevron_right, size: 16, color: kTextColor),
          ),
        ],
      ),
    );
  }
}
