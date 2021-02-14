import 'package:flutter/material.dart';
import 'package:how_flutter_uses_dart/chapter-one-string/small-profile-app/controller/src/iterate_tags.dart';
import 'package:how_flutter_uses_dart/chapter-one-string/small-profile-app/model/profile_tags.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({
    Key key,
    @required this.halfOfScreen,
    @required this.tag,
  }) : super(key: key);

  final double halfOfScreen;
  final List<Chip> tag;

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SpaceWidget(),
        buildCenter,
        SpaceWidget(),
        _buildText(context),
        SpaceWidget(),
        PaddingWidget(),
        SpaceWidget(),
        ContainerWidget(tag: tag),
        SpaceWidget(),
      ],
    );
  }

  Text _buildText(BuildContext context) {
    return Text(
        'John Smith',
        style: Theme.of(context).textTheme.headline4,
      );
  }

  Center get buildCenter {
    return Center(
        child: CircleAvatar(
          child: Icon(
            Icons.person,
            size: 100,
          ),
          radius: halfOfScreen,
        ),
      );
  }
}

class PaddingWidget extends StatelessWidget {
  const PaddingWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'John Smith was a good gunner who stuck to a city called '
        'Jericho while going to Mexico from Chicago.',
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }
}

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({
    Key key,
    @required this.tag,
  }) : super(key: key);

  final List<Chip> tag;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.symmetric(
        horizontal: 8.0,
      ),
      child: Wrap(
        spacing: 5,
        // now, it doesn't depend on the number of the items
        // in usual cases, it should come from API
        children: iterateTags(profileTags).toList(),
        // children: tag,
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
