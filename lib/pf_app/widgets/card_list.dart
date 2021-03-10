import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pixelfield_app/common/constants.dart';
import 'package:pixelfield_app/common/theme.dart';

class CardDto {
  String author;
  String title;
  List<Color> colors;

  CardDto(this.title, { this.author, this.colors });
}

class CardList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppTheme.cardListHeight,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          for (var item in listCards)
            GestureDetector(
              onTap: () {
                print("Clicked to: ${item.title}");
              },
              child: Container(
                width: AppTheme.cardItemWidth,
                margin: EdgeInsets.only(left: AppTheme.cardListSpace),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(AppTheme.cardItemBorderRadius)),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: item.colors,
                    )),
                child: Padding(
                  padding: AppTheme.cardItemTextPadding,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          item.author ?? "",
                          style: AppTheme.cardItemTextAuthorStyle,
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                          width: AppTheme.cardItemTextWidth,
                          child: Text(
                            item.title,
                            style: AppTheme.cardItemTextTitleStyle,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
