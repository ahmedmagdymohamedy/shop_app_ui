import 'package:flutter/material.dart';
import 'package:shop_app/objs/proudact.dart';
import 'package:shop_app/sourses.dart';
import 'package:shop_app/widgets/ProudactCart.dart';

class HomePageScreens extends StatefulWidget {
  static String routName = '/';
  @override
  _HomePAgeScreensState createState() => _HomePAgeScreensState();
}

class _HomePAgeScreensState extends State<HomePageScreens> {
  List<String> categorys = [
    'Hand Bag',
    'jewellery',
    'footwear',
    'Dreess',
  ];
  int selectetCategory = 0;
  @override
  Widget build(BuildContext context) {
    var categorySection = Container(
      padding:
          EdgeInsets.symmetric(horizontal: dPadding, vertical: dPadding / 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Women',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: dPadding / 4),
          Container(
            height: 54,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categorys.length,
                itemBuilder: (ctx, i) => Padding(
                      padding: const EdgeInsets.only(
                        right: 12,
                        top: 6,
                        bottom: 6,
                      ),
                      child: Container(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              selectetCategory = i;
                            });
                          },
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              categorys[i],
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: i == selectetCategory
                                    ? FontWeight.bold
                                    : FontWeight.w300,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )),
          ),
        ],
      ),
    );
    return Scaffold(
        backgroundColor: defultBackGroundColor,
        appBar: AppBar(
          backgroundColor: defultBackGroundColor,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: defultGray,
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              color: defultGray,
              onPressed: () {},
            ),
            SizedBox(width: dPadding / 2),
            IconButton(
              icon: Icon(Icons.shopping_cart),
              color: defultGray,
              onPressed: () {},
              padding: EdgeInsets.symmetric(),
            ),
            SizedBox(width: dPadding / 2),
          ],
        ),
        body: Column(
          children: [
            categorySection,
            Expanded(
              child: SingleChildScrollView(
                child: Wrap(
                  spacing: 20,
                  runSpacing: 20,
                  children: [...products.map((e) => ProductCart(e))],
                ),
              ),
            ),
          ],
        ));
  }
}
