
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:offers_app/core/app_colors.dart';
import 'package:offers_app/core/app_font.dart';
import 'package:offers_app/core/app_size.dart';
import 'package:offers_app/widget/custome_text.dart';


class CustomTextFilledAuthApp extends StatefulWidget {
  String ?hintText;
  String ?suffixIcon;
  String ?lable;
  int? type;
  FormFieldValidator<String> ?validator;
  ValueChanged<String>? onChanged;
  TextEditingController? controller;
  FocusNode ?focusNode;
  String ?fontFamily;
  TextInputType? textInputType;
  bool obscureText;
  double paddingHIcon;
  double paddingVIcon;
  bool readOnly;
  GestureTapCallback? pressCard;
  double widthTextField;
  double heightTextField;
  bool showWidget;




  CustomTextFilledAuthApp({
    Key ?key,
    this.hintText,
    this.lable,
    this.fontFamily,
    this.focusNode=null,
    this.type,
    this.suffixIcon ,
    this.onChanged,
    this.controller,
    this.validator,
    this.textInputType = TextInputType.emailAddress,
    this.obscureText = false,
    this.paddingVIcon = 15,
    this.paddingHIcon = 10,
    this.readOnly = false,
    this.pressCard,
    this.heightTextField = 50,
    this.widthTextField = 280,
    this.showWidget = false,
    // this.suffix,
  }) : super(key: key);

  @override
  State<CustomTextFilledAuthApp> createState() => _CustomTextFilledAuthAppState();
}

class _CustomTextFilledAuthAppState extends State<CustomTextFilledAuthApp> {

  bool _passwordVisible=false;


  @override
  void initState() {
    if(widget.obscureText){
      _passwordVisible=true;
    }else{
      _passwordVisible=false;

    }
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      context,
      designSize: Size(SCREEN_WIDTH, SCREEN_HIGHT),
    );
    return GestureDetector(
        onTap: widget.pressCard,
        child: SizedBox(
          height: 50.h,
          child: TextFormField(
            controller: widget.controller,
            onChanged: widget.onChanged,
            focusNode: widget.focusNode,
            readOnly: widget.readOnly,
            // textInputAction:(type==null)?TextInputAction.next:TextInputAction.done ,
            keyboardType: widget.textInputType,
            obscureText: _passwordVisible,
            validator: widget.validator,
            style:  TextStyle(color: Colors.black,
                fontFamily: widget.fontFamily??FONT_APP,
                fontSize: fontSize15.sp),

            cursorColor: TitleTextSplash,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.transparent,
              labelText: widget.lable!,

              hintStyle:  TextStyle(      color: TitleTextSplash,fontFamily:  widget.fontFamily??FONT_APP,fontSize: fontSize15.sp,),
              labelStyle:  TextStyle(      color: TitleTextSplash,fontFamily:  widget.fontFamily??FONT_APP,fontSize: fontSize15.sp,),
              suffixIcon: (widget.obscureText)?IconButton(
                icon: Icon(
                  // Based on passwordVisible state choose the icon
                  size: 20.w,
                  _passwordVisible
                      ? Icons.visibility
                      : Icons.visibility_off,
                  color: TitleTextLogin, //Theme.of(context).primaryColorDark,
                ),
                onPressed: () {
                  // Update the state i.e. toogle the state of passwordVisible variable
                  setState(() {
                    _passwordVisible = !_passwordVisible;
                  });
                },
              ):Padding(
                padding: EdgeInsetsDirectional.only(end: 10.w),
                child: widget.showWidget?Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomeText(
                      title: '966+',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: TitleTextSplash,
                    ),
                    SizedBox(width: 10.w),
                    Image.asset(widget.suffixIcon!,width: 16.w,height: 16.h,color: TitleTextLogin,),
                  ],
                ):Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset(widget.suffixIcon!,width: 16.w,height: 16.h,color: TitleTextLogin,),
                  ],
                ),
              ),
              hintText: widget.hintText!,
              // border: OutlineInputBorder(
              //     borderRadius: BorderRadius.circular(10.w),
              //     borderSide: BorderSide(width: 0.5,color: kSearchFiledColor)
              // ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.w),
                  borderSide: BorderSide(width: 0.5,color: kUnSelectTabColor)
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.w),
                borderSide: BorderSide(width: 0.5,color: kUnSelectTabColor),
              ),

            ),

          ),
        ),
    );
  }
}