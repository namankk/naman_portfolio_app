import 'package:flutter/material.dart';

import '../../../common_widgets/common_widgets.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({super.key});

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        TextFormField(
          decoration: commonInputDecoration('Your Name'),
        ),
        commonSizedBox(),
        TextFormField(
          decoration: commonInputDecoration('Email'),
        ),
        commonSizedBox(),
        TextFormField(
          decoration: commonInputDecoration('Message'),
          minLines: 3,
          maxLines: 4,
        ),
        commonSizedBox(),
        CommonButtonWidget(onTap: () {}, buttonText: "Submit Message")
      ],
    ));
  }

  InputDecoration commonInputDecoration(String labelText) {
    return InputDecoration(
      labelText: labelText,
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.green),
      ),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.green),
      ),
      border: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.green),
      ),
    );
  }

  SizedBox commonSizedBox() => const SizedBox(height: 20);
}
