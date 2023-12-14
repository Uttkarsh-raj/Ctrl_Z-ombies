import 'package:flutter/material.dart';
import 'package:hackathon/const/colors.dart';

class PanchayatList extends StatelessWidget {
  final String icon, label;
  final Function()? onTap;
  const PanchayatList(
      {super.key, required this.icon, required this.label, this.onTap});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: size.height * 0.13,
        width: size.width * 0.25,
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
                    icon,
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.007),
              Text(
                label,
                style: const TextStyle(
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
    );
  }
}
