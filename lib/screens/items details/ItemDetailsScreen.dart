import 'package:flutter/material.dart';
import 'package:shop_app/objs/proudact.dart';
import 'package:shop_app/screens/items%20details/body.dart';

import '../../sourses.dart';

class ItemDetailsScreen extends StatefulWidget {
  static String routName = 'item details';
  @override
  _ItemDetailsScreenState createState() => _ItemDetailsScreenState();
}

class ItemDetailsScreenArguments {
  Product product;

  ItemDetailsScreenArguments(this.product);
}

class _ItemDetailsScreenState extends State<ItemDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final ItemDetailsScreenArguments args =
        ModalRoute.of(context).settings.arguments as ItemDetailsScreenArguments;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: args.product.color,
        elevation: 0,
        // leading: IconButton(
        //   icon: Icon(Icons.arrow_back),
        //   color: Colors.white,
        //   onPressed: () {},
        // ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.white,
            onPressed: () {},
          ),
          SizedBox(width: dPadding / 2),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            color: Colors.white,
            onPressed: () {},
            padding: EdgeInsets.symmetric(),
          ),
          SizedBox(width: dPadding / 2),
        ],
      ),
      body: ItemBody(args),
    );
  }
}
