// import 'package:divar/constants/colors.dart';
// import 'package:divar/screens/home_screens/side_bar_widgets/list.dart';
// import 'package:divar/screens/home_screens/side_bar_widgets/side_menu_components/side_bar_manu_tile.dart';
// import 'package:divar/utilities/size_config.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:rive/rive.dart';
// import 'bottom_navigation_components/rive_asset.dart';
// import 'bottom_navigation_components/rive_utiles.dart';

// class SideBarMenu extends StatefulWidget {
//   const SideBarMenu({super.key});

//   @override
//   State<SideBarMenu> createState() => _SideBarMenuState();
// }

// class _SideBarMenuState extends State<SideBarMenu> {
//   RiveAsset selectedTile = sideMenuTiles.first;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         width: SizeConfig.setSizeHorizontally(288),
//         height: SizeConfig.getScreenHeight(),
//         decoration: const BoxDecoration(
//           color: kPrimaryColor,
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const TopSectionInfo(
//               name: "رامز رایان",
//               profession: "دوکاندار",
//             ),
//             Padding(
//               padding: EdgeInsets.only(
//                 top: SizeConfig.setSizeVertically(30),
//                 right: SizeConfig.setSizeHorizontally(24),
//                 bottom: SizeConfig.setSizeVertically(18),
//               ),
//               child: Text(
//                 "گشت زدن".toUpperCase(),
//                 style: TextStyle(
//                   color: Colors.white70,
//                   fontSize: SizeConfig.setSizeHorizontally(20),
//                 ),
//                 textAlign: TextAlign.right,
//               ),
//             ),
//             ...sideMenuTiles.map(
//               (menu) => SideBarMenuTile(
//                 menu: menu,
//                 riveOnInit: (artboard) {
//                   StateMachineController controller =
//                       RiveUtiles.getRiveController(
//                     artboard,
//                     stateMachineName: menu.stateMachineName,
//                   );
//                   menu.input = controller.findSMI("active") as SMIBool;
//                 },
//                 press: () {
//                   menu.input!.change(true);
//                   Future.delayed(const Duration(seconds: 1), () {
//                     menu.input!.change(false);
//                   });
//                   setState(() {
//                     selectedTile = menu;
//                   });
//                 },
//                 isActive: selectedTile == menu,
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.only(
//                 top: SizeConfig.setSizeVertically(30),
//                 right: SizeConfig.setSizeHorizontally(24),
//                 bottom: SizeConfig.setSizeVertically(18),
//               ),
//               child: Text(
//                 "تاریخچه".toUpperCase(),
//                 style: TextStyle(
//                   color: Colors.white70,
//                   fontSize: SizeConfig.setSizeHorizontally(20),
//                 ),
//               ),
//             ),
//             ...sideMenuTiles2.map(
//               (menu) => SideBarMenuTile(
//                 menu: menu,
//                 riveOnInit: (artboard) {
//                   StateMachineController controller =
//                       RiveUtiles.getRiveController(
//                     artboard,
//                     stateMachineName: menu.stateMachineName,
//                   );
//                   menu.input = controller.findSMI("active") as SMIBool;
//                 },
//                 press: () {
//                   menu.input!.change(true);
//                   Future.delayed(const Duration(seconds: 1), () {
//                     menu.input!.change(false);
//                   });
//                   setState(() {
//                     selectedTile = menu;
//                   });
//                 },
//                 isActive: selectedTile == menu,
//               ),
//             ),
//             SizedBox(height: SizeConfig.getScreenHeight() * 0.18),
//             Padding(
//               padding: EdgeInsets.symmetric(
//                 horizontal: SizeConfig.setSizeHorizontally(20),
//                 vertical: SizeConfig.setSizeVertically(10),
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     "نسخه",
//                     style: TextStyle(
//                       color: kWhiteColor,
//                       fontSize: SizeConfig.setSizeHorizontally(22),
//                     ),
//                   ),
//                   Text(
//                     "۱.۰.۰",
//                     style: TextStyle(
//                       color: kWhiteColor,
//                       fontSize: SizeConfig.setSizeHorizontally(22),
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// class TopSectionInfo extends StatelessWidget {
//   const TopSectionInfo({
//     Key? key,
//     required this.name,
//     required this.profession,
//   }) : super(key: key);
//   final String name;
//   final String profession;

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       leading: const CircleAvatar(
//         backgroundColor: Colors.white24,
//         child: Icon(
//           CupertinoIcons.person,
//           color: Colors.white,
//         ),
//       ),
//       title: Text(
//         name,
//         style: const TextStyle(color: Colors.white),
//         textAlign: TextAlign.right,
//       ),
//       subtitle: Text(
//         profession,
//         style: const TextStyle(color: Colors.white),
//         textAlign: TextAlign.right,
//       ),
//     );
//   }
// }
