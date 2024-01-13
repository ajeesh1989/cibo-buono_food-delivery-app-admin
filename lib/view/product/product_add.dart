import 'package:cibo_buono_admin/core/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductAdd extends StatefulWidget {
  const ProductAdd({Key? key}) : super(key: key);

  @override
  _ProductAddState createState() => _ProductAddState();
}

class _ProductAddState extends State<ProductAdd> {
  TextEditingController categoryNameController = TextEditingController();
  TextEditingController imagePathController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _saveCategory() {
    if (_formKey.currentState?.validate() ?? false) {
      // Handle saving the category here
      String categoryName = categoryNameController.text;
      String imagePath = imagePathController.text;

      // Add your logic for saving the category
      print('Category Name: $categoryName, Image Path: $imagePath');
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

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
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/pics/category bgi.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Add new product',
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 20.0),
                _buildImageContainer(),
                const SizedBox(height: 20.0),
                TextFormField(
                  controller: categoryNameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Product name is required';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: 'Product Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  controller: categoryNameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Amount is required';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: 'Product Amount',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: categoryNameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Product detail is required';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: 'Product Details',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: _saveCategory,
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(
                      double.infinity,
                      MediaQuery.of(context).size.height * 0.070,
                    ),
                    backgroundColor: Colors.green.shade400,
                  ),
                  child: Text(
                    'Save',
                    style: GoogleFonts.openSans(
                      fontSize: MediaQuery.of(context).size.width * 0.05,
                      fontWeight: FontWeight.w400,
                      color: whiteColor,
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildImageContainer() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: double.infinity,
        height: 150.0,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: const Icon(
          Icons.add_photo_alternate,
          size: 60.0,
          color: Colors.grey,
        ),
      ),
    );
  }
}
