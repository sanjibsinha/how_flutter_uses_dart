import 'package:flutter/material.dart';

class SmallProfileApp extends StatelessWidget {
  /// here goes the list of profile tags
  ///
  /// it's fake data, in future it'll come from API

  final profileTags = [
    'Author',
    'Coder',
    'Flutterian',
    'Dartisan',
  ];

  @override
  Widget build(BuildContext context) {
    var halfOfScreen = MediaQuery.of(context).size.width / 4;
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page'),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SpaceWidget(),
          Center(
            child: CircleAvatar(
              child: Icon(
                Icons.person,
                size: 100,
              ),
              radius: halfOfScreen,
            ),
          ),
          SpaceWidget(),
          Text(
            'John Smith',
            style: Theme.of(context).textTheme.headline4,
          ),
          SpaceWidget(),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'John Smith was a good gunner who stuck to a city called '
              'Jericho while going to Mexico from Chicago.',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          SpaceWidget(),
          Wrap(
            children: [
              Chip(
                label: Text(profileTags[0]),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class SpaceWidget extends StatelessWidget {
  const SpaceWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 10,
    );
  }
}
