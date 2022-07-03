import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:offers_app/core/app_colors.dart';
import 'package:offers_app/core/app_font.dart';
import 'package:offers_app/core/app_size.dart';

class CustomTextFilledApp extends StatelessWidget {
  String? hintText;
  int? type;
  FormFieldValidator<String>? validator;
  ValueChanged<String>? onChanged;
  TextEditingController? controller;
  FocusNode? focusNode;
  String? fontFamily;
  TextInputType? textInputType;
  bool obscureText;
  double paddingIcon;
  bool readOnly;
  GestureTapCallback? pressCard;
  int maxLine;
  int? maxLength;
  double? height;

  CustomTextFilledApp({
    Key? key,
    this.hintText,
    this.fontFamily,
    this.focusNode = null,
    this.type,
    this.onChanged,
    this.controller,
    this.validator,
    this.textInputType = TextInputType.emailAddress,
    this.obscureText = false,
    this.paddingIcon = 15,
    this.readOnly = false,
    this.pressCard,
    this.maxLine = 4,
    this.maxLength,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      context,
      designSize: Size(SCREEN_WIDTH, SCREEN_HIGHT),
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        /*      Text(lable.tr,style:TextStyle(color: Colors.black,fontSize:14,fontWeight: FontWeight.bold),),
        SizedBox(height: 10,),*/
        GestureDetector(
          onTap: pressCard,
          child: SizedBox(
            height: height,
            child: TextFormField(
              controller: controller,
              onChanged: onChanged,
              focusNode: focusNode,
              readOnly: readOnly,
              maxLines: maxLine,
              maxLength: maxLength,
              // textInputAction:(type==null)?TextInputAction.next:TextInputAction.done ,

              keyboardType: textInputType,
              obscureText: obscureText,
              validator: validator,
              cursorColor: TitleTextSplash,
              style: TextStyle(
                color: Colors.black,
                fontSize: fontSize15.sp,
                  fontFamily: fontFamily??FONT_APP,
              ),

              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,

                hintStyle: TextStyle(
                    color: Colors.grey[400],
                    fontSize: fontSize15.sp,
                    fontFamily: fontFamily ?? FONT_APP),

                // prefixIcon: Padding(
                //     padding: EdgeInsets.only(right: paddingIcon.w, left: paddingIcon.w),
                //     child: Image.asset(suffixIcon!,width: 20.w,height: 20.h,)//SvgPicture.asset(ICON_SEARCH,color: Colors.white,),
                // ),
                hintText: hintText!,

                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.w),
                  borderSide: BorderSide(
                    width: 0.5,
                    color: kTextGray,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.w),
                  borderSide: BorderSide(
                    width: 0.5,
                    color: kTextGray,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
