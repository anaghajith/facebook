import 'package:sample_ui/assets.dart';
import 'package:sample_ui/widgets/storyCard.dart';
import 'package:flutter/material.dart';


class StorySection extends StatelessWidget {
  const StorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            labelText: "Add to Story",
            avatar: mammootty,
            story: mammootty,
            createStoryStatus: true,
          ),
          StoryCard(
            labelText: "Mohanlal",
            avatar: mohanlal,
            story: jailer,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Dulquer",
            avatar: dulquer,
            story: kotha,
            displayBorder: true,

          ),
          StoryCard(
            labelText: "Manjuwarrier",
            avatar: manju,
            story: manj,
            displayBorder: true,

          ),
          StoryCard(
            labelText: "Nithya Menon",
            avatar: nitya,
            story: nit,
            displayBorder: true,

          ),
          StoryCard(
            labelText: "Prithviraj",
            avatar: prithviraj,
            story: aadu,
            displayBorder: true,
          ),
        ],
      ),
    );
  }
}