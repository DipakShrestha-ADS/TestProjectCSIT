import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final fullNameController = TextEditingController();
  final ageController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Sign Up'),
          actions: [
            IconButton(
              onPressed: () {
                fullNameController.text = 'New Text';
              },
              icon: Icon(
                Icons.edit,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                TextField(
                  controller: fullNameController,
                  decoration: InputDecoration(
                    labelText: 'Full Name',
                    hintText: 'Enter Your full name',
                  ),
                  onChanged: (value) {
                    print('value from field: $value');
                  },
                ),
                TextFormField(
                  controller: ageController,
                  decoration: InputDecoration(
                    labelText: 'Age',
                    hintText: 'Enter Your age',
                  ),
                  onChanged: (value) {
                    print('value from field: $value');
                  },
                  validator: (val) {
                    if (val == null) {
                      return 'Age is required';
                    }
                    if (val.isEmpty) {
                      return 'Age must not be empty';
                    }
                    final res = int.tryParse(val);
                    if (res == null) {
                      return 'Age must be integer';
                    }
                    if (res < 19) {
                      return 'Age is invalid';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'Enter your email.',
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (email) {
                    if (email!.isEmpty) {
                      return 'Email is required';
                    }
                    if (email.contains('@') && email.contains('.')) {
                      return null;
                    } else {
                      return 'Email is invalid';
                    }
                  },
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            formKey.currentState!.save();
            formKey.currentState!.validate();
            final fullName = fullNameController.text;
            print('fullname : $fullName');
            if (fullName.isEmpty) {
              print('full name  is empty');
            }
            final age = ageController.text;
            if (age.isEmpty) {
              print('age cannot be empty');
              return;
            }
            if (int.parse(age) < 19) {
              print('age is invalid');
              return;
            }
            print('age : $age');
            ageController.clear();
          },
          child: Icon(
            Icons.add,
          ),
        ),
      ),
    );
  }
}
