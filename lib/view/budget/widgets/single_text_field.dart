import 'package:finance_and_budget/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget singleTextField({
  TextEditingController? controller,
  bool? icon,
  String? hintText
}) {
  return Container(
    height: 50.h,
    width: double.infinity,
    child: TextFormField(
        onChanged: (text) async {},
        onEditingComplete: () async {},
        keyboardType: TextInputType.text,
        controller: controller,
        style: TextStyle(
            fontSize: 18.h, color: blackTextColor),
        decoration: InputDecoration(
          fillColor: white,
          suffixIcon:icon!=null? Icon(Icons.calendar_month,color: secondaryTextColor):null,
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.r),
              borderSide: BorderSide(
                width: 1,
                color: blackTextColor,
              )
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.r),
              borderSide: BorderSide(
                width: 1,
                color: blackTextColor,
              )),
          hintStyle: TextStyle(
              fontSize: 18.sp, color: secondaryTextColor),
        )),
  );
}
