import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hackathon/const/colors.dart';
import 'package:hackathon/widgets/market_widget.dart';
import 'package:http/http.dart' as http;

class ExploreMarketPlace extends StatefulWidget {
  const ExploreMarketPlace({super.key});

  @override
  State<ExploreMarketPlace> createState() => _ExploreMarketPlaceState();
}

class _ExploreMarketPlaceState extends State<ExploreMarketPlace> {
  bool loaded = false;
  List<dynamic> data = [];
  void getData() async {
    setState(() {
      loaded = false;
    });
    var res = await http.get(
      Uri.parse('https://gramsarthi.vercel.app/api/products/rampur'),
    );
    var k = jsonDecode(res.body);
    data = k["data"];
    print(data);
    setState(() {
      loaded = true;
    });
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
                'Market Place',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: AppColors.blue,
                  fontSize: 20,
                  // color:
                ),
              ),
              (loaded)
                  ? GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 0.0,
                        mainAxisSpacing: 0.0,
                        childAspectRatio: size.height * 0.001,
                      ),
                      itemCount: data.length,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: MarketWidget(
                          url: data[index]['image'].toString(),
                          name: data[index]['name'].toString(),
                          price: data[index]['price'].toString(),
                        ),
                      ),
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
