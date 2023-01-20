import 'package:ecommerce_carrinho_de_compras/view_model/product_view_model.dart';
import 'package:flutter/material.dart';
import '../data/products_repository.dart';
import '../models/product.dart';

class CartController extends ChangeNotifier {
  List<Product> _products = [];

  final List<Product> _cartProducts = [];

  void getProducts() async {
    final productRepository = ProductRepository();
    List<Product> response = await productRepository.getListProducts();
    _products = response;
    notifyListeners();
  }

  // getter que pega a lista total de produtos
  List<Product> get items => _products;

  // getter que pega a lista de produtos adicionados ao carrinho
  List<Product> get cartItems => _cartProducts;

  void addProduct(Product item) {
    _cartProducts.add(item);
    notifyListeners();
  }

  void removeProduct(Product item) {
    _cartProducts.remove(item);
    notifyListeners();
  }

  // getter que pega o preço total da compra
  double get totalPrice {
    double totalPrice = 0;

    for (int i = 0; i < _cartProducts.length; i++) {
      final viewModel = ProductViewModel(_cartProducts[i]);
      totalPrice += viewModel.productPrice;
    }

    return totalPrice;
  }
}
