
import 'package:facebook_ui_flutter/facebook_ui/widgets/publication_item.dart';
import 'package:facebook_ui_flutter/facebook_ui/widgets/stories.dart';
import 'package:facebook_ui_flutter/models/publication.dart';
import 'package:faker/faker.dart';
import 'widgets/circle_button.dart';
import 'widgets/quick_actions.dart';
import 'package:facebook_ui_flutter/icons/custom_icons_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'widgets/what_is_on_your_maind.dart';

class FacebookUI extends StatelessWidget {
  const FacebookUI({super.key});

  @override
  Widget build(BuildContext context) {
    final faker=Faker();
    final publications=<Publication>[];
    for (var i = 0; i < 50; i++) {
      final ramdon=faker.randomGenerator;
      const reactions =Reaction.values;
      final reactionIndex=ramdon.integer(reactions.length-1);
      final publication=Publication(
        title: faker.lorem.sentence(), 
        createdAt: faker.date.dateTime(), 
        imageUrl: faker.image.image(), 
        comentsCount: ramdon.integer(50000), 
        sharesCount: ramdon.integer(50000), 
        user: User(
          avatar: faker.image.image(), 
          username: faker.person.name()
        ), 
        currentReaction: reactions[reactionIndex]);
        publications.add(publication);
    }
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle:const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 150,
        leading: SvgPicture.asset(
          'logos/facebook.svg',
          colorFilter: const ColorFilter.mode(Colors.blueAccent, BlendMode.srcIn),
          width: 150,
        ),
        actions:const [
          CircleButtom(
            color: Color(0xffBFBFBF), 
            iconData: CustomIcons.search
          ),
          SizedBox(width: 15,),
          CircleButtom(
            color: Color(0xffFE7574), 
            iconData: CustomIcons.bell
          ),
          SizedBox(width: 15,),
          CircleButtom(
            color: Color(0xff7BBAFF), 
            iconData: CustomIcons.user_friends,
            showBadge: true,
          ),
          SizedBox(width: 15,),
          CircleButtom(
            color: Color(0xff1C86E4), 
            iconData: CustomIcons.messenger
          ),
          SizedBox(width: 15,),
        ],
      ),
      body:ListView(
        children: [
          const SizedBox(height: 10,),
          const WhatIsOnYourMind(),
          const SizedBox(height: 30,),
          const QuickActions(),
          const SizedBox(height: 30,),
          const Stories(),
          const SizedBox(height: 30,),
          ListView.builder(
            shrinkWrap: true,
            physics:const NeverScrollableScrollPhysics(),
            itemBuilder: (_,index) =>PublicationItem(
              publication: publications[index]
            ),
            itemCount: publications.length,
          )
        ]
      ),
    );
  }
}

