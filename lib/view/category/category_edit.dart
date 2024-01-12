import 'package:cibo_buono_admin/core/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryEdit extends StatefulWidget {
  const CategoryEdit({Key? key}) : super(key: key);

  @override
  _CategoryEditState createState() => _CategoryEditState();
}

class _CategoryEditState extends State<CategoryEdit> {
  TextEditingController categoryNameController = TextEditingController();
  TextEditingController imagePathController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _deleteCategory() {}

  void _updateCategory() {}
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

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
                  'Add new category',
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 20.0),
                _buildImageContainer(),
                const SizedBox(height: 20.0),
                TextFormField(
                  controller: categoryNameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Category name is required';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: 'Category Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green.shade400,
                      ),
                      onPressed: _deleteCategory,
                      child: Text(
                        'Delete',
                        style: GoogleFonts.openSans(
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                          color: whiteColor,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green.shade400,
                      ),
                      onPressed: _updateCategory,
                      child: Text(
                        'Update',
                        style: GoogleFonts.openSans(
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                          color: whiteColor,
                        ),
                      ),
                    ),
                  ],
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
      onTap: () {
        // Implement image selection logic here
      },
      child: Container(
        width: double.infinity,
        height: 200.0,
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
