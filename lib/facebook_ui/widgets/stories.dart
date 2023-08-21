
import 'package:facebook_ui_flutter/models/storie.dart';
import 'package:flutter/material.dart';

import 'story_item.dart';

final _stories=[
  Story(bg: 'wallpapers/1.jpeg', avatar: 'users/1.jpg', username: 'Laura'),
  Story(bg: 'wallpapers/2.jpeg', avatar: 'users/2.jpg', username: 'Pepe'),
  Story(bg: 'wallpapers/3.jpeg', avatar: 'users/3.jpg', username: 'Lili'),
  Story(bg: 'wallpapers/4.jpeg', avatar: 'users/4.jpg', username: 'Baley'),
  Story(bg: 'wallpapers/5.jpeg', avatar: 'users/5.jpg', username: 'Mario'),
  Story(bg: 'wallpapers/6.jpeg', avatar: 'users/6.jpg', username: 'Scarleth'),
  Story(bg: 'wallpapers/4.jpeg', avatar: 'users/4.jpg', username: 'Sofia'),
  Story(bg: 'wallpapers/5.jpeg', avatar: 'users/5.jpg', username: 'Luis'),
  Story(bg: 'wallpapers/6.jpeg', avatar: 'users/6.jpg', username: 'Alberto'),
  Story(bg: 'wallpapers/1.jpeg', avatar: 'users/1.jpg', username: 'Maite'),
  Story(bg: 'wallpapers/2.jpeg', avatar: 'users/2.jpg', username: 'Cesar'),
  Story(bg: 'wallpapers/3.jpeg', avatar: 'users/3.jpg', username: 'Ambar'),
  Story(bg: 'wallpapers/4.jpeg', avatar: 'users/4.jpg', username: 'Luisa'),
];

class Stories extends StatelessWidget {
  const Stories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (_,index){
        final story=_stories[index];
        return StoryItem(story: story,isFirst: index==0,);  
      },
      itemCount: _stories.length,
      ),
    );
  }
}

