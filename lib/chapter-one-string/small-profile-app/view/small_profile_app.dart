import 'package:flutter/material.dart';
import 'package:how_flutter_uses_dart/chapter-one-string/small-profile-app/controller/body_controller.dart';
import 'package:how_flutter_uses_dart/chapter-one-string/small-profile-app/model/profile_tags.dart';

class SmallProfileApp extends StatelessWidget {
  /// here goes the list of profile tags
  ///
  /// it's fake data, in future it'll come from API

  /// we get data from model
  final profiles = profileTags;

  @override
  Widget build(BuildContext context) {
    /// the profile picture adjusts itself to
    /// take half of the screen dynamically
    var halfOfScreen = MediaQuery.of(context).size.width / 4;

    /// we can map our profile tags to list and avoid async* generator
    var tag = profiles.map((tag) => Chip(label: Text(tag))).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page'),
      ),
      // refactoring ColumnWidget in controler section
      body: ColumnWidget(halfOfScreen: halfOfScreen, tag: tag),
    );
  }
}
