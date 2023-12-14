import 'package:flutter/material.dart';
import 'package:hackathon/const/colors.dart';

class EventsListTile extends StatelessWidget {
  final String icon, label;
  const EventsListTile({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.15,
      width: size.width * 0.40,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            offset: const Offset(1, 1),
            color: Colors.black.withOpacity(0.8),
            blurRadius: 8,
            spreadRadius: 0.1,
          )
        ],
      ),
      child: Stack(
        children: [
          SizedBox(
            height: size.height * 0.15,
            width: size.width * 0.40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Image.network(
                icon,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: size.height * 0.15,
            width: size.width * 0.40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              gradient: LinearGradient(
                colors: [Colors.black.withOpacity(0.6), Colors.transparent],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: size.height * 0.055,
              width: size.width * 0.40,
              decoration: BoxDecoration(
                color: AppColors.white.withOpacity(0),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0).copyWith(
                  top: 3,
                  bottom: 3,
                ),
                child: Center(
                  child: Text(
                    label,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontWeight: FontWeight.w900,
                      color: AppColors.white,
                      fontSize: 16,
                      // color:
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
