import 'package:flutter/material.dart';

import 'avatar.dart';

class WhatIsOnYourMind extends StatelessWidget {
  const WhatIsOnYourMind({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20),
      child:  Row(
        children: [
          Avatar(
            size:50, 
            asset: 'users/1.jpg'
          ),
          SizedBox(width: 20,),
          Flexible(
            child: Text("What's on your mind, Lisa?",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          )
        ],
      ),
    );
  }
}