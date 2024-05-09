// import 'dart:ffi';

import 'package:flutter/material.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key, required this.title});

  final String title;

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Container(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: SignupForm()),
    );
  }
}

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final _passkey = GlobalKey<FormFieldState>();

  String _name = ' ';
  String _email = ' ';
  int _age = -1;
  String _maritalStatus = ' ';
  int _selectedGender = 0;
  String _password = ' ';
  bool _termsChecked = true;

  List<DropdownMenuItem<int>> genderList = [];

  void loadGenderList() {
    genderList = [];
    genderList.add(const DropdownMenuItem(
      child: Text("Male"),
      value: 0,
    ));

    genderList.add(const DropdownMenuItem(
      child: Text("Female"),
      value: 1,
    ));

    genderList.add(const DropdownMenuItem(
      child: Text("Others"),
      value: 2,
    ));
  }

  @override
  Widget build(BuildContext context) {
    loadGenderList();
    return Form(
      child: ListView(
        children: getFormWidget(),
      ),
    );
  }

  List<Widget> getFormWidget() {
    List<Widget> formWidget = [];

    formWidget.add(TextFormField(
      decoration:
          const InputDecoration(labelText: 'Enter Name', hintText: 'Name'),
      validator: (value) {
        if (value!.isEmpty) {
          return 'Pleae enter your name';
        } else {
          return value;
        }
      },
      onChanged: (value) {
        print(value.toString());
        _name = value.toString();
      },
    ));

    validEmail(String? value) {
      if (value!.isEmpty) {
        return 'Please enter mail';
      }
      Pattern pattern = r'';
      RegExp regex = RegExp(pattern.toString());
      if (!regex.hasMatch(value.toString())) {
        return null;
      }
    }

    formWidget.add(TextFormField(
      decoration:
          const InputDecoration(labelText: 'Enter Email', hintText: 'Email'),
      keyboardType: TextInputType.emailAddress,
      validator: validEmail,
      onChanged: (value) {
        _email = value.toString();
      },
    ));

    formWidget.add(TextFormField(
      decoration:
          const InputDecoration(labelText: 'Enter age', hintText: 'Age'),
      validator: (value) {
        if (value!.isEmpty) {
          return 'Pleae enter your age';
        } else {
          return null;
        }
      },
      onChanged: (value) {
        print(value.toString());
        _age = int.parse(value.toString());
      },
    ));

    formWidget.add(DropdownButton(
      hint: const Text('Select Gender'),
      items: genderList,
      value: _selectedGender,
      onChanged: (value) {
        setState(() {
          _selectedGender = int.parse(value.toString());
        });
      },
      isExpanded: true,
    ));
    formWidget.add(Column(
      children: <Widget>[
        RadioListTile<String>(
            title: const Text('Single'),
            value: 'Single',
            groupValue: _maritalStatus,
            onChanged: (value) {
              setState(() {
                _maritalStatus = value.toString();
              });
            }),
        RadioListTile<String>(
            title: const Text('Married'),
            value: 'Married',
            groupValue: _maritalStatus,
            onChanged: (value) {
              setState(() {
                _maritalStatus = value.toString();
              });
            }),
      ],
    ));

    return formWidget;
  }
}
