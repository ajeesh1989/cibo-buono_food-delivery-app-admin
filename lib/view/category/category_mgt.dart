import 'package:cibo_buono_admin/core/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryManagement extends StatelessWidget {
  CategoryManagement({super.key});

  final List<String> foodItems = [
    'Burger',
    'Pizza',
    'Ice Cream',
    'Sandwiches',
    'Juices',
    'Shakes',
    'Cakes',
    'Cold Coffee',
  ];

  String _getImagePath(int index) {
    List<String> imagePaths = [
      'lib/category pics/burger.png',
      'lib/category pics/pizza.png',
      'lib/category pics/ice cream.png',
      'lib/category pics/sandwich.png',
      'lib/category pics/juice.png',
      'lib/category pics/shakes.png',
      'lib/category pics/cake.png',
      'lib/category pics/cold coffee.png',
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
          'Category Management',
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
                Navigator.pushNamed(context, '/category_edit');
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
          Navigator.pushNamed(context, '/category_add');
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
