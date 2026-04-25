import 'package:flutter/material.dart';
import 'package:my_app/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.asset(
                  'lib/images/nike-logo.png',
                  height: 240,
                ),
              ),
              const SizedBox(height: 40,),
            //   title
              const Text(
                'Just Do It',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 40,),
              const Text(
                '	Nostalgic 2000s aesthetic paired with an ultra-breathable mesh upper for all-day summer comfort. ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40,),
            //   shopnow
              GestureDetector(
                onTap: () =>Navigator.push(context, MaterialPageRoute(
                  builder: (context) => const HomePage(),
                )),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.all(20),
                  child: const Center(
                    child: Text("Shop Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    ),
                  ),
                ),
              )
            ]
          ),
        ),
      ),
    );
  }
}
