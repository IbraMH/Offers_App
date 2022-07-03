
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:offers_app/core/app_colors.dart';
import 'package:offers_app/core/app_font.dart';
import 'package:offers_app/core/app_size.dart';



class TextFiledSearch extends StatefulWidget {
  late TextEditingController searchQuery;
  ValueChanged<String>? onSubmitted;
  FocusNode ? focusNode ;
  GestureTapCallback ?pressClose;
  String? imageSearch;
  int? widthImageSearch;
  int? heightImageSearch;
  Color fillColor;
  String hintText;
  Color colorIcon;

      TextFiledSearch({Key? key,this.colorIcon = Colors.black54,this.hintText = 'ابحث عن اخر العروض',this.fillColor = Colors.white,required this.searchQuery,this.pressClose,this.onSubmitted,this.focusNode,this.imageSearch = 'assets/svg/search.svg',this.heightImageSearch = 30,this.widthImageSearch = 30}) : super(key: key);

  @override
  State<TextFiledSearch> createState() => _TextFiledSearchState();
}

class _TextFiledSearchState extends State<TextFiledSearch> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: 1,
      minLines: 1,
        autofocus:false,
      // enabled: false,
      style:const TextStyle(
        color: TitleTextSplash,
          fontFamily: FONT_APP,
          fontSize: fontSize13),
      textInputAction: TextInputAction.search,
      onSubmitted: widget.onSubmitted,
      focusNode: widget.focusNode,

      controller: widget.searchQuery,
      cursorColor: TitleTextSplash,
      onChanged: (value) {
        setState(() {});
      },
      decoration: InputDecoration(

        hintText: widget.hintText,
        filled: true,
        fillColor: widget.fillColor,

        prefixIconConstraints: BoxConstraints(minWidth: 23, maxHeight: 20),
        prefixIcon: Padding(
          padding: const EdgeInsets.only(right: 10, left: 8),
          child: SvgPicture.asset(widget.imageSearch!,width: widget.widthImageSearch!.w,height: widget.heightImageSearch!.h,color: TitleTextLogin,)//SvgPicture.asset(ICON_SEARCH,color: Colors.white,),
        ),
        suffixIconConstraints: BoxConstraints(maxHeight: 20, maxWidth: 35),
        suffixIcon:
        GestureDetector(
          onTap: widget.pressClose,
          child: Padding(
            padding: const EdgeInsets.only(right: 10, left: 10),
            child: Icon(
              Icons.close,
              color: widget.searchQuery.text.isEmpty
                  ? Colors.transparent
                  : /*kUnSelectTabColor*/Colors.black,
            ),
          ),
        ),

        isDense: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        border: InputBorder.none,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.r)),
          borderSide: BorderSide(
            width: 0.5,
            color: kTextGray,
          ),
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.r)),
          borderSide: BorderSide(
            width: 0.5,
                color: kTextGray,
          ),
            ),
        disabledBorder:InputBorder.none,


        hintStyle: TextStyle(
            color: Colors.grey,
            fontFamily: FONT_APP,
            fontSize: fontSize15),
      ),
      textAlign: TextAlign.start,
    );;
  }
}
