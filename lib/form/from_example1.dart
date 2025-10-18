import 'package:flutter/material.dart';

class FromExample1 extends StatefulWidget {
  const FromExample1({super.key});

  @override
  State<FromExample1> createState() => _FromExampleState();
}

class _FromExampleState extends State<FromExample1> {
  String firstName = "";
  String lastName = "";
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  String? selectedGender;
  bool? isAccept = false;
  String? statusMarried;
  bool isSwitch = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('FromExamples')),
      body: Form(
        key: formKey,
        child: Column(
          children: [
            TextFormField(
              controller: nameController,
              decoration: const InputDecoration(labelText: 'Name'),
              // onChanged: (value){
              //   setState(() {
              //     firstName = value;
              //   });
              // },
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return "Please enter your First Name";
                }
                return null;
              },
            ),
            TextFormField(
              controller: lastNameController,
              decoration: const InputDecoration(labelText: 'LastName'),
              // onChanged: (value){
              //   setState(() {
              //     lastName = value;
              //   });
              // },
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return "Please enter your Last Name";
                }
                return null;
              },
            ),
            DropdownButtonFormField(
              decoration: InputDecoration(labelText: 'Gender'),
              value: selectedGender,
              items: ['Male', 'Female', 'Other']
                  .map(
                    (String item) =>
                        DropdownMenuItem(value: item, child: Text(item)),
                  )
                  .toList(),
              onChanged: (String? value) {
                setState(() {
                  selectedGender = value;
                });
              },
              validator: (String? value) {
                if (value == null) {
                  return "Please select Gender";
                }
                return null;
              },
            ),

            RadioListTile(
              title: Text('Single'),
              value: 'Single',
              groupValue: statusMarried,
              onChanged: (String? value) {
                setState(() {
                  statusMarried = value.toString();
                });
              },
            ),
            RadioListTile(
              title: Text('Married'),
              value: 'Married',
              groupValue: statusMarried,
              onChanged: (String? value) {
                setState(() {
                  statusMarried = value.toString();
                });
              },
            ),
            RadioListTile(
              title: Text('Separated'),
              value: 'Separated',
              groupValue: statusMarried,
              onChanged: (String? value) {
                setState(() {
                  statusMarried = value.toString();
                });
              },
            ),

            CheckboxListTile(
              title: const Text('Accept Term & Condition'),
              value: isAccept,
              onChanged: (bool? value) {
                setState(() {
                  isAccept = value;
                });
              },
            ),
            
            SwitchListTile(
              title: Text('Enable Receive News'),
              value: isSwitch,
              onChanged: (bool value){
                setState(() {
                  isSwitch = value;
                });
              }
              
              ),

            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    nameController.text = 'Nutkamol';
                    lastNameController.text = 'Piriyatanasrub';
                  },
                  child: Text('Auto input'),
                ),

                ElevatedButton(
                  onPressed: () {
                    nameController.clear();
                    lastNameController.clear();
                  },
                  child: Text('Clear'),
                ),

                ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      print('Name: ${nameController.text}');
                      print('LastName: ${lastNameController.text}');
                    }
                  },
                  child: Text('Submit'),
                ),
              ],
            ),

            SizedBox(height: 40),

            // Container(
            //   color: Colors.amber,
            //   child: Text(
            //     "Name : $firstName $lastName",
            //     style: TextStyle(fontSize: 20),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
