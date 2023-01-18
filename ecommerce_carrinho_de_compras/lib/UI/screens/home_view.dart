import 'package:ecommerce_carrinho_de_compras/UI/components/button_add.dart';
import 'package:ecommerce_carrinho_de_compras/UI/components/grid_list_products.dart';
import 'package:ecommerce_carrinho_de_compras/controller/products_cart_controller.dart';
import 'package:ecommerce_carrinho_de_compras/view_model/product_view_model.dart';
import 'package:flutter/material.dart';
import '../../models/product.dart';
import '../../resources/strings.dart';
import '../../resources/theme.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key, required this.controller})
      : super(key: key);

  final CartController controller;

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final theme = ThemeApp.themeLight;

  @override
  Widget build(BuildContext context) {
    
    final List<Product> products = widget.controller.items;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            Strings.titleHome,
            style: theme.textTheme.bodyLarge,
          ),
          const SizedBox(
            height: 30,
          ),
          Expanded(
            child: GridView.builder(
                itemCount: products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: ((context, index) {
                  final product = products[index];

                  return buildGridList(product);
                })),
          )
        ],
      ),
    );
  }

  Widget buildGridList(Product product) {
    final viewModel = ProductViewModel(product);

    return GridListProducts(
      viewModel: viewModel,
      theme: theme,
      widgetButton: ButtonAdd(
        product: product,
        controller: widget.controller,
      ),
    );
  }
}
