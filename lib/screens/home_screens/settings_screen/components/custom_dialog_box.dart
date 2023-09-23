import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:plant_shop/screens/home_screens/settings_screen/components/custom_textfield_widget.dart';

class CustomDialogBox extends StatefulWidget {
  const CustomDialogBox({
    Key? key,
    required this.text1,
    required this.text2,
    required this.buttonText,
    required this.onButtonPressed,
    required this.controller1,
    required this.controller2,
    required this.controller3,
    required this.controller4,
    required this.controller5,
  }) : super(key: key);
  final String text1;
  final String text2;
  final String buttonText;
  final Function() onButtonPressed;
  final TextEditingController controller1;
  final TextEditingController controller2;
  final TextEditingController controller3;
  final TextEditingController controller4;
  final TextEditingController controller5;

  @override
  CustomDialogBoxState createState() => CustomDialogBoxState();
}

class CustomDialogBoxState extends State<CustomDialogBox> {
  XFile? image;
  Uint8List? _image;
  pickImage(ImageSource source) async {
    image = await ImagePicker().pickImage(source: source);
    if (image != null) {
      print('object');
      setState(() {});
    }
  }

  selectImage() async {
    Uint8List img = await pickImage(ImageSource.gallery);
    setState(() {
      _image = img;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 35),
              Text(
                widget.text1,
                style: const TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 15),
              Text(
                widget.text2,
                textDirection: TextDirection.rtl,
                style: const TextStyle(
                  color: Colors.black45,
                  fontSize: 13,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 55,
                margin: const EdgeInsets.symmetric(horizontal: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.green.withOpacity(0.4),
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    shadowColor: Colors.transparent,
                    side: const BorderSide(color: Colors.green),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () async {
                    await selectImage();
                  },
                  child: const Text(
                    'عکس را انتخاب کنید',
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              CustomTextFieldWidget(
                text: 'نام گیاه',
                color: Colors.grey.withOpacity(0.1),
                hintTextColor: Colors.grey,
                controller1: widget.controller1,
              ),
              const SizedBox(height: 10),
              CustomTextFieldWidget(
                controller1: widget.controller2,
                text: 'نام لاتین',
                color: Colors.grey.withOpacity(0.1),
                hintTextColor: Colors.grey,
              ),
              const SizedBox(height: 10),
              CustomTextFieldWidget(
                controller1: widget.controller3,
                text: 'معرفی گیاه',
                color: Colors.grey.withOpacity(0.1),
                hintTextColor: Colors.grey,
              ),
              const SizedBox(height: 10),
              CustomTextFieldWidget(
                controller1: widget.controller4,
                text: 'موارد استفاده گیاه',
                color: Colors.grey.withOpacity(0.1),
                hintTextColor: Colors.grey,
              ),
              const SizedBox(height: 10),
              CustomTextFieldWidget(
                controller1: widget.controller5,
                text: 'هشدار',
                color: Colors.grey.withOpacity(0.1),
                hintTextColor: Colors.grey,
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                height: 50,
                child: ElevatedButton(
                  onPressed: widget.onButtonPressed,
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.green.withOpacity(0.4),
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    shadowColor: Colors.transparent,
                    side: const BorderSide(color: Colors.green),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    widget.buttonText,
                    style: const TextStyle(
                      color: Colors.green,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 25),
            ],
          ),
        ),
      ],
    );
  }
}
