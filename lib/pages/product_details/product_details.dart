import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ProductDetailsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        actions: [
          Icon(Icons.notifications),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            CarouselSlider.builder(
              itemCount: 3,
              itemBuilder: (context, itemIndex, pageViewIndex) {
                return Container(
                  height: MediaQuery.of(context).size.height * 0.35,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.blue.shade50,
                );
              },
              options: CarouselOptions(
                autoPlay: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
