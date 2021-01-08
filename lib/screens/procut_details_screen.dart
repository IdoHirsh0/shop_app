import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/products_provider.dart';

class ProductDetailsScreen extends StatelessWidget {
  static const routeName = '/product-details-screen';

  @override
  Widget build(BuildContext context) {
    final productsProvider = Provider.of<ProductsProvider>(
      context,
      listen: false,
    );

    final productId = ModalRoute.of(context).settings.arguments as String;
    final product = productsProvider.findById(productId);

    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
      ),
      body: Center(
        child: Text('Details!'),
      ),
    );
  }
}
