import 'package:flutter/material.dart';
import 'package:hackathon/const/colors.dart';

class Schedules extends StatelessWidget {
  const Schedules({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Schedule",
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
                'Schedule',
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
                'This is the current schedule. Please visit this section regularly to get the updates regarding the updated schedule.',
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
                child: Image.network(
                    "https://1.bp.blogspot.com/-RjS_MNOQjHQ/YCAHK3Lz7JI/AAAAAAAAR3M/UmH3ptfLW_goF8vwoguevOFlDpNiRdpRACLcBGAsYHQ/s0/GramPanchayats_Election_Schedule1.jpg"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
