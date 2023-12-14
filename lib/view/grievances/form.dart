import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hackathon/const/colors.dart';
import 'package:hackathon/widgets/form_fields.dart';
import 'package:http/http.dart' as http;

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController contactController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController regNoController = TextEditingController();
  TextEditingController descController = TextEditingController();
  TextEditingController calendlyLinkController = TextEditingController();
  bool isChecked = false;
  List<String> cases = [];
  List<String> courts = [];

//   {
//   "title":"Broken Road",
//   "desc":"Road in rajajipuram is broken",
//   "image":"https://images.unsplash.com/photo-1617252820859-00a22c77ec0c?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YnJva2VuJTIwcm9hZHxlbnwwfHwwfHx8MA%3D%3D",
//   "place":"rajajipuram",
//   "by":"Akash",
//   "villageName":"rampur",
//   "user":"1234567"
// }

  void sendRequest(
    String title,
    String description,
    String place,
    String name,
    String village,
  ) async {
    var res = await http.post(
      Uri.parse("https://gramsarthi.vercel.app/api/complaints"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode({
        "title": title,
        "desc": description,
        "image":
            "https://images.unsplash.com/photo-1617252820859-00a22c77ec0c?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YnJva2VuJTIwcm9hZHxlbnwwfHwwfHx8MA%3D%3D",
        "place": place,
        "by": name,
        "villageName": village,
        "user": "1234567",
      }),
    );
    print(res.statusCode);
  }

  @override
  void dispose() {
    nameController.dispose();
    calendlyLinkController.dispose();
    emailController.dispose();
    addressController.dispose();
    contactController.dispose();
    cityController.dispose();
    regNoController.dispose();
    descController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Grievances',
          style: TextStyle(
            color: AppColors.black,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              FormFields(
                controller: nameController,
                title: 'Name',
                hint: 'Name',
              ),
              const SizedBox(height: 13),
              FormFields(
                controller: emailController,
                title: 'Email',
                hint: 'Email',
              ),
              const SizedBox(height: 13),
              FormFields(
                controller: contactController,
                title: 'Contact',
                hint: 'Contact',
              ),
              const SizedBox(height: 13),
              FormFields(
                controller: cityController,
                title: 'Title',
                hint: 'Title',
              ),
              const SizedBox(height: 13),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Description: ',
                    style: TextStyle(
                      color: AppColors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Container(
                    height: size.height * 0.3,
                    width: size.width * 0.73,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.4,
                        color: AppColors.black.withOpacity(0.6),
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                        child: TextField(
                          controller: descController,
                          decoration: const InputDecoration(
                            hintText: 'Description',
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 14),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.1),
              GestureDetector(
                onTap: () {
                  if (nameController.text.isNotEmpty &&
                      emailController.text.isNotEmpty &&
                      contactController.text.isNotEmpty &&
                      cityController.text.isNotEmpty &&
                      descController.text.isNotEmpty) {
                    sendRequest(
                        cityController.text.trim().toString(),
                        descController.text.trim().toString(),
                        "Rampur",
                        nameController.text.trim().toString(),
                        "Rampur");
                    nameController.text = "";
                    emailController.text = "";
                    contactController.text = "";
                    cityController.text = "";
                    descController.text = "";
                    SnackBar snackBar = const SnackBar(
                      backgroundColor: Colors.green,
                      content: Text(
                        'Grievance filed successfully !!',
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  } else {
                    SnackBar snackBar = const SnackBar(
                      backgroundColor: Colors.red,
                      content: Text(
                        'Insufficient data !!',
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                },
                child: Container(
                  height: size.height * 0.07,
                  width: size.width * 0.92,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 254, 130, 58),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const Center(
                    child: Text(
                      'Submit',
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AddElementDialog extends StatefulWidget {
  final Function(String) onAdd;

  const AddElementDialog({super.key, required this.onAdd});

  @override
  _AddElementDialogState createState() => _AddElementDialogState();
}

class _AddElementDialogState extends State<AddElementDialog> {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Add Element'),
      content: TextFormField(
        controller: _textEditingController,
        decoration: const InputDecoration(
          labelText: 'Element',
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            String element = _textEditingController.text.trim();
            if (element.isNotEmpty) {
              widget.onAdd(element);
            }
            Navigator.pop(context);
          },
          child: const Text('Add'),
        ),
      ],
    );
  }
}
