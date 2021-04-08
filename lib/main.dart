import 'package:flutter/material.dart';
import 'package:shop_app/screens/home%20page/HomePageScreen.dart';
import 'package:shop_app/screens/items%20details/ItemDetailsScreen.dart';
import 'package:shop_app/sourses.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme:
            Theme.of(context).textTheme.apply(bodyColor: defultTextColor),
      ),
      initialRoute: '/',
      routes: {
        HomePageScreens.routName: (ctx) => HomePageScreens(),
        ItemDetailsScreen.routName: (ctx) => ItemDetailsScreen(),
      },
      // home: HomePageScreens(),
    );
  }
}
