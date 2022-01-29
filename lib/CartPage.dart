import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Style.dart';
import 'SuccessPage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: cartPage(),
    );
  }
}

class cartPage extends StatefulWidget {
  const cartPage({Key? key}) : super(key: key);

  @override
  _cartPageState createState() => _cartPageState();
}

class _cartPageState extends State<cartPage> {
  int quantityPlatter = 0;
  int quantitySushi = 0;
  int total = 0;
  double tax = 0;
  double deliveryCharges = 0;
  double totalAmount = 0;
  double discount = 0;
  int quantity = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 15,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          "Your Cart",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 20),
                            height: 0.5,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    placesWidget("californiapizza", "Pizza", quantityPlatter),
                    const SizedBox(
                      height: 5,
                    ),
                    placesWidget("cholebhatoore", "Cholebhatoore", quantitySushi),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              const Text(
                                "Total ( ",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 18),
                              ),
                              Text(
                                (quantitySushi + quantityPlatter).toString(),
                                style: const TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 18),
                              ),
                              const Text(
                                " items )",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              const Text(
                                "\$",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 16),
                              ),
                              Text(
                                total.toString(),
                                style: const TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 16),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "+Taxes",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.grey),
                        ),
                        Container(
                          child: Row(
                            children: [
                              const Text(
                                "\$",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: Colors.grey),
                              ),
                              Text(
                                tax.toStringAsFixed(2),
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: Colors.grey),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "+Delivery Charges",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.grey),
                        ),
                        Container(
                          child: Row(
                            children: [
                              const Text(
                                "\$",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: Colors.grey),
                              ),
                              Text(
                                deliveryCharges.toStringAsFixed(2),
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: Colors.grey),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Discounts",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.grey),
                        ),
                        Container(
                          child: Row(
                            children: [
                              const Text(
                                "-\$",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: Colors.grey),
                              ),
                              Text(
                                discount.toStringAsFixed(2),
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: Colors.grey),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Total Payable",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              const Text(
                                "\$",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: Colors.grey),
                              ),
                              Text(
                                totalAmount.toStringAsFixed(2),
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Text(
                      "Have a Promo Code?",
                      style: TextStyle(color: blue),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: openSuccessPage,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 50),
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(40)),
                          color: greenBtn,
                        ),
                        child: const Text(
                          "Check Out",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w700),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Row placesWidget(String img, String name, int quantity) {
    return Row(
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage("asset/images/$img.png"))),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$name",
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              Row(
                children: const [
                  Icon(
                    Icons.star,
                    size: 20,
                    color: Colors.orange,
                  ),
                  Icon(
                    Icons.star,
                    size: 20,
                    color: Colors.orange,
                  ),
                  Icon(
                    Icons.star,
                    size: 20,
                    color: Colors.orange,
                  ),
                  Icon(
                    Icons.star,
                    size: 20,
                    color: Colors.orange,
                  ),
                  Icon(
                    Icons.star,
                    size: 20,
                    color: Colors.orange,
                  ),
                ],
              ),
              const Text(
                "Lorem ipsum sits dolar amet is for publishing",
                style: TextStyle(fontSize: 12),
              )
            ],
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Row(
          children: [
            Text(
              "Quantity ",
              style: TextStyle(fontSize: 14, color: black),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                border: Border.all(color: black),
              ),
              child: Text(
                quantity.toString(),
                style:
                    const TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
              ),
            ),
            Column(
              children: [
                RoundIconButton(
                    icon: FontAwesomeIcons.plus,
                    ontap: () {
                      setState(() {
                        if (name == "Pizza") {
                          if (quantityPlatter < 10) {
                            quantityPlatter++;
                          }
                        }
                        if (name == "Cholebhatoore") {
                          if (quantitySushi < 10) {
                            quantitySushi++;
                          }
                        }
                        total = (5 * quantityPlatter + 4 * quantitySushi);
                        tax = (1.5 * total) / 100;
                        deliveryCharges =
                            (0.5 * (quantitySushi + quantityPlatter));
                        if ((quantityPlatter + quantitySushi) > 4) {
                          discount = (1.0 * total) / 100;
                        }
                        totalAmount =
                            (total + tax + deliveryCharges - discount);
                      });
                    }),
                RoundIconButton(
                  icon: FontAwesomeIcons.minus,
                  ontap: () {
                    setState(() {
                      if (name == "Pizza") {
                        if (quantityPlatter > 0) {
                          quantityPlatter--;
                        }
                      }
                      if (name == "Cholebhatoore") {
                        if (quantitySushi > 0) {
                          quantitySushi--;
                        }
                      }
                      total = (5 * quantityPlatter + 4 * quantitySushi);
                      tax = (1.5 * total) / 100;
                      deliveryCharges =
                          (0.5 * (quantitySushi + quantityPlatter));
                      if ((quantityPlatter + quantitySushi) > 4) {
                        discount = (1.0 * total) / 100;
                      }
                      totalAmount = (total + tax + deliveryCharges - discount);
                    });
                  },
                ),
              ],
            )
          ],
        )
      ],
    );
  }

  void openSuccessPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SuccessPage()));
  }
}

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({Key? key, required this.icon, required this.ontap})
      : super(key: key);
  final IconData icon;
  final Function ontap;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {
        ontap();
      },
      elevation: 0.0,
      constraints: const BoxConstraints.tightFor(width: 28.0, height: 28.0),
      child: Icon(
        icon,
        size: 15.0,
        color: Colors.white,
      ),
      shape: const CircleBorder(),
      fillColor: const Color(0xFF4C4F5E),
    );
  }
}
