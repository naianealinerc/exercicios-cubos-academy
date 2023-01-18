import 'package:ecommerce_carrinho_de_compras/controller/products_cart_controller.dart';
import 'package:flutter/material.dart';

import '../../models/product.dart';

class ButtonAdd extends StatelessWidget {
  ButtonAdd({
    Key? key,
    required this.product,
    required this.controller
  }) : super(key: key);

  Product product;
  CartController controller;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.only(top: 2, bottom: 2),
      iconSize: 17,
      onPressed: () => controller.addProduct(product),
      icon: const Icon(Icons.add_shopping_cart),
    );
  }
}
