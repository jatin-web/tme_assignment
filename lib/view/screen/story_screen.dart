import 'package:flutter/material.dart';
import 'package:story_view/controller/story_controller.dart';
import 'package:story_view/widgets/story_view.dart';
import 'package:tme_pune/data/demo_data_list.dart';

class StoryScreen extends StatefulWidget {
  static const String routeName = "story_screen";
  const StoryScreen({super.key});

  @override
  State<StoryScreen> createState() => _StoryScreenState();
}

class _StoryScreenState extends State<StoryScreen> {
  final _storyController = StoryController();
  @override
  Widget build(BuildContext context) {
    List<StoryItem> storyItems = storyImagesList
        .map((e) => StoryItem.pageImage(url: e, controller: _storyController))
        .toList();
    return StoryView(
      storyItems: storyItems,
      controller: _storyController, // pass controller here too
      repeat: false, // should the stories be slid forever
      // onStoryShow: (s) {notifyServer(s)},
      onComplete: () {
        Navigator.pop(context);
      },
    );
  }
}
