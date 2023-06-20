// import 'package:divar/constants/colors.dart';
// import 'package:divar/utilities/size_config.dart';
// import 'package:flutter/material.dart';
// import 'package:rive/rive.dart';

// import '../bottom_navigation_components/rive_asset.dart';

// class SideBarMenuTile extends StatelessWidget {
//   const SideBarMenuTile({
//     Key? key,
//     required this.menu,
//     required this.press,
//     required this.riveOnInit,
//     required this.isActive,
//   }) : super(key: key);

//   final RiveAsset menu;
//   final VoidCallback press;
//   final ValueChanged<Artboard> riveOnInit;
//   final bool isActive;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Padding(
//           padding: EdgeInsets.only(right: SizeConfig.setSizeHorizontally(20)),
//           child: Divider(
//             color: kWhiteColor.withOpacity(0.3),
//             height: 1,
//           ),
//         ),
//         Stack(
//           children: [
//             AnimatedPositioned(
//               duration: const Duration(milliseconds: 250),
//               width: isActive ? SizeConfig.setSizeHorizontally(288) : 0,
//               height: SizeConfig.setSizeVertically(56),
//               right: 0,
//               curve: Curves.fastOutSlowIn,
//               child: Container(
//                 decoration: BoxDecoration(
//                   color: kListTileOverlayColor,
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//               ),
//             ),
//             ListTile(
//               onTap: press,
//               leading: SizedBox(
//                 width: SizeConfig.setSizeHorizontally(35),
//                 height: SizeConfig.setSizeVertically(35),
//                 child: RiveAnimation.asset(
//                   menu.src,
//                   artboard: menu.artboard,
//                   onInit: riveOnInit,
//                 ),
//               ),
//               title: Text(
//                 menu.title,
//                 style: const TextStyle(color: kWhiteColor),
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }
