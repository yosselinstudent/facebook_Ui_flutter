import 'package:flutter/material.dart';

import '../../models/storie.dart';
import 'avatar.dart';

class StoryItem extends StatelessWidget {
  const StoryItem({
    super.key,
    required this.story, required this.isFirst,
  });

  final Story story;
  final bool isFirst;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 90,
      margin: EdgeInsets.only(right: 13,left: isFirst? 18 : 0),
      child: Column(
        children: [
          Expanded(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  bottom: 20,
                  child: Container(
                    margin:const EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image:DecorationImage(image: AssetImage(story.bg),fit: BoxFit.cover) 
                    ), 
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Avatar(
                    size: 40, 
                    borderWidth: 3,
                    asset: story.avatar)
                )
              ],
            ),
          ),
          Text(story.username,maxLines: 1,overflow: TextOverflow.ellipsis,textAlign:TextAlign.center ,),
        ],
      ),
    );
  }
}