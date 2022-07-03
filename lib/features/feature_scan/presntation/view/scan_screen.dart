import 'package:flutter/material.dart';
import 'package:offers_app/widget/custome_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScanScreen extends StatefulWidget {
  const ScanScreen({Key? key}) : super(key: key);

  @override
  State<ScanScreen> createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
        child: Container(
          child: CustomeText(
            title: '123123',
            fontSize: 50.sp,
          ),
        ),
      ),
    );
  }
}
