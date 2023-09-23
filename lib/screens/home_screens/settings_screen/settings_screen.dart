import 'package:flutter/material.dart';
import 'package:plant_shop/models/plant_model.dart';
import 'package:plant_shop/packages/firebase/plant_firebase_crud.dart';
import 'package:plant_shop/packages/firebase/realtime_database_instance.dart';
import 'package:plant_shop/screens/home_screens/settings_screen/components/custom_dialog_box.dart';
import 'package:plant_shop/widgets/custom_elevated_button.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});
  static String routeName = '/settings_screen';

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  TextEditingController _textEditingController1 = TextEditingController();
  TextEditingController _textEditingController2 = TextEditingController();
  TextEditingController _textEditingController3 = TextEditingController();
  TextEditingController _textEditingController4 = TextEditingController();
  TextEditingController _textEditingController5 = TextEditingController();
  late String plantName;
  late String plantSName;
  late String plantIntro;
  late String plantUsage;
  late String plantNotice;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'صفحه تنظیمات در حال تکمیل شدن میباشد',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 50),
            CustomElevatedButton(
              text: 'اضافه کردن گیاه',
              onPressed: () async {
                showDialog(
                  context: context,
                  builder: (context) {
                    return CustomDialogBox(
                      text1: 'اضافه کردن گیاه',
                      text2:
                          'برای اضافه کردن گیاه به برنامه لطفا فرم پایین را کامل نمایید!',
                      buttonText: 'buttonText',
                      onButtonPressed: () {
                        plantName = _textEditingController1.text;
                        plantSName = _textEditingController2.text;
                        plantIntro = _textEditingController3.text;
                        plantUsage = _textEditingController4.text;
                        plantNotice = _textEditingController5.text;
                        addPlantToFirebaseDatabase(
                          plantModel: PlantModel.createItem(
                            plantImage: 'plantImage',
                            plantTitle: plantName,
                            plantSTitle: plantSName,
                            plantId: databaseReference.push().key!,
                            plantDescription: plantIntro,
                            plantUsage: plantUsage,
                            plantNotice: plantNotice,
                            plantIsSaved: false,
                          ),
                          whenComplete: () {},
                          onError: (error) {},
                        );
                      },
                      controller1: _textEditingController1,
                      controller2: _textEditingController2,
                      controller3: _textEditingController3,
                      controller4: _textEditingController4,
                      controller5: _textEditingController5,
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
