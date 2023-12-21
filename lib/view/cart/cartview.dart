import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:supermarket/controller/cart/maincartcontroller.dart';
import 'package:supermarket/theme/main_colors.dart';

class Cartview extends GetView<MainCartController> {
  const Cartview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your Cart',
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.all(5.0),
          child: controller.cart!.cartItems.length > 0
              ? ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: controller.cart!.cartItems.length +
                      3, // +3 for the three sections in your UI
                  itemBuilder: (context, index) {
                    if (index < controller.cart!.cartItems.length) {
                      productcart();
                    } else if (index == controller.cart!.cartItems.length + 1) {
                      return Row(
                        children: [
                          const Gap(10),
                          Expanded(
                            child: SizedBox(
                              height: 60,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: 'Enter Cupon Code',
                                  /* hintStyle: safeGoogleFont(
                          'Poppins',
                          fontSize: 12,
                          letterSpacing: 0.5,
                          fontWeight: FontWeight.normal,
                          color: TColor.textsemiappear,
                        ),*/
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: TColor.primary, width: 1.0),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: TColor.offwhite, width: 1.0),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            child: Container(
                              width: 87,
                              height: 60,
                              decoration: BoxDecoration(
                                color: TColor.primarybutton,
                                borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(5.0),
                                  bottomRight: Radius.circular(5.0),
                                ),
                                /*border: Border.all(
                        color: TColor.offwhite, // Specify the color of the border
                        width: 2.0, // Specify the width of the border
                      ),*/
                              ),
                              child: Center(
                                  child: Text(
                                'Apply',
                              )),
                            ),
                          ),
                          const Gap(10),
                        ],
                      );
                    } else if (index == controller.cart!.cartItems.length + 2) {
                      return Column(children: [
                        Container(
                            margin: const EdgeInsets.all(10),
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                color: TColor
                                    .offwhite, // Specify the color of the border
                                width: 1.5, // Specify the width of the border
                              ),
                            ),
                            child: Column(children: <Widget>[
                              Rowofcartcal(
                                name:
                                    "Items (${controller.cart!.cartItems.length})",
                                price: "\$${controller.cart!.total}",
                              ),
                              const Rowofcartcal(
                                name: "Import charges",
                                price: "\$10.00",
                              ),
                              Divider(
                                height: 1,
                                color: TColor.offwhite,
                              ),
                              const Gap(10),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 5.0),
                                child: Row(
                                  children: [
                                    Text(
                                      'Total Price',
                                    ),
                                    const Spacer(),
                                    Text(
                                      '\$${controller.cart!.total + 10}',
                                    ),
                                  ],
                                ),
                              )
                            ])),
                        const Gap(30),
                        Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 25),
                          width: double.infinity,
                          height: 57,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              // backgroundColor: TColor.secondarybutton,
                            ),
                            child: Text("Check Out",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: TColor.white,
                                  fontWeight: FontWeight.w700,
                                )),
                            onPressed: () {
                              //  Get.to(() => const Shipto());
                            },
                          ),
                        ),
                      ]);
                    }
                    return Center(child: CircularProgressIndicator());
                  })
              : Noproductincart()),
      //  bottomNavigationBar: const CustomBottomNavigate(),
    );
  }
}

class Noproductincart extends StatelessWidget {
  const Noproductincart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: [
      Image.asset('assest/image/notfound.png'),
      const Gap(20),
      Text(
        'Cart is Empty',
      ),
    ]));
  }
}

class Rowofcartcal extends StatelessWidget {
  final String name;
  final String price;
  const Rowofcartcal({
    super.key,
    required this.name,
    required this.price,
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

class productcart extends StatelessWidget {
  const productcart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: TColor.offwhite, // Specify the color of the border
          width: 1.5, // Specify the width of the border
        ),
      ),
      child: Row(children: [
        Image.asset(
          'assets/images/product/image69.png',
          width: 68,
          height: 72,
        ),
        const Gap(10),
        Expanded(
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: SizedBox(
                      width: 140,
                      child: Text(
                        'FS - Nike Air Max 270 React',
                        //textAlign: TextAlign.center,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.favorite,
                    //  color: TColor.bink,
                  ),
                  const Gap(10),
                  Image.asset(
                    'assets/images/trash.png',
                    //color: TColor.bink,
                  )
                ],
              ),
              const Gap(24),
              Row(
                children: [
                  Text(
                    '\$299,43',
                  ),
                  const Spacer(),
                  Container(
                    child: Row(
                      children: [
                        Smallleftcontainer(
                          child: Center(
                              child: Image.asset(
                            'assets/images/miniu.png',
                          )),
                        ),
                        Container(
                          width: 40,
                          height: 24,
                          color: TColor.offwhite,
                          child: Center(
                              child: Text(
                            '1',
                          )),
                        ),
                        Smallrightcontainer(
                          child: Center(
                              child: Image.asset(
                            'assets/images/Plus.png',
                          )),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ]),
    );
  }
}

class Smallleftcontainer extends StatelessWidget {
  final Widget child;
  final void Function()? ontap;
  const Smallleftcontainer({
    super.key,
    required this.child,
    this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
          alignment: Alignment.center,
          width: 32,
          height: 24,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(5.0),
              bottomLeft: Radius.circular(5.0),
            ),
            border: Border.all(
              color: TColor.offwhite, // Specify the color of the border
              width: 2.0, // Specify the width of the border
            ),
          ),
          child: child),
    );
  }
}

class Smallrightcontainer extends StatelessWidget {
  final Widget child;
  final void Function()? ontap;
  const Smallrightcontainer({
    super.key,
    required this.child,
    this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
          alignment: Alignment.center,
          width: 32,
          height: 24,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(5.0),
              bottomRight: Radius.circular(5.0),
            ),
            border: Border.all(
              color: TColor.offwhite, // Specify the color of the border
              width: 2.0, // Specify the width of the border
            ),
          ),
          child: child),
    );
  }
}
