import 'package:flutter/material.dart';
import 'package:myproject_flutter/screens/login_screen.dart';

class LocationAccessScreen extends StatefulWidget {
  const LocationAccessScreen({super.key});

  @override
  State<LocationAccessScreen> createState() => _LocationAccessScreenState();
}

class _LocationAccessScreenState extends State<LocationAccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment:  MainAxisAlignment.spaceBetween,
            children: [
              Padding(padding: const EdgeInsets.all(8),
              child: Column(children: [
                Image.asset("assets/foodpanda_location.png",
                height: 300,
                ),
                
                const Text("Allow location access on the next screen for:",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.pink.withOpacity(0.15),
                      ),
                      child: const Icon(
                        Icons.delivery_dining_outlined,
                        color: Color(0xFFFF2B85),
                        size: 30,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(child: Text(
                      "Finding best restaurants and shops near you",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black.withOpacity(0.6),
                      ),
                      ),
                    ),
                  ],
                ),
                                const SizedBox(height: 30),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.pink.withOpacity(0.15),
                      ),
                      child: const Icon(
                        Icons.store_outlined,
                        color: Color(0xFFFF2B85),
                        size: 30,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(child: Text(
                      "Faster and more accurate delivery",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black.withOpacity(0.6),
                      ),
                      ),
                    ),
                  ],
                )
              ],),

              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()),);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFF21A70),
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                  child: const Center(
                    child: Text("continue",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      )
    );
  }
}

