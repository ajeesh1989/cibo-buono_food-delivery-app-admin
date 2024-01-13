import 'package:cibo_buono_admin/view/admin_signin/admin_signin.dart';
import 'package:cibo_buono_admin/view/adminsplash/admin_splash.dart';
import 'package:cibo_buono_admin/view/category/category_add.dart';
import 'package:cibo_buono_admin/view/category/category_edit.dart';
import 'package:cibo_buono_admin/view/category/category_mgt.dart';
import 'package:cibo_buono_admin/view/offer_management/offer_mgt.dart';
import 'package:cibo_buono_admin/view/product/product.dart';
import 'package:cibo_buono_admin/view/product/product_add.dart';
import 'package:cibo_buono_admin/view/product/product_edit.dart';
import 'package:cibo_buono_admin/view/user_management/user_mgt.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => const AdminSplash(),
        "/category_management": (context) => CategoryManagement(),
        "/product_management": (context) => ProductManagement(),
        "/user_management": (context) => const UserManagement(),
        "/offer_management": (context) => const OfferManagement(),
        "/admin_signin": (context) => const SignInPage(),
        "/category_add": (context) => const CategoryAdd(),
        "/category_edit": (context) => const CategoryEdit(),
        "/product_add": (context) => const ProductAdd(),
        "/product_edit": (context) => const ProductEdit(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
