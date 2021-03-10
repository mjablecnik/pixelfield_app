import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pixelfield_app/common/constants.dart';
import 'package:pixelfield_app/common/theme.dart';
import 'package:separated_column/separated_column.dart';

class FoundationDto {
  String name;
  String logoUrl;

  FoundationDto(this.name, {this.logoUrl});
}

class FoundationList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppTheme.foundationListPadding,
      child: Column(
        children: [
          Padding(
            padding: AppTheme.foundationListHeaderPadding,
            child: Row(
              children: [
                Text(
                  Texts.foundationHeader,
                  style: AppTheme.foundationListHeaderNameStyle,
                ),
                Spacer(),
                Container(
                  decoration: AppTheme.foundationListHeaderButtonDecoration,
                  padding: AppTheme.foundationListHeaderButtonPadding,
                  child: Text(
                    Texts.foundationButton.toUpperCase(),
                    style: AppTheme.foundationListHeaderButtonStyle,
                  ),
                )
              ],
            ),
          ),
          SeparatedColumn(
            children: [
              for (var item in listFoundations)
                GestureDetector(
                  onTap: () {
                    print("Clicked to: ${item.name}");
                  },
                  child: ListTile(
                    title: Text(item.name, style: AppTheme.foundationListItemTextStyle),
                    contentPadding: AppTheme.foundationListItemTextPadding,
                    leading: Container(
                      width: AppTheme.foundationListItemImageSize.width,
                      height: AppTheme.foundationListItemImageSize.height,
                      decoration: BoxDecoration(
                        shape: AppTheme.foundationListItemImageShape,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(item.logoUrl),
                        ),
                      ),
                    ),
                  ),
                ),
            ],
            includeOuterSeparators: true,
            separatorBuilder: (context, index) {
              return AppTheme.divider;
            },
          ),
        ],
      ),
    );
  }
}
