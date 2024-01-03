import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  final Widget? child;
  const SplashScreen({super.key, this.child});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

@override
  void initState() {
    Future.delayed(
      Duration(seconds: 5),(){
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => widget.child!), (route) => false);
    }
    );
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            SizedBox(height: 20), // Add some spacing between the image and text
            Text(
              "Welcome To EMSI Contact App",
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            Image(
              image: AssetImage('images/logo.png'),
              // Adjust the width and height as needed
              width: 300,
              height: 100,
            ),
            Image(
              image: AssetImage('images/Hulk.png'),
              // Adjust the width and height as needed
              width: 300,
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
