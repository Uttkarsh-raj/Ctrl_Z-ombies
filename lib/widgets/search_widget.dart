import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        height: size.height * 0.06,
        width: size.width * 0.93,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(25),
        ),
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Center(
            child: TextField(
              autocorrect: true,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 13),
                border: InputBorder.none,
                suffixIcon: Icon(Icons.search),
                suffixIconColor: Colors.grey,
                hintText: "Search",
                hintStyle: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
          ),
        ));
  }
}
