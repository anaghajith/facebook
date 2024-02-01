import 'package:sample_ui/widgets/avatar.dart';
import 'package:flutter/material.dart';
import 'package:sample_ui/assets.dart';
class StatusSection extends StatelessWidget {
  const StatusSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Avatar(displayImage: mammootty, displayStatus: false,),
      title: const TextField(

        decoration: InputDecoration(
          hintText: "whats on your mind?",
          hintStyle: TextStyle(color: Colors.black),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,

        ),
      ),
    );
  }
}