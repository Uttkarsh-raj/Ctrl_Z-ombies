import 'package:flutter/material.dart';
import 'package:hackathon/const/colors.dart';
import 'package:hackathon/widgets/explore_emp_list_tile.dart';

class ExploreEmployment extends StatefulWidget {
  const ExploreEmployment({super.key});

  @override
  State<ExploreEmployment> createState() => _ExploreEmploymentState();
}

class _ExploreEmploymentState extends State<ExploreEmployment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Explore",
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
                'Opportunities',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: AppColors.blue,
                  fontSize: 20,
                  // color:
                ),
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => Padding(
                  padding:
                      const EdgeInsets.all(8.0).copyWith(top: 12, bottom: 12),
                  child: const OpportunitiesTile(
                    name: "test",
                    email: "test@gmail.com",
                    desc: "kshfkldhfklahfhdflalhkfisdlfhjsfhdklhlksah",
                    bookings: [],
                  ),
                ),
                // separatorBuilder: (context, index) => const SizedBox(width: 20),
                itemCount: 5,
                shrinkWrap: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
