import 'package:flutter/material.dart';
import 'package:hackathon/const/colors.dart';

class Inventory extends StatelessWidget {
  const Inventory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Inventory",
          style: TextStyle(
            fontWeight: FontWeight.w900,
            color: AppColors.blue,
            fontSize: 20,
            // color:
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0).copyWith(top: 10, bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Inventory',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: AppColors.blue,
                  fontSize: 20,
                  // color:
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'This is the current inventory details. Please visit this section regularly to get the updates regarding the updated inventory details.',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: AppColors.blue,
                  fontSize: 16,
                  // color:
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Image.asset("assets/images/inventory.jpg"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
