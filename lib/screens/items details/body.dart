import 'package:flutter/material.dart';

class ItemBody extends StatelessWidget {
  var args;
  ItemBody(this.args);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 360,
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(50),
                          bottomLeft: Radius.circular(50),
                        ),
                        color: args.product.color,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 25,
                      child: Container(
                        // height: 270,
                        width: 230,
                        child: Hero(
                          tag: args.product.id,
                          child: Image.asset(
                            args.product.image,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 80,
                      left: 30,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            args.product.title,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            '\$${args.product.price}',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  child: Text(
                    args.product.description,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w100,
                      height: 1.5,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.all(20),
          width: double.infinity,
          height: 70,
          decoration: BoxDecoration(
            color: args.product.color,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Buy it now ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 15),
                    height: 40,
                    width: 40,
                    child: Icon(
                      Icons.shopping_cart_outlined,
                      color: args.product.color,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 15),
                    height: 40,
                    width: 40,
                    child: Icon(
                      Icons.favorite_border,
                      color: args.product.color,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
