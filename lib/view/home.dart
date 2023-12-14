import 'package:flutter/material.dart';
import 'package:hackathon/const/colors.dart';
import 'package:hackathon/widgets/search_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0).copyWith(top: 10, bottom: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: AppColors.green,
                        radius: size.height * 0.03,
                        child: CircleAvatar(
                          backgroundColor: AppColors.white,
                          radius: size.height * 0.028,
                          child: CircleAvatar(
                            backgroundColor: AppColors.orange,
                            radius: size.height * 0.026,
                            child: CircleAvatar(
                              backgroundImage: const AssetImage(
                                  'assets/images/john doe.jpeg'),
                              radius: size.height * 0.024,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 6),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'John Doe',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: AppColors.blue,
                              fontSize: 18,
                              // color:
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                color: AppColors.blue,
                                size: 14,
                              ),
                              Text(
                                'Uttar Pradesh',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.blue,
                                  fontSize: 14,
                                  // color:
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  const Icon(
                    Icons.logout_outlined,
                    color: AppColors.blue,
                    size: 25,
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.015,
              ),
              const SearchWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
