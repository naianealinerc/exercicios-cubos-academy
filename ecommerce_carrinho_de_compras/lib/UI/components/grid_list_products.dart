import 'package:ecommerce_carrinho_de_compras/controller/products_cart_controller.dart';
import 'package:ecommerce_carrinho_de_compras/resources/theme.dart';
import 'package:ecommerce_carrinho_de_compras/view_model/product_view_model.dart';
import 'package:flutter/material.dart';
import '../../models/product.dart';
import 'button_add.dart';

class GridListProducts extends StatelessWidget {
  GridListProducts({Key? key, required this.widgetButton ,required this.viewModel, required this.theme})
      : super(key: key);

  final ProductViewModel viewModel;
  final ThemeData theme;
  final ButtonAdd widgetButton;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 120,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
          clipBehavior: Clip.antiAlias,
          child: ClipPath(
            child: Image(
              image: viewModel.productImage!,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          width: 170,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                viewModel.productName,
                style: theme.textTheme.bodyMedium,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    viewModel.productPriceTxt,
                    style: theme.textTheme.bodySmall,
                  ),
                  widgetButton,
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
