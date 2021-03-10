import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pixelfield_app/common/constants.dart';
import 'package:pixelfield_app/common/theme.dart';
import 'package:sprintf/sprintf.dart';

class ProjectDto {
  String title;
  String imageUrl;
  DateTime start;
  DateTime end;
  int patronsNum;
  int patronsGoal;

  get isNew => DateTimeRange(start: this.start, end: DateTime.now()).duration < newLabelDuration;

  ProjectDto(this.title, {this.imageUrl, this.start, this.end, this.patronsNum, this.patronsGoal});
}

class ProjectList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppTheme.projectListSize.height,
      width: AppTheme.projectListSize.width,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: AppTheme.projectListPadding,
        children: [
          for (var item in listCelebrities)
            GestureDetector(
              onTap: () {
                print("Clicked to: ${item.title}");
              },
              child: _ProjectItem(item: item),
            ),
        ],
      ),
    );
  }
}

class _ProjectItem extends StatelessWidget {
  const _ProjectItem({
    Key key,
    @required this.item,
  }) : super(key: key);

  final ProjectDto item;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppTheme.projectItemSize.width,
      margin: AppTheme.projectItemMargin,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: AppTheme.projectItemSize.width,
                height: AppTheme.projectItemSize.height,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.center,
                    image: NetworkImage(item.imageUrl),
                  ),
                ),
              ),
              Positioned(left: 5, top: 5, child: _NewLabel(item: item)),
            ],
          ),
          Container(
            padding: AppTheme.projectItemTextPadding,
            child: Text(
              item.title,
              maxLines: AppTheme.projectItemTextMaxLines,
              style: AppTheme.projectItemTextStyle,
            ),
          ),
          _ProjectProgress(item: item),
        ],
      ),
    );
  }
}

class _NewLabel extends StatelessWidget {
  final ProjectDto item;

  const _NewLabel({
    Key key,
    @required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (!item.isNew) {
      return Container();
    } else {
      return Container(
        decoration: AppTheme.projectItemLabelDecoration,
        padding: AppTheme.projectItemLabelPadding,
        child: Padding(
          padding: AppTheme.projectItemLabelTextPadding,
          child: Text(Texts.projectItemLabelNew, style: AppTheme.projectItemLabelTextStyle),
        ),
      );
    }
  }
}

class _ProjectProgress extends StatelessWidget {
  final ProjectDto item;

  const _ProjectProgress({
    Key key,
    @required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      () {
        if (item.patronsNum < item.patronsGoal) {
          return Container(
            alignment: Alignment.topLeft,
            padding: AppTheme.projectItemProgressTextPadding,
            child: Text(
              sprintf(Texts.projectItemProgress, [item.patronsNum]),
              style: AppTheme.projectItemProgressTextStyle,
            ),
          );
        } else {
          return Row(
            children: [
              Text(
                sprintf(Texts.projectItemProgressReady, [item.patronsNum]),
                style: AppTheme.projectItemProgressReadyTextStyle,
              ),
              Spacer(),
              AppTheme.projectItemProgressReadyIcon
            ],
          );
        }
      }(),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: LinearProgressIndicator(
          value: item.patronsNum / item.patronsGoal,
          backgroundColor: AppTheme.projectItemProgressBackgroundColor,
          valueColor: AlwaysStoppedAnimation<Color>(AppTheme.projectItemProgressColor),
          minHeight: AppTheme.projectItemProgressHeight,
        ),
      ),
      Row(children: [
        SvgPicture.asset(SvgIcons.clock),
        Padding(
          padding: AppTheme.projectItemProgressTimeTextPadding,
          child: Text(
            "22 dní a 15 hodin",
            style: AppTheme.projectItemProgressTimeTextStyle,
          ),
        )
      ])
    ]);
  }
}
