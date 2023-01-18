import 'package:ecommerce_carrinho_de_compras/UI/components/list_cart.dart';
import 'package:flutter/material.dart';
import '../../controller/products_cart_controller.dart';
import '../../models/product.dart';
import '../../resources/strings.dart';
import '../../resources/theme.dart';
import '../../view_model/product_view_model.dart';

class CartView extends StatelessWidget {
  CartView({Key? key, required this.controller})
      : super(key: key);

  final theme = ThemeApp.themeLight;
  final CartController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: AnimatedBuilder(
            animation: controller,
            builder: (context, child) {
              if (controller.cartItems.isEmpty) {
                return Center(
                  child: Text(
                    Strings.cartIsEmpty,
                    style: theme.textTheme.bodyLarge,
                  ),
                );
              }
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    Strings.titleCart,
                    style: theme.textTheme.bodyLarge,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Expanded(
                    child: ListView.builder(
                        itemCount: controller.cartItems.length,
                        itemBuilder: ((context, index) {
                          final product = controller.cartItems[index];
                          return buildListCart(product);
                        })),
                  ),
                  Text(
                    "Total a pagar: R\$ ${(controller.totalPrice).toStringAsFixed(2)}",
                    style: theme.textTheme.bodyLarge,
                  ),
                ],
              );
            }));
  }

  Widget buildListCart(Product product) {
    final viewModel = ProductViewModel(product);
    return ListCart(
      product: product,
      controller: controller,
      viewModel: viewModel,
      theme: theme,
    );
  }
}
