import 'package:flutter/material.dart';
import 'package:hackathon/const/colors.dart';
import 'package:hackathon/widgets/grievance_section.dart';

class ShowGrievanceWidget extends StatefulWidget {
  final String title, desc, name;
  const ShowGrievanceWidget(
      {super.key, required this.title, required this.desc, required this.name});

  @override
  State<ShowGrievanceWidget> createState() => _ShowGrievanceWidgetState();
}

class _ShowGrievanceWidgetState extends State<ShowGrievanceWidget> {
  bool show = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return (!show)
        ? GestureDetector(
            onTap: () {
              setState(() {
                show = true;
              });
            },
            child: Container(
              width: size.width * 0.98,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Padding(
                padding:
                    const EdgeInsets.all(14.0).copyWith(left: 13, right: 13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: size.width * 0.75,
                      child: Text(
                        widget.title,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: AppColors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const Icon(Icons.arrow_drop_down_outlined, size: 28)
                  ],
                ),
              ),
            ),
          )
        : Container(
            width: size.width * 0.98,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(14.0).copyWith(left: 13, right: 13),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        show = false;
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: size.width * 0.75,
                          child: Text(
                            widget.title,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              color: AppColors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const Icon(Icons.arrow_drop_up_outlined, size: 28)
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  GrievanceSections(
                    title: "Description",
                    description: widget.desc,
                  ),
                ],
              ),
            ),
          );
  }
}
