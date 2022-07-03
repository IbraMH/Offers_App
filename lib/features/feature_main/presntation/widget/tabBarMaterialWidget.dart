import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:offers_app/core/app_colors.dart';

class TabBarMaterialWidget extends StatefulWidget {
  final int index;
  final ValueChanged<int> onChangedTab;

  TabBarMaterialWidget({
    required this.index,
    required this.onChangedTab,
  });

  @override
  State<TabBarMaterialWidget> createState() => _TabBarMaterialWidgetState();
}

class _TabBarMaterialWidgetState extends State<TabBarMaterialWidget> {
  @override
  Widget build(BuildContext context) {
    final placeholder = Opacity(
      opacity: 0,
      child: IconButton(
        onPressed: null,
        icon: Icon(Icons.no_cell),
      ),
    );

    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.only(
          topStart: Radius.circular(15.r),
          topEnd: Radius.circular(15.r),
        ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 10,
              offset: Offset(0, 1), // changes position of shadow
            ),
          ]
      ),
      child: BottomAppBar(
        shape: CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        notchMargin: -8,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildTabItem(
              index: 0,
              image: 'assets/svg/home.svg',
            ),
            buildTabItem(
              index: 1,
              image: 'assets/svg/search.svg',
            ),
            buildTabItem(
              index: 2,
            ),
            // placeholder,
            buildTabItem(
              index: 3,
              image: 'assets/svg/category.svg',
            ),
            buildTabItem(
              index: 4,
              image: 'assets/svg/user.svg',
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTabItem({
    required int index,
    String? image,
  }) {
    final isSelected = index == widget.index;
    return Column(
      children: [
        IconButton(
          icon: index != 2
              ? SvgPicture.asset(
                  image!,
                  color: isSelected
                      ? TitleTextLogin
                      : TitleTextSplash,
                )
              : Opacity(opacity: 0, child: Icon(Icons.no_cell)),
          onPressed: index != 2 ? () => widget.onChangedTab(index) : null,
        ),
        SvgPicture.asset(
          'assets/svg/path.svg',
          color: isSelected ? TitleTextLogin : Colors.transparent,
        ),
      ],
    );
  }
}
