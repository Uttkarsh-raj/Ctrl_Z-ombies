import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hackathon/const/colors.dart';
import 'package:hackathon/widgets/explore_emp_list_tile.dart';
import 'package:http/http.dart' as http;

class ExploreEmployment extends StatefulWidget {
  const ExploreEmployment({super.key});

  @override
  State<ExploreEmployment> createState() => _ExploreEmploymentState();
}

class _ExploreEmploymentState extends State<ExploreEmployment> {
  bool loaded = false;
  List<dynamic> data = [];
  void getEmps() async {
    setState(() {
      loaded = false;
    });
    var res = await http.get(
      Uri.parse('https://gramsarthi.vercel.app/api/jobs/rampur'),
    );
    var d = jsonDecode(res.body);
    data = d["data"];
    print(data);
    setState(() {
      loaded = true;
    });
  }

  @override
  void initState() {
    getEmps();
    super.initState();
  }

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
              (loaded)
                  ? ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.all(8.0)
                            .copyWith(top: 12, bottom: 12),
                        child: OpportunitiesTile(
                          name: data[index]['name'],
                          email: "₹${data[index]['salary'].toString()}",
                          desc: data[index]['desc'],
                          bookings: const [],
                        ),
                      ),
                      // separatorBuilder: (context, index) => const SizedBox(width: 20),
                      itemCount: data.length,
                      shrinkWrap: true,
                    )
                  : const Center(
                      child: CircularProgressIndicator(),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
