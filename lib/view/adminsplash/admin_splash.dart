import 'package:cibo_buono_admin/core/colors/colors.dart';
import 'package:cibo_buono_admin/core/const/const.dart';
import 'package:cibo_buono_admin/view/admin_signin/admin_signin.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminSplash extends StatefulWidget {
  const AdminSplash({Key? key}) : super(key: key);

  @override
  _AdminSplashState createState() => _AdminSplashState();
}

class _AdminSplashState extends State<AdminSplash> {
  double _opacity = 0.0;

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 5), () {
      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const SignInPage()),
        );
      }
    });

    Future.delayed(const Duration(seconds: 1), () {
      if (mounted) {
        setState(() {
          _opacity = 1.0;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'lib/pics/unsplash.jpg',
            fit: BoxFit.cover,
          ),
          Center(
            child: AnimatedOpacity(
              duration: const Duration(seconds: 1),
              opacity: _opacity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'lib/pics/1-removebg-preview.png',
                    scale: 2,
                  ),
                  Text(
                    'D i n i n g    E x c e l l e n c e',
                    style: GoogleFonts.aboreto(
                      fontSize: 15,
                      fontWeight: FontWeight.w100,
                      color: splashSubTitleColor,
                    ),
                  ),
                  height90
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
