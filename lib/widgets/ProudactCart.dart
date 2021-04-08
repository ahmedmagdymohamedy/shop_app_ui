import 'package:flutter/material.dart';
import 'package:shop_app/objs/proudact.dart';
import 'package:shop_app/screens/items%20details/ItemDetailsScreen.dart';

class ProductCart extends StatelessWidget {
  Product product;
  ProductCart(this.product);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, ItemDetailsScreen.routName,
            arguments: ItemDetailsScreenArguments(product));
      },
      child: Container(
        height: 170,
        width: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: product.color,
        ),
        child: Column(
          children: [
            SizedBox(height: 20),
            Container(
              height: 110,
              child: Hero(
                tag: product.id,
                child: Image.asset(
                  product.image,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${product.title}',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  '\$${product.price}',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
