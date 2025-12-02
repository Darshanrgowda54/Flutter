import 'package:application_form_project/my_textfield.dart';
import 'package:application_form_project/mytext.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  String? select;
  List<String> dropDownList = ['Easy', 'Medium', 'Hard'];
  bool isChecked = false;

  final TextEditingController projectTittleController = TextEditingController();
  final TextEditingController projectDescriptionController =
      TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final TextEditingController categoryController = TextEditingController();
  final TextEditingController subCategoryController = TextEditingController();
  final TextEditingController diffcultyController = TextEditingController();
  final TextEditingController duractionController = TextEditingController();
  final TextEditingController userBenefitsController = TextEditingController();
  final TextEditingController learningObjectivesController =
      TextEditingController();
  final TextEditingController keyTakeawaysController = TextEditingController();
  final TextEditingController additionalRemarksController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Application Form",
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Mytext(text: "Project Tittle", icon: Icons.dehaze),
                SizedBox(height: 10),
                MyTextfield(
                  hintText: "Enter Project Tittle",
                  controller: projectTittleController,
                ),

                SizedBox(height: 20),
                Mytext(text: "Project Description", icon: Icons.dehaze),
                SizedBox(height: 10),
                MyTextfield(
                  hintText: "Provide a detailed description of your project",
                  controller: projectDescriptionController,
                ),

                SizedBox(height: 20),
                Mytext(text: "Price", icon: Icons.dehaze),
                SizedBox(height: 10),
                MyTextfield(hintText: "0.00", controller: priceController),

                SizedBox(height: 20),
                Mytext(text: "Category", icon: Icons.dehaze),
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(4),
                      topLeft: Radius.circular(4),
                    ),
                  ),
                  child: TextField(
                    controller: categoryController,
                    decoration: InputDecoration(
                      hintText: "Enter Project Tittle",
                      contentPadding: EdgeInsets.only(left: 12),
                    ),
                  ),
                ),

                SizedBox(height: 20),
                Mytext(text: "Sub Category", icon: Icons.dehaze),
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(4),
                      topLeft: Radius.circular(4),
                    ),
                  ),
                  child: TextField(
                    controller: subCategoryController,
                    decoration: InputDecoration(
                      hintText: "Enter Project Tittle",
                      contentPadding: EdgeInsets.only(left: 12),
                    ),
                  ),
                ),

                SizedBox(height: 20),
                Mytext(text: "Difficulty", icon: Icons.dehaze),
                SizedBox(height: 10),

                // MyTextfield(
                //   hintText: "8-10 Weeks",
                //   controller: DiffcultyController,
                // ),
                SizedBox(height: 20),
                Mytext(text: "Duration", icon: Icons.dehaze),
                SizedBox(height: 10),
                MyTextfield(
                  hintText: "8-10 Weeks",
                  controller: duractionController,
                ),

                SizedBox(height: 20),
                Mytext(text: "How It benefit the users", icon: Icons.menu_book),
                SizedBox(height: 10),
                MyTextfield(
                  hintText: "descible the benefits if the users",
                  controller: userBenefitsController,
                ),

                SizedBox(height: 20),
                Mytext(text: "Learning Objectives", icon: Icons.menu_book),
                SizedBox(height: 10),
                MyTextfield(
                  hintText: "descible the benefits if the users",
                  controller: learningObjectivesController,
                ),

                SizedBox(height: 20),
                Mytext(text: "Key Takeaways", icon: Icons.menu_book),
                SizedBox(height: 10),
                MyTextfield(
                  hintText: "descible the benefits if the users",
                  controller: keyTakeawaysController,
                ),

                SizedBox(height: 20),
                Mytext(text: "Additional Remarks", icon: Icons.menu_book),
                SizedBox(height: 10),
                Container(
                  color: Colors.grey[200],
                  child: TextField(
                    minLines: 5,
                    maxLines: null,
                    controller: additionalRemarksController,
                    decoration: InputDecoration(
                      hintText:
                          "Write more remarks to help the user knows about the project.",
                      contentPadding: EdgeInsets.all(12),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 20),
                Row(
                  children: [
                    Checkbox(
                      value: isChecked,
                      onChanged: (bool? newValue) {
                        // debugPrint("$.................newValue .............");
                        setState(() {
                          isChecked = newValue ?? false;
                        });
                      },
                    ),
                    Mytext(text: "I accept the"),
                    InkWell(
                      onTap: () {
                        debugPrint("......terms & conditions Clicked........");
                      },
                      child: Text(
                        "terms and conditions",
                        style: TextStyle(color: Colors.blue[800], fontSize: 16),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 40),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.blue[800],
                    minimumSize: Size(400, 50),
                    side: BorderSide(color: Colors.blue),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {
                    debugPrint(".......save now button clicked.........");
                  },
                  child: Text(
                    "Save Now",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),

                SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[800],
                    foregroundColor: Colors.white,
                    minimumSize: Size(400, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {
                    debugPrint(".......public now button clicked.........");
                    // publicNow();
                  },
                  child: Text(
                    "Public Now",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
