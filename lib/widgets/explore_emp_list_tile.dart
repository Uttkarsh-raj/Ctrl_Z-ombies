import 'package:flutter/material.dart';
import 'package:hackathon/const/colors.dart';

class OpportunitiesTile extends StatefulWidget {
  const OpportunitiesTile(
      {super.key,
      required this.name,
      required this.email,
      required this.desc,
      required this.bookings});
  final String name;
  final String email;
  final String desc;
  final List<String> bookings;

  @override
  State<OpportunitiesTile> createState() => _OpportunitiesTileState();
}

class _OpportunitiesTileState extends State<OpportunitiesTile> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.grey[300],
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppColors.green,
              // boxShadow: const [
              //   BoxShadow(
              //     color: Colors.black,
              //     offset: Offset(1, 0),
              //     blurRadius: 2,
              //     spreadRadius: 0.1,
              //   )
              // ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.name,
                        style: const TextStyle(
                          color: AppColors.white,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        widget.email,
                        style: const TextStyle(
                          color: AppColors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Description:\n${widget.desc}',
                    style: const TextStyle(
                      color: AppColors.white,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  children: [
                    Icon(
                      Icons.info_outline,
                      color: AppColors.blue,
                      size: 20,
                    ),
                    SizedBox(width: 5),
                    Text(
                      'Get an appointment',
                      style: TextStyle(
                        color: AppColors.blue,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: size.height * 0.04,
                    width: size.width * 0.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color.fromARGB(255, 237, 105, 28),
                    ),
                    child: const Center(
                      child: Text(
                        'Contact',
                        style: TextStyle(
                          color: AppColors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
