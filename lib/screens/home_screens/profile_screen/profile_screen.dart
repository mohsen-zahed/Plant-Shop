import 'package:flutter/material.dart';
import 'package:plant_shop/constants/colors.dart';
import 'package:plant_shop/constants/lists.dart';
import 'package:plant_shop/screens/home_screens/saved_screen/saved_screen.dart';
import '../../../utilities/size_config.dart';
import '../home_screen/main_home_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  static String routeName = "/profile_screen";

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

// _luanchGoogleURL(BuildContext context) async {
//   Uri url = Uri.parse(
//       'https://www.google.com/webhp?hl=en&sa=X&ved=0ahUKEwj6gPzb9YD6AhXVwAIHHS2-D3kQPAgI');
//   if (await canLaunchUrl(url)) {
//     await launchUrl(url);
//   } else {
//     showSnackBar(context, 'NO!', 1);
//   }
// }

// _launchGoogleURL(BuildContext context) async {
//   Uri url = Uri.parse(
//       'https://www.google.com/webhp?hl=en&sa=X&ved=0ahUKEwj6gPzb9YD6AhXVwAIHHS2-D3kQPAgI');
//   if (await canLaunchUrl(url)) {
//     await launchUrl(url);
//   } else {
//     showSnackBar(context, 'text', 1);
//   }
// }

class _ProfileScreenState extends State<ProfileScreen> {
  // void logOut() async {
  //   SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  //   sharedPreferences.setBool('isUserSignedIn', false);
  //   Navigator.pushNamedAndRemoveUntil(
  //       context, RegistrationScreen.routeName, (route) => false,
  //       arguments: {'title': 'حساب کاربری'});
  // }

  // void getUserName(String userName) async {
  //   SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  //   username = sharedPreferences.getString('userName').toString();
  //   setState(() {});
  // }

  // void getEmailAddress(String emailAddress) async {
  //   SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  //   emailaddress = sharedPreferences.getString('email').toString();
  //   setState(() {});
  // }

  //! Failed Function for picking image from gallery
  // Future<File> _chooseImage() async {
  //   final getImage = await ImagePicker()
  //       .pickImage(source: ImageSource.gallery, maxHeight: 100, maxWidth: 100);
  //   setState(() {
  //     if (getImage != null) {
  //       File imageFile = File(getImage.path);
  //     }
  //   });
  //   return imageFile;
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   getUserName(username);
  //   getEmailAddress(emailaddress);
  // }

  //! late File imageFile;
  String username = '';
  String emailaddress = '';
  double size = 29;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("پروفایل"),
          leading: GestureDetector(
            onTap: () => Navigator.pushNamed(context, MainHomeScreen.routeName),
            child: const Icon(Icons.arrow_back_rounded),
          ),
        ),
        body: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Column(
              children: [
                SizedBox(height: SizeConfig.setSizeVertically(20)),
                Hero(
                  tag: 'avatar',
                  child: SizedBox(
                    width: 115,
                    height: 115,
                    child: Stack(
                      fit: StackFit.expand,
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(100),
                            ),
                            image: DecorationImage(
                              image: AssetImage('images/Profile.png'),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: -10,
                          child: SizedBox(
                            width: 40,
                            height: 40,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 0,
                                primary: kBlackColor.withOpacity(0.5),
                                padding: EdgeInsets.zero,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      color: kWhiteColor, width: 3),
                                  borderRadius: BorderRadius.circular(70),
                                ),
                              ),
                              onPressed: () {
                                //* picks an image from gallery...
                                //! FAILED...
                                //! _chooseImage();
                              },
                              child: const Icon(
                                Icons.camera_alt_rounded,
                                size: 20,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: SizeConfig.setSizeVertically(20)),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(
                      horizontal: SizeConfig.setSizeHorizontally(20),
                      vertical: SizeConfig.setSizeVertically(0)),
                  child: Text(
                    username,
                    style: const TextStyle(fontSize: 14),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: SizeConfig.setSizeVertically(10)),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(
                      horizontal: SizeConfig.setSizeHorizontally(20),
                      vertical: SizeConfig.setSizeVertically(0)),
                  child: Text(
                    emailaddress,
                    style: const TextStyle(
                        fontSize: 14,
                        decoration: TextDecoration.underline,
                        decorationThickness: 1.5),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: SizeConfig.setSizeVertically(10)),
                ...List.generate(
                  drawerListItems.length,
                  (index) => Padding(
                    padding: EdgeInsets.fromLTRB(
                        SizeConfig.setSizeHorizontally(30),
                        index != 0 ? 15 : 0,
                        SizeConfig.setSizeHorizontally(30),
                        0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 223, 247, 197),
                        padding: EdgeInsets.symmetric(
                          horizontal: SizeConfig.setSizeHorizontally(20),
                          vertical: SizeConfig.setSizeVertically(10),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13),
                        ),
                      ),
                      onPressed: () {
                        // drawerListItems[index]['id'] == 1
                            Navigator.pushNamed(
                                context,
                                SavedScreen.routeName,
                                arguments: {"index": index},
                              );
                            // : drawerListItems[index]['id'] == 4
                            //     ? _luanchGoogleURL(context)
                            //     : drawerListItems[index]['id'] == 5
                            //         ? logOut()
                                    // : Navigator.pushNamed(
                                    //     context,
                                    //     ProfileDetailsScreen.routeName,
                                    //     arguments: {
                                    //       "drawerAppBarTitle":
                                    //           drawerListItems[index]['title'],
                                    //       "drawerLogo": drawerListItems[index]
                                    //           ['logo'],
                                    //       "drawerExplanation":
                                    //           drawerListItems[index]
                                    //               ['explanation'],
                                    //       "listNum": drawerListItems[index]
                                    //           ['id'],
                                    //     },
                                    //   );
                      },
                      child: Row(
                        children: [
                          const Icon(
                            Icons.arrow_back_ios_new,
                            color: kBlackColor,
                            size: 18,
                          ),
                          const Spacer(),
                          Text(
                            drawerListItems[index]["title"],
                            style: TextStyle(
                                fontSize: SizeConfig.setSizeHorizontally(14),
                                color: kBlackColor),
                          ),
                          const SizedBox(width: 25),
                          index == 0
                              ? Icon(
                                  Icons.save_alt_outlined,
                                  size: size,
                                  color: kPrimaryColor,
                                )
                              : index == 1
                                  ? Icon(
                                      Icons.people_alt_rounded,
                                      size: size,
                                      color: kPrimaryColor,
                                    )
                                  : index == 2
                                      ? Icon(
                                          Icons.settings,
                                          size: size,
                                          color: kPrimaryColor,
                                        )
                                      : index == 3
                                          ? Icon(
                                              Icons
                                                  .supervised_user_circle_sharp,
                                              size: size,
                                              color: kPrimaryColor,
                                            )
                                          : index == 4
                                              ? GestureDetector(
                                                  // onTap: () async {
                                                  //   SharedPreferences
                                                  //       sharedPreferences =
                                                  //       await SharedPreferences
                                                  //           .getInstance();
                                                  //   sharedPreferences.setBool(
                                                  //       'isUserSignedIn',
                                                  //       false);
                                                  //   Navigator
                                                  //       .pushNamedAndRemoveUntil(
                                                  //           context,
                                                  //           RegistrationScreen
                                                  //               .routeName,
                                                  //           (route) => false);
                                                  // },
                                                  child: Icon(
                                                    Icons.logout_outlined,
                                                    size: size,
                                                    color: kPrimaryColor,
                                                  ),
                                                )
                                              : const SizedBox(),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: SizeConfig.setSizeVertically(30),
                )
              ],
            ),
          ],
        ),
        // bottomNavigationBar: CustomHomeNavbar(selectedItem: MenuItems.home),
      ),
    );
  }
}

// class ProfilePicture extends StatelessWidget {
//   const ProfilePicture({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return 
//   }
// }
