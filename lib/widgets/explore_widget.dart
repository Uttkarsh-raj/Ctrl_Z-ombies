import 'package:flutter/material.dart';
import 'package:hackathon/const/colors.dart';

class ExploreAndAddWidget extends StatelessWidget {
  const ExploreAndAddWidget({super.key, required this.onTap});
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.135,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: onTap,
            child: Container(
              height: size.height * 0.13,
              width: size.width * 0.4,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(18),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: SizedBox(
                        height: size.height * 0.07,
                        child: Image.asset(
                          "assets/icons/explore.png",
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.007),
                    const Text(
                      "Explore",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: AppColors.blue,
                        fontSize: 14,
                        // color:
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: size.height * 0.13,
              width: size.width * 0.4,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(18),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: SizedBox(
                        height: size.height * 0.07,
                        child: Image.asset(
                          "assets/icons/add.png",
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.007),
                    const Text(
                      "Add",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: AppColors.blue,
                        fontSize: 14,
                        // color:
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
