import 'package:cibo_buono_admin/core/colors/colors.dart';
import 'package:cibo_buono_admin/view/category/category_mgt.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Cibo Buono - Admin',
          style: GoogleFonts.openSans(
            fontSize: 30,
            fontWeight: FontWeight.w100,
            color: splashSubTitleColor,
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/pics/1-removebg-preview.png'),
                  fit: BoxFit.fill,
                ),
              ),
              child: Text(''),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Ajeesh'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.dashboard),
              title: const Text('Dashboard'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () {
                Navigator.pushNamed(context, '/admin_signin');
              },
            ),
          ],
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'lib/pics/adminhome.jpg',
            fit: BoxFit.cover,
          ),
          GridView.count(
            crossAxisCount: 2,
            padding: const EdgeInsets.all(20),
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            children: [
              _buildMenuItem(context, 'Category Management', Icons.restaurant,
                  () {
                Navigator.pushNamed(context, '/category_management');
              }),
              _buildMenuItem(context, 'Product Management', Icons.shopping_cart,
                  () {
                Navigator.pushNamed(context, '/product_management');
              }),
              _buildMenuItem(context, 'User Management', Icons.person, () {
                Navigator.pushNamed(context, '/user_management');
              }),
              _buildMenuItem(context, 'Offer Management', Icons.local_offer,
                  () {
                Navigator.pushNamed(context, '/offer_management');
              }),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem(BuildContext context, String title, IconData icon,
      [VoidCallback? onTap]) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: adminHomeGridColor,
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 50,
              color: Colors.lightGreen.shade400,
            ),
            const SizedBox(height: 10),
            Tooltip(
              message: title,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  title,
                  style: GoogleFonts.openSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: blackColor,
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
