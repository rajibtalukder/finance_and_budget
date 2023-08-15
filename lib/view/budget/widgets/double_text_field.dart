import 'package:finance_and_budget/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget doubleTextField({
  TextEditingController? controller,
  IconData? icon,
  Color? iconBgColor,
  String? hintText1,
  String? hintText2,
}) {
  return Container(
    height: 50.h,
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(5.r)),
      border: Border.all(
        color: blackTextColor,
        width: 1.w,
      ),
    ),
    child: Row(
      children: [
        SizedBox(
          width: 157.w,
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: TextFormField(
              onChanged: (text) async {},
              onEditingComplete: () async {},
              keyboardType: TextInputType.text,
              controller: controller,
              style: TextStyle(
                  fontSize: 18.h, color: blackTextColor),
              decoration: InputDecoration(
                hintText: hintText1,
                hintStyle: TextStyle(
                    fontSize: 18.sp, color: secondaryTextColor),
              ),
            ),
          ),
        ),
        VerticalDivider(
          color: blackTextColor,
          thickness: 1,
        ),
        SizedBox(
          width: 157.w,
          child: TextFormField(
            onChanged: (text) async {},
            onEditingComplete: () async {},
            keyboardType: TextInputType.text,
            controller: controller,
            style: TextStyle(
                fontSize: 18.h, color: blackTextColor),
           decoration: InputDecoration(
             hintText: hintText2,
             hintStyle: TextStyle(
                 fontSize: 18.sp, color: secondaryTextColor),
           ),
          ),
        ),
        Expanded(
          child: Container(
            height: 50.h,
            width: 20.h,
            decoration: BoxDecoration(
                color: iconBgColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(5.r),
                  bottomRight: Radius.circular(5.r),
                )),
            child: Icon(icon, color: white),
          ),
        )
      ],
    ),
  );
}
