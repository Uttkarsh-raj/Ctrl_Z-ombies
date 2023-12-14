import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hackathon/const/colors.dart';
import 'package:hackathon/view/grievances/form.dart';
import 'package:hackathon/widgets/show_grievance.dart';
import 'package:http/http.dart' as http;

class GrievancesPage extends StatefulWidget {
  const GrievancesPage({super.key});

  @override
  State<GrievancesPage> createState() => _GrievancesPageState();
}

class _GrievancesPageState extends State<GrievancesPage> {
  bool show = false;
  bool loaded = false;
  List<dynamic> data = [];
  void getGrievances() async {
    setState(() {
      loaded = false;
    });
    var res = await http.get(
      Uri.parse('https://gramsarthi.vercel.app/api/complaints/rampur'),
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
    getGrievances();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 240, 142, 85),
        child: Center(
          child: Icon(
            Icons.add_outlined,
            color: Colors.white,
            size: size.height * 0.035,
          ),
        ),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const FormPage(),
            ),
          );
        },
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Grievances",
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
                'Grievances',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: AppColors.blue,
                  fontSize: 20,
                  // color:
                ),
              ),
              // (show)
              //     ?
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ShowGrievanceWidget(
                    desc: data[index]['desc'],
                    name: data[index]['by'],
                    title: data[index]['title'],
                  ),
                ),
                shrinkWrap: true,
                itemCount: data.length,
              )
              // : const Center(
              //     child: CircularProgressIndicator(),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
