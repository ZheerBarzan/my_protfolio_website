import 'package:flutter/material.dart';
import 'package:my_portfolio_web/header/header_view.dart';
import 'package:my_portfolio_web/navigation_bar/navigation_bar_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ZheerBarzan',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PortfolioView(),
    );
  }
}

class PortfolioView extends StatelessWidget {
  const PortfolioView({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    print(height);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            NavigationBarView(),
            HeaderView(),
            Container(height: height, width: width, color: Colors.blue),
          ],
        ),
      ),
    );
  }
}
