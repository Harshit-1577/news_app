import 'package:flutter/material.dart';
import 'home.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPage();
}

class _LandingPage extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: Column(
          children: [
            Material(
              elevation: 3.0,
              borderRadius: BorderRadius.circular(30),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  "images/business.jpg",
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 1.65,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Welcome to the News App built \n  my MobileFirstApplications",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "News from around the world for you",
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 35),
            // Container(
            //   width: MediaQuery.of(context).size.width / 1.2,
            //   child: Material(
            //     elevation: 5.0,
            //     borderRadius: BorderRadius.circular(30),
            //     child: Container(
            //       padding: EdgeInsets.symmetric(vertical: 15.0),
            //       decoration: BoxDecoration(
            //           color: Colors.blue,
            //           borderRadius: BorderRadius.circular(30)),
            //       child: Center(
            //         child: Text(
            //           "Get Started",
            //           style: TextStyle(
            //               color: Colors.white,
            //               fontSize: 16,
            //               fontWeight: FontWeight.w500),
            //         ),
            //       ),
            //     ),
            //   ),
            // )
            SizedBox(
              child: ElevatedButton(
                child: Text(
                  "Get Started",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 12, 109, 189)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Home()));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
