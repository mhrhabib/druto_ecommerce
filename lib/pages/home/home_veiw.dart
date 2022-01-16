import 'package:druto_ecommerce/pages/home/home_controller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeVeiw extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "New arrival",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
              Container(
                margin: EdgeInsets.all(8.0),
                height: height * 0.25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.suits.length,
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 5.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black26,
                                  offset: Offset(0, 2),
                                  blurRadius: 6.0,
                                ),
                              ],
                            ),
                            height: height * 0.25,
                            width: width * 0.90,
                            child: Image(
                              fit: BoxFit.cover,
                              image:
                                  AssetImage(controller.suits[index].imageUrl),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 40.0,
                          left: 20.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Text(
                                  "Super Flash Sale",
                                  style: TextStyle(
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 12.0),
                                child: Text(
                                  "50% Off",
                                  style: TextStyle(
                                      fontSize: 24.0, color: Colors.white),
                                ),
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                ),
                                onPressed: () {
                                  Get.toNamed('/ProductDetailView');
                                },
                                child: Text(
                                  "See More",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20.0),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Exclusive Products",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "View all",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                ],
              ),
              Container(
                height: height * 0.35,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: controller.products.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8.0,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          height: MediaQuery.of(context).size.height * 0.35,
                          width: MediaQuery.of(context).size.width * 0.50,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Stack(
                                  children: [
                                    Image(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.22,
                                      width: MediaQuery.of(context).size.width,
                                      fit: BoxFit.cover,
                                      image: AssetImage(controller
                                          .products[index].productImageUrl),
                                    ),
                                    Positioned(
                                      top: 2.0,
                                      right: 2.0,
                                      child: Icon(Icons.favorite),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 4.0,
                                    ),
                                    child: Text(
                                      " \$ " + controller.products[index].price,
                                      style: TextStyle(
                                        fontSize: 16.0,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    " \$ " + controller.products[index].price,
                                    style: TextStyle(
                                        color: Colors.blue,
                                        decoration: TextDecoration.lineThrough),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 4.0, left: 10.0),
                                    child: Text(
                                      controller.products[index].name +
                                          "Modern",
                                      style: TextStyle(fontSize: 18.0),
                                    ),
                                  ),
                                ],
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  minimumSize: Size(
                                    MediaQuery.of(context).size.width,
                                    10.0,
                                  ),
                                ),
                                onPressed: () {},
                                child: Text(
                                  "Add to cart",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Categoris",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "View all",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                ],
              ),
              Container(
                height: height * 0.15,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.suits.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue.shade50,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        width: width * 0.33,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: Icon(
                                Icons.ac_unit,
                                size: 60.0,
                                color: Colors.blueAccent.shade200,
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              "Shoe",
                              style: TextStyle(fontSize: 20.0),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
