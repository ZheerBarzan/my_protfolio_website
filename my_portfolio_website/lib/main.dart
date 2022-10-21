import 'package:flutter/material.dart';
import 'package:my_portfolio_website/header/header_view.dart';
import 'package:my_portfolio_website/navigation_bar/navigation_bar_view.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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

    return Scaffold(
      endDrawer: DrawerView(),
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

class DrawerView extends StatelessWidget {
  const DrawerView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (_, size) {
        if (!size.isMobile) return SizedBox();
        return Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text('drawer header'),
                decoration: BoxDecoration(color: Colors.blue),
              ),
              for (var item in kNavigationItems)
                ListTile(
                  title: Text(item.text),
                  onTap: () {
                    Navigator.pop(context);
                  },
                )
            ],
          ),
        );
      },
    );
  }
}
