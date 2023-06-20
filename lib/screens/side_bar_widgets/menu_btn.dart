// import 'package:divar/constants/colors.dart';
// import 'package:divar/utilities/size_config.dart';
// import 'package:flutter/material.dart';

// class MenuBtn extends StatelessWidget {
//   const MenuBtn({
//     Key? key,
//     required this.isMenuClosed,
//     required this.onTap,
//   }) : super(key: key);

//   final bool isMenuClosed;
//   final Function() onTap;
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         width: SizeConfig.setSizeHorizontally(40),
//         height: SizeConfig.setSizeVertically(40),
//         margin: EdgeInsets.only(
//           left: SizeConfig.setSizeHorizontally(16),
//           top: SizeConfig.setSizeVertically(15),
//         ),
//         decoration: BoxDecoration(
//           shape: BoxShape.circle,
//           color: kListTileOverlayColor.withOpacity(0.5),
//           boxShadow: const [
//             BoxShadow(
//               color: Colors.black12,
//               offset: Offset(0, 3),
//               blurRadius: 8,
//             ),
//           ],
//         ),
//         child: isMenuClosed
//             ? const Icon(
//                 Icons.menu,
//                 color: Colors.white,
//               )
//             : const Icon(
//                 Icons.close,
//                 color: Colors.white,
//               ),
//       ),
//     );
//   }
// }
