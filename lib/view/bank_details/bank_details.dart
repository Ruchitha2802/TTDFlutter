
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:ttd_flutter_app/res/appStrings/english_strings.dart';
import 'package:ttd_flutter_app/res/components/colors/colors.dart';
import 'package:ttd_flutter_app/res/components/reusable_widgets/base_scaffold.dart';
import 'package:ttd_flutter_app/res/components/reusable_widgets/noneditable_text.dart';

class BankDeatils extends StatefulWidget {
  const BankDeatils({super.key});

  @override
  State<BankDeatils> createState() => _BankDeatilsState();
}

bool update = false;


class _BankDeatilsState extends State<BankDeatils> {
/*   Future<void> _pickPDF() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );

    if (result != null && result.files.isNotEmpty) {
      final filePath = result.files.first.path;
      if (filePath != null) {
        //_selectedFile = File(filePath);
      }
    }
    setState(() {}); // Trigger a rebuild to update the UI
  } */
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
        isHome: true,
        leading: false,
        AppBarvis: true,
        backgroundColor: true,
        sidebarVis: false,
        body: SingleChildScrollView(
            physics: ScrollPhysics(),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                NonEditableTextField(
                  initialValue: '11111',
                  labelText: EnglishStrings.payeeName,
                ),
                NonEditableTextField(
                  initialValue: '11111',
                  labelText: EnglishStrings.ifsc,
                ),
                NonEditableTextField(
                  initialValue: '11111',
                  labelText: EnglishStrings.acc_num,
                ),
                NonEditableTextField(
                  initialValue: '11111',
                  labelText: EnglishStrings.city,
                ),
                NonEditableTextField(
                  initialValue: '11111',
                  labelText: EnglishStrings.bank_country,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    margin: EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          EnglishStrings.is_joint_acc,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Row(
                          children: [
                            Row(
                              children: [
                                Radio(
                                  value: 1,
                                  groupValue: 2,
                                  onChanged: (value) {},
                                ),
                                Text(EnglishStrings.yes),
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Row(
                              children: [
                                Radio(
                                  value: 2,
                                  groupValue: 2,
                                  onChanged: (value) {},
                                ),
                                Text(EnglishStrings.no),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      update = !update;
                    });
                  },
                  child: Text(
                    EnglishStrings.update_information,
                    style: TextStyle(fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(150, 50),
                  ),
                ),
                update
                    ? Column(
                        children: [
                          ListTile(
                            title: Text(
                              "Supporting Document",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            trailing: Icon(
                              Icons.check_circle_outline,
                              color: Colors.green,
                            ),
                          ),
                          ListTile(
                            leading: Text(
                              "Support Doc \n Description",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            title: TextField(
                              decoration: InputDecoration(
                                hintText: 'Enter Description',
                                border: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors
                                        .blue, // Set your desired color here
                                    width: 2.0, // Set your desired width here
                                  ),
                                ),
                              ),
                            ),
                            trailing: TextButton(
                              onPressed: () async {
                                String? filePath = await pickFile();
                                if (filePath != null) {
                                  // Handle the selected file
                                  print('Selected file: $filePath');
                                  // Implement your upload logic here
                                }
                              },
                              child: Text(
                                "Upload",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        AppColors.dash_bg),
                                shape:
                                    MaterialStateProperty.all<OutlinedBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        8.0), // Adjust the radius as needed
                                  ),
                                ),
                                minimumSize: MaterialStateProperty.all<Size>(
                                    Size(50, 50)),
                              ),
                            ),
                          ),
                        ],
                      )
                    : SizedBox()
                //Container with yes no radio buttons
              ],
            )));
  }

  Future<String?> pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf', 'doc', 'docx'],
    );

    if (result != null) {
      PlatformFile file = result.files.first;
      return file.path;
    } else {
      // User canceled the picker
      return null;
    }
  }
}
