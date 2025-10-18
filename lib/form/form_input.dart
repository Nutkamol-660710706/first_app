import 'package:flutter/material.dart';

class FormInput extends StatefulWidget {
  const FormInput({super.key});

  @override
  State<FormInput> createState() => _FromInputState();
}

class _FromInputState extends State<FormInput> {
  String firstName = "";
  String lastName = "";
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController fullnameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  String? genderStatus;
  String? selectProvince;
  bool? isAccept = false;
  
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Registration Form')),
      body: Form(
        key: formKey,
        child: Column(
          children: [
            TextFormField(
              controller: fullnameController,
              decoration: const InputDecoration(labelText: 'Full Name'),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return "Please enter your First Name";
                }
                return null;
              },
            ),
            TextFormField(
              controller: emailController,
              decoration: const InputDecoration(labelText: 'Email'),
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
          
            RadioListTile(
              title: Text('Male'),
              value: 'Male',
              groupValue: genderStatus,
              onChanged: (String? value) {
                setState(() {
                  genderStatus = value.toString();
                });
              },
            ),
            RadioListTile(
              title: Text('Female'),
              value: 'Female',
              groupValue: genderStatus,
              onChanged: (String? value) {
                setState(() {
                  genderStatus = value.toString();
                });
              },
            ),

            DropdownButtonFormField(
              decoration: InputDecoration(labelText: 'Province'),
              value: selectProvince,
              items: ['Bangkok', 'Chiang Mai', 'Phuket', 'Khon Kaen']
                  .map(
                    (String item) =>
                        DropdownMenuItem(value: item, child: Text(item)),
                  )
                  .toList(),
              onChanged: (String? value) {
                setState(() {
                  selectProvince = value;
                });
              },
              validator: (String? value) {
                if (value == null) {
                  return "Please select Gender";
                }
                return null;
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
          
             ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      print('Name: ${fullnameController.text}');
                      print('LastName: ${emailController.text}');
                    }
                  },
                  child: Text('Submit'),
                ),
          ],
        ),
      ),
    );
  }
}
