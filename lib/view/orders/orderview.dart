import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:supermarket/theme/main_colors.dart';

class OrderView extends StatelessWidget {
  const OrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
        title: Text(
          'My Orderes',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Divider(
              height: 1.5,
            ),
            InkWell(
              onTap: () {
                // Get.to(() => const OrderDetails());
              },
              child: Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: TColor.offwhite, // Specify the color of the border
                      width: 1.5, // Specify the width of the border
                    ),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'LQNSU346JK',
                        ),
                        const Gap(4),
                        Text(
                          'Order at E-comm : August 1, 2017',
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Divider(
                            height: 1.5,
                          ),
                        ),
                        const RowOrder(
                          name: "Order Status",
                          price: "Shipping",
                        ),
                        const RowOrder(
                          name: "Items",
                          price: "2 Items purchased",
                        ),
                        const RowOrder(
                          name: "Price",
                          price: "\$299,43",
                          isbold: true,
                        ),
                      ])),
            ),
            InkWell(
              onTap: () {
                //Get.to(() => const OrderDetails());
              },
              child: Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: TColor.offwhite, // Specify the color of the border
                      width: 1.5, // Specify the width of the border
                    ),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'SDG1345KJD',
                        ),
                        const Gap(4),
                        Text(
                          'Order at E-comm : August 1, 2017',
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Divider(
                            height: 1.5,
                          ),
                        ),
                        const RowOrder(
                          name: "Order Status",
                          price: "Shipping",
                        ),
                        const RowOrder(
                          name: "Items",
                          price: "1 Items purchased",
                        ),
                        const RowOrder(
                          name: "Price",
                          price: "\$299,43",
                          isbold: true,
                        ),
                      ])),
            ),
          ],
        ),
      ),
    );
  }
}

class TitleWidgetitem extends StatelessWidget {
  final String imagepath;
  final String text;
  final void Function()? ontap;
  const TitleWidgetitem({
    super.key,
    required this.imagepath,
    required this.text,
    this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: ListTile(
          leading: Image.asset(imagepath),
          title: Text(
            text,
          ),
        ),
      ),
    );
  }
}

class RowOrder extends StatelessWidget {
  final String name;
  final String price;
  final bool isbold;

  const RowOrder({
    super.key,
    required this.name,
    required this.price,
    this.isbold = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        children: [
          Text(
            name,
          ),
          const Spacer(),
          Text(
            price,
          ),
        ],
      ),
    );
  }
}
