import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supermarket/common/common_widget/home/productwidget.dart';
import 'package:supermarket/controller/categoryproductcontroller.dart';

class Categoryproduct extends GetView<ProductListController> {
  const Categoryproduct({super.key});

  get itemCount => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: controller.products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 0.0,
          mainAxisSpacing: 0.0,
          childAspectRatio: 0.82,
        ),
        itemBuilder: (BuildContext context, int index) => homeproductwidget(
          productitem: controller.products[index],
        ),
      ),
    );
  }
}
