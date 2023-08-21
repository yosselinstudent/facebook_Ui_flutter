import 'package:facebook_ui_flutter/facebook_ui/widgets/circle_button.dart';
import 'package:facebook_ui_flutter/icons/custom_icons_icons.dart';
import 'package:flutter/material.dart';

class QuickActions extends StatelessWidget {
  const QuickActions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        //alignment: Alignment.center,
        child: Row(
          children: [
            QuickButton(
              color:Color(0xff92BE87), 
              iconData: CustomIcons.photos,
              texto:"Galley",
            ),
            SizedBox(width: 15,),
            QuickButton(
              color:Color(0xff1C86E4), 
              iconData: CustomIcons.user_friends,
              texto:"Tag Friends",
            ),
            SizedBox(width: 15,),
            QuickButton(
              color:Color(0xffFE7574), 
              iconData: CustomIcons.video_camera,
              texto:"Live",
            ),
          ],
        ),
      ),
    );
    /*return const Wrap(
      spacing: 10,
      runSpacing: 10,
      alignment: WrapAlignment.end,
      children: [
        QuickButton(
          color:Color(0xff92BE87), 
          iconData: CustomIcons.photos,
          texto:"Galley",
        ),
        QuickButton(
          color:Color(0xff1C86E4), 
          iconData: CustomIcons.user_friends,
          texto:"Tag Friends",
        ),
        QuickButton(
          color:Color(0xffFE7574), 
          iconData: CustomIcons.video_camera,
          texto:"Live",
        ),
      ],
    );*/
  }
}

class QuickButton extends StatelessWidget {
  const QuickButton({
    super.key, required this.iconData, required this.color, required this.texto,
  });

  final IconData iconData;
  final Color color;
  final String texto;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        color:color.withOpacity(0.2),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleButtom(
            color:color.withOpacity(0.7), 
            iconData: iconData,
          ),
          const SizedBox(width: 15,),
          Text(texto,
            style: TextStyle(
              color: color,
              fontWeight: FontWeight.w600
            ),)
        ],
      ),
    );
  }
}