import 'package:flutter/material.dart';

class StoryTile extends StatefulWidget {
  const StoryTile({super.key});

  @override
  State<StoryTile> createState() => _StoryTileState();
}

class _StoryTileState extends State<StoryTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.015),
      width: MediaQuery.of(context).size.width * 0.2,
      height: MediaQuery.of(context).size.width * 0.2,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.amber,width: 1.5),
          boxShadow: const [
            BoxShadow(
                blurRadius: 10,
                blurStyle: BlurStyle.outer,
                color: Colors.amberAccent,
                offset: Offset(0, 0)
            )
          ],
        image: const DecorationImage(
            image: AssetImage("assets/images/pexels-jack-winbow-1559486.jpg"), fit: BoxFit.fitHeight),
        shape: BoxShape.circle,
      ),
    );
  }
}
