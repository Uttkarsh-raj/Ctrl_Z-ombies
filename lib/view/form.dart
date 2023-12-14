import 'package:flutter/material.dart';
import 'package:hackathon/const/colors.dart';
import 'package:hackathon/widgets/form_fields.dart';

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
          'Form',
          style: TextStyle(
            color: AppColors.black,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
        // actions: [
        //   GestureDetector(
        //     onTap: () {
        //       // if (nameController.text.isNotEmpty &&
        //       //     emailController.text.isNotEmpty &&
        //       //     contactController.text.isNotEmpty &&
        //       //     cityController.text.isNotEmpty &&
        //       //     addressController.text.isNotEmpty) {
        //       //   if (!isChecked) {
        //       //     print('register');
        //       //     UserApiHandler.registerUser(
        //       //       nameController.text.toString().trim(),
        //       //       emailController.text.toString().trim(),
        //       //       contactController.text.toString().trim(),
        //       //       user.photoURL.toString().trim(),
        //       //     );
        //       //     Navigator.of(context).push(
        //       //       MaterialPageRoute(
        //       //         builder: (context) => const MainAuthPage(),
        //       //       ),
        //       //     );
        //       //   } else {
        //       //     //TODO: Show Snackbar...
        //       //   }
        //       // }
        //       // if (isChecked) {
        //       //   if (nameController.text.isNotEmpty &&
        //       //       emailController.text.isNotEmpty &&
        //       //       emailController.text.isNotEmpty &&
        //       //       emailController.text.isNotEmpty &&
        //       //       emailController.text.isNotEmpty &&
        //       //       emailController.text.isNotEmpty &&
        //       //       descController.text.isNotEmpty) {
        //       //     LawyerApiHandler.registerLawyer(
        //       //       user.photoURL.toString().trim(),
        //       //       calendlyLinkController.text.toString().trim(),
        //       //       nameController.text.toString().trim(),
        //       //       emailController.text.toString().trim(),
        //       //       addressController.text.toString().trim(),
        //       //       cityController.text.toString().trim(),
        //       //       regNoController.text.toString().trim(),
        //       //       cases,
        //       //       courts,
        //       //       contactController.text.toString().trim(),
        //       //       descController.text.toString().trim(),
        //       //     );
        //       //     Navigator.of(context).push(
        //       //       MaterialPageRoute(
        //       //         builder: (context) => const MainAuthPage(),
        //       //       ),
        //       //     );
        //       //   } else {
        //       //     //TODO: Show Snackbar...
        //       //   }
        //       // }
        //     },
        //     child: Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text(
        //         'Submit',
        //         style: TextStyle(
        //           color: AppColors.black.withOpacity(0.8),
        //           fontSize: 14,
        //           fontWeight: FontWeight.w600,
        //         ),
        //       ),
        //     ),
        //   ),
        // ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              FormFields(
                controller: nameController,
                title: 'Name',
                hint: (nameController.text.isEmpty) ? 'Name' : null,
              ),
              const SizedBox(height: 13),
              FormFields(
                controller: emailController,
                title: 'Email',
                hint: (emailController.text.isEmpty) ? 'Email' : null,
              ),
              const SizedBox(height: 13),
              FormFields(
                controller: contactController,
                title: 'Contact',
                hint: (contactController.text.isEmpty) ? 'Contact' : null,
              ),
              const SizedBox(height: 13),
              FormFields(
                controller: cityController,
                title: 'Title',
                hint: (cityController.text.isEmpty) ? 'Title' : null,
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
                          controller: addressController,
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
              Container(
                height: size.height * 0.07,
                width: size.width * 0.92,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 233, 142, 90),
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
