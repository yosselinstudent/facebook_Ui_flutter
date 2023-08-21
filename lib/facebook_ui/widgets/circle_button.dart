
import 'package:flutter/material.dart';


class CircleButtom extends StatelessWidget {
    final Color color;
    final IconData iconData;
    final bool showBadge;

  const CircleButtom({super.key, required this.color, required this.iconData,  this.showBadge=false});

  @override
  Widget build(BuildContext context) {
    
    return 
      Center(
        child: Stack(
          children:[ Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
            child: Icon(
              iconData,
              color: Colors.white,
              size: 16,) 
          ),
          if(showBadge)
            Positioned(
              top: -3,
              right: 0,
              child: Container(
              width: 12,
              height: 12,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
                border: Border.all(width: 2,color: Colors.white),
              ),
              )
            )

          //Operador ternario para hacer evaluaciones
          /*showBadge? Positioned(
            top: -3,
            right: 0,
            child: Container(
            width: 12,
            height: 12,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.red,
              border: Border.all(width: 2,color: Colors.white),
            ),
          )
          ):Container(height: 0,)*/
        ],
        ),
      );
  }
}