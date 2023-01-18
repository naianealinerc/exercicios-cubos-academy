import 'dart:math';
import 'package:ecommerce_carrinho_de_compras/models/product.dart';
import 'package:flutter/cupertino.dart';

class ProductViewModel {
  ProductViewModel(Product product)
      : productName = "Foto de ${product.name}",
        productImage = NetworkImage(product.imageUrl),
        isAddCart = product.isAddCart {
    final price = (product.price).isNaN
        ? Random().nextInt(1000) * Random().nextDouble()
        : product.price * 0.5;
    productPriceTxt = "R\$ ${price.toStringAsFixed(2)}";
    productPrice = price;
  }

  final String productName;
  final NetworkImage? productImage;
  bool isAddCart;
  String productPriceTxt = '';
  double productPrice = 0;

  
}
