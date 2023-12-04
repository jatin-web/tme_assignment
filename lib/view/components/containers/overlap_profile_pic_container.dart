import 'package:flutter/material.dart';

class OverlapProfilePicContainer extends StatelessWidget {
  OverlapProfilePicContainer({super.key});
  final List<String> pictures = [
    "https://images.unsplash.com/photo-1494790108377-be9c29b29330?q=80&w=2787&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://images.unsplash.com/photo-1534528741775-53994a69daeb?q=80&w=2864&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://images.unsplash.com/photo-1500648767791-00dcc994a43e?q=80&w=2787&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: Colors.teal,
      width: 80,
      child: Stack(
        fit: StackFit.loose,
        clipBehavior: Clip.none,
        children: <Widget>[
          getCircularFrame(pictures[0]),
          Positioned(left: 15.0, child: getCircularFrame(pictures[1])),
          Positioned(left: 30.0, child: getCircularFrame(pictures[2]))
        ],
      ),
    );
  }

  getCircularFrame(String imageAddress) => CircleAvatar(
        backgroundColor: Colors.white,
        radius: 15,
        child: CircleAvatar(
          radius: 14,
          backgroundImage: NetworkImage(imageAddress),
        ),
      );
}
