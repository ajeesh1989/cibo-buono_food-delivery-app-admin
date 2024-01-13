import 'package:cibo_buono_admin/core/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductManagement extends StatelessWidget {
  ProductManagement({super.key});

  final List<String> foodItems = [
    'Combo Burger',
    'Chicken Burger',
    'Beef Buurger',
    'BBQ Burger',
    'Veggie Burger',
    'Mushroom Burger',
    'Salmon Burger',
    'Classic Hamburger',
  ];

  String _getImagePath(int index) {
    List<String> imagePaths = [
      'lib/burger pics/combo burger.png',
      'lib/burger pics/chicken burger.png',
      'lib/burger pics/beef burger.png',
      'lib/burger pics/bbq burger.png',
      'lib/burger pics/veggie burger.png',
      'lib/burger pics/mushroom burger.png',
      'lib/burger pics/salmon burger.png',
      'lib/burger pics/classic hamburger.png',
    ];

    int adjustedIndex = index % imagePaths.length;

    return imagePaths[adjustedIndex];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Product Management',
          style: GoogleFonts.openSans(
            fontSize: 25,
            fontWeight: FontWeight.w300,
            color: blackColor,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20.0,
            mainAxisSpacing: 20.0,
          ),
          itemCount: foodItems.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onLongPress: () {
                print('Long pressed');
                Navigator.pushNamed(context, '/product_edit');
              },
              child: Card(
                color: adminHomeGridColor,
                elevation: 4.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      _getImagePath(index),
                      height: 100,
                    ),
                    const SizedBox(height: 12.0),
                    Text(
                      foodItems[index],
                      style: GoogleFonts.openSans(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: blackColor,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: whiteColor,
        onPressed: () {
          Navigator.pushNamed(context, '/product_add');
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
