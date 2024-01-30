import 'package:flutter/material.dart';
import 'package:gadgetcity/common/widgets/products.cart/widgets/circular_image.dart';
import 'package:gadgetcity/utils/constants/colors.dart';
import 'package:gadgetcity/utils/constants/image_strings.dart';
import 'package:iconsax/iconsax.dart';

class GUserProfile extends StatelessWidget {
  const GUserProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const GCircularImage(
        image: GImages.user1,
        width: 50,
        height: 50,
        padding: 0,
      ),
      subtitle: Text(
        'gadgetcity@gadgetcityapp.com',
        style:
            Theme.of(context).textTheme.bodyMedium!.apply(color: GColors.white),
      ),
      trailing: IconButton(
          onPressed: () {},
          icon: const Icon(
            Iconsax.edit,
            color: GColors.white,
          )),
    );
  }
}

// class ProfileScreen extends StatelessWidget {
//   const ProfileScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     ScreenUtil.init(context, height: 896, width: 414, allowFontScaling: true);
//     var row = Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         crossAxisAlignment: CrossAxisAlignment.start
//         ,
//         children: ProfileHeader,
//       );
//     return Scaffold(
//         body: Column(children: <Widget>[
//       SizedBox(height: GSpacingUnit.w * 5),
//       row,
//     ],),);
//   }

//   List<Widget> get ProfileHeader {
//     return <Widget>[
//         Icon(
//           LineAwesomeIcons.arrow_left,
//           size: ScreenUtil().setSp(kSpacingUtil.w * 3),
//         ),
//      var prfileinfo = Expanded(
//           child: Column(
//             children: [
//               Container(
//                 height: GSpacingUnit.w * 10,
//                 width: GSpacingUnit.w * 10,
//                 margin: EdgeInsets.only(top: GSpacingUnit.w * 3),
//                 child: Stack(
//                   children: [
//                     CircleAvatar(
//                       radius: GSpacingUnit.w * 5,
//                       backgroundImage: AssetImage('GImages.user1'),
//                     ),
//                     Align(
//                       alignment: Alignment.bottomHeight,
//                       child: Container(
//                         height: GSpacingUnit * 2.5,
//                         width: GSpacingUnit.2.5,
//                         decoration: BoxDecoration(color: Theme.of(context).accentColor, shape: BoxShape.circle,),
//                         child: Icon(LineAwesomeIcons.pen,
//                             color: Colors.GPrimaryColor,
//                             size: ScreenUtil().setSp(GSpacingUnit.w * 1.5)),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//               SizedBox(height: GSpacingUnit.w *2),
//               Text('John Doe', style: GTItleTextStyle)
//               SizedBox(WidgetkSpacingUnit.w *2)
//             ],
//           ),
//         ),
//         Icon(
//           LineAwesomeIcons.sun,
//           size: ScreenUtil().setSp(kSpacingUtil.w * 3),
//         ),
//         SizedBox(
//           width: GSpacingUnit.w * 3,
//         ),
//       ];
//   }
// }
