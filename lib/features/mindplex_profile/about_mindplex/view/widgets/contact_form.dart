import 'package:flutter/material.dart';
import 'package:mindplex/features/user_profile_settings/view/widgets/button_widget.dart';
import 'package:mindplex/utils/text_form_field_widget.dart';

class ContactForm extends StatelessWidget {
  ContactForm({super.key, required this.formkey});

  final GlobalKey formkey;

  get inputBorder => null;

  @override
  Widget build(BuildContext context) {
    TextEditingController firstNameTextEditingController =
        TextEditingController();
    TextEditingController lastNameTextEditingController =
        TextEditingController();
    TextEditingController emailTextEditingController = TextEditingController();
    TextEditingController messageTextEditingController =
        TextEditingController();

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(
            "CONTACT US",
            style: TextStyle(
                color: const Color.fromARGB(255, 105, 190, 108),
                fontSize: 24,
                fontWeight: FontWeight.bold),
          ),
          Form(
            key: formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 5,
                ),
                Text(
                  "First Name",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                TextFormFieldWidget(
                    textEditingController: firstNameTextEditingController),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Last Name",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                TextFormFieldWidget(
                    textEditingController: lastNameTextEditingController),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Email",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                TextFormFieldWidget(
                  textEditingController: emailTextEditingController,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Message",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                TextFormFieldWidget(
                  textEditingController: messageTextEditingController,
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                    child: buildButton("Submit", () {
                  print("Moderators form submit has been clicked");
                }, Colors.green, true, context)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
