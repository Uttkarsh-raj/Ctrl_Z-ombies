import 'package:flutter/material.dart';
import 'package:hackathon/const/colors.dart';

class ContactsPage extends StatelessWidget {
  const ContactsPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> name = [
      "Ramu",
      "Rajesh",
      "Suresh",
      "Mahesh",
      "Hitesh",
      "Vikas"
    ];
    List<String> job = [
      "Sarpanch",
      "Secretary",
      "Member",
      "Member",
      "Member",
      "Member"
    ];
    List<String> number = [
      "+91 1234567890",
      "+91 7894561230",
      "+91 4566123987",
      "+91 5647891323",
      "+91 1254452165",
      "+91 4598725232"
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Contact",
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
                'Contacts',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: AppColors.blue,
                  fontSize: 20,
                  // color:
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ListTile(
                      title: Text(
                        name[index],
                        style: const TextStyle(
                          fontWeight: FontWeight.w900,
                          color: AppColors.blue,
                          fontSize: 18,
                          // color:
                        ),
                      ),
                      subtitle: Text(
                        job[index],
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          color: AppColors.blue,
                          fontSize: 16,
                          // color:
                        ),
                      ),
                      trailing: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            number[index],
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              color: AppColors.blue,
                              fontSize: 16,
                              // color:
                            ),
                          ),
                          const Icon(
                            Icons.call_outlined,
                            color: AppColors.blue,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                itemCount: name.length,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
