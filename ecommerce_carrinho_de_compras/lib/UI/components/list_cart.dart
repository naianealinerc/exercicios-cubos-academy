import 'package:ecommerce_carrinho_de_compras/controller/products_cart_controller.dart';
import 'package:ecommerce_carrinho_de_compras/models/product.dart';
import 'package:flutter/material.dart';
import '../../view_model/product_view_model.dart';

class ListCart extends StatelessWidget {
  const ListCart(
      {super.key,
      required this.controller,
      required this.product,
      required this.theme,
      required this.viewModel});

  final ProductViewModel viewModel;
  final ThemeData theme;
  final Product product;
  final CartController controller;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(5),
      leading: Image(image: viewModel.productImage!),
      title: Text(viewModel.productName),
      subtitle: Text(viewModel.productPriceTxt),
      trailing: IconButton(
          onPressed: () => controller.removeProduct(product),
          icon: const Icon(Icons.remove_shopping_cart)),
    );
  }
}
