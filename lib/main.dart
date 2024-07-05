import 'package:crafted_by_mobile_app/screens/product_list_page.dart';
import 'package:crafted_by_mobile_app/screens/product_page.dart';
import 'package:crafted_by_mobile_app/service/popup_menu_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'models/product.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/products': (context) => const ProductListPage(),
      },
      onGenerateRoute: (settings) {
        if (settings.name!.startsWith('/products/')) {
          final product = settings.arguments as Product;
          return MaterialPageRoute(
            builder: (context) => ProductPage(product: product),
          );
        }
        return null;
      },
      debugShowCheckedModeBanner: false,
      title: 'Crafted By',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Crafted By'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _navigateToProducts(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => const ProductListPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFDAA07A),
        leading: PopupMenuButton<int>(
          icon: const Icon(Icons.menu, color: Colors.black),
          onSelected: (item) => PopupMenuService.select(item, context),
          itemBuilder: (context) => [
            const PopupMenuItem<int>(
              value: 0,
              child: Text('Homepage'),
            ),
            const PopupMenuItem<int>(
              value: 1,
              child: Text('Products'),
            ),
          ],
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => _navigateToProducts(context),
              child: SvgPicture.asset(
                'assets/images/CB_logo.svg',
                fit: BoxFit.contain,
                height: 32,
              ),
            ),
            const SizedBox(width: 8),
            const Text(
              'CraftedBy',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => _navigateToProducts(context),
              child: SvgPicture.asset(
                'assets/images/CB_logo.svg',
                width: 300,
              ),
            ),
            const SizedBox(height: 50),
            const Text(
              'Discover our unique handcrafted products',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black87,

              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: Text(
                'Each product is carefully crafted by skilled artisans using the finest materials. Explore our collection and find something special for yourself or a loved one.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFDAA07A),
                padding: const EdgeInsets.symmetric(
                  horizontal: 50,
                  vertical: 20,
                ),
              ),
              onPressed: () => _navigateToProducts(context),
              child: const Text(
                'View All Products',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
