import 'package:sample_ui/assets.dart';
import 'package:sample_ui/widgets/suggestionCard.dart';
import 'package:flutter/material.dart';

class SuggestionSection extends StatelessWidget {
  const SuggestionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      child: Column(
        children: [
          ListTile(
            title: Text("People You May Know"),
            trailing: IconButton(onPressed: (){
              print('More Clicked!!');
            },
              icon: Icon(
                Icons.more_horiz,
                color: Colors.grey[700],
              ),
            ),
          ),
          Container(
            height: 390,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SuggestionCard(
                  name: "Manjuwarrier",
                  avatar: manju,
                  mutualFriends: "100 MutualFriends",
                  addFriend: (){
                    print("Request Friendship");
                  },
                  removeFriend: (){
                    print("Remove this person");
                  },
                ),
                SuggestionCard(
                  name: "Mohanlal",
                  avatar: mohanlal,
                  mutualFriends: "2K MutualFriends",
                  addFriend: (){
                    print("Request Friendship");
                  },
                  removeFriend: (){
                    print("Remove this person");
                  },
                ),
                SuggestionCard(
                  name: "Dulquer",
                  avatar: dulquer,
                  mutualFriends: " 1K MutualFriends",
                  addFriend: (){
                    print("Request Friendship");
                  },
                  removeFriend: (){
                    print("Remove this person");
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}