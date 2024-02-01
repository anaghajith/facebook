import 'package:sample_ui/assets.dart';
import 'package:sample_ui/sections/storySection.dart';
import 'package:sample_ui/sections/suggestionSection.dart';
import 'package:sample_ui/widgets/headerButton.dart';
import 'package:sample_ui/widgets/postCard.dart';
import 'package:sample_ui/widgets/suggestionCard.dart';
import 'package:flutter/material.dart';
import 'package:sample_ui/widgets/circularButton.dart';
import 'package:sample_ui/sections/StatusSection.dart';
import 'package:sample_ui/sections/roomSection.dart';
import 'package:sample_ui/sections/headerButtonSection.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Widget thinDivider = Divider(
      thickness: 1,
      color: Colors.grey[300],
    );
    Widget thickDivider = Divider(
      thickness: 10,
      color: Colors.grey[300],
    );
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            "facebook",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            CircularButton(
                buttonIcon: Icons.search,
                buttonAction: () {
                  print("Search Screen appears");
                }
            ),

            CircularButton(
                buttonIcon: Icons.chat,
                buttonAction: () => print("message friends")
            ),
          ],
        ),
        body: ListView(
          children: [
            const StatusSection(),
            thinDivider,
            HeaderButtonSection(
              buttonOne: headerButton(
                  buttonText: "Live",
                  buttonIcon: Icons.video_call,
                  buttonAction: (){
                    print("Go Live!!");
                  },
                  buttonColor: Colors.red),
              buttonTwo: headerButton(
                  buttonText: "Photo",
                  buttonIcon: Icons.photo_library,
                  buttonAction: (){
                    print("Take photo!!");
                  },
                  buttonColor: Colors.green),
              buttonThree: headerButton(
                  buttonText: "Room",
                  buttonIcon: Icons.video_call,
                  buttonAction: (){
                    print(" Create room !!");
                  },
                  buttonColor: Colors.purple),
            ),
            thickDivider,
            RoomSection(),
            thickDivider,
            StorySection(),
            thickDivider,
            PostCard(
              avatar: mammootty,
              name: "Mammootty",
              publishedAt: '5h',
              postImage: kaathal,
              postTitle: 'Kaaathal - The Core',
              showBlueTick: true,
              likeCount: "100k",
              shareCount: "80K",
              commentCount: "70K",
            ),
            thickDivider,
            PostCard(
              avatar: dulquer,
              name: "Dulquer",
              publishedAt: '1h',
              postImage: kotha,
              postTitle: 'King of Kotha',
              showBlueTick: true,
              likeCount: "100K",
              shareCount: "12K",
              commentCount: "3.4K",
            ),
            thickDivider,
            SuggestionSection(),
            thickDivider,
            PostCard(
              avatar: nitya,
              name: "Nithya Menon",
              publishedAt: '1 day ago',
              postImage: nit,
              postTitle: 'Its something more than love',
              showBlueTick: true,
              likeCount: "460K",
              shareCount: "10.2K",
              commentCount: "3K",
            ),
            thickDivider,
          ],

        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}