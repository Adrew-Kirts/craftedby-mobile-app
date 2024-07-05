import 'package:flutter/material.dart';

import '../screens/product_list_page.dart';

class PopupMenuService {
  static void select(int item, BuildContext context) {
    _select(item, context);
  }
}

void _select(int item, BuildContext context) {
  switch (item) {
    case 0:
      Navigator.of(context).popUntil((route) => route.isFirst);
      break;
    case 1:
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const ProductListPage(),
        ),
      );
      break;
  }
}