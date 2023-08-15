import 'package:finance_and_budget/constants/colors.dart';
import 'package:finance_and_budget/view/global_widgets/custom_appbar.dart';
import 'package:finance_and_budget/view/global_widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ManifestationScreen extends StatefulWidget {
  const ManifestationScreen({super.key});

  @override
  State<ManifestationScreen> createState() => _ManifestationScreenState();
}

class _ManifestationScreenState extends State<ManifestationScreen> {

  late TabController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgWhite,
      body: Column(
        children: [
          CustomAppbar(),
          Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 39.h,
                    width: 179.w,
                    decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5.r),
                            bottomLeft: Radius.circular(5.r))),
                    child: Center(child: subTitleText('Goals', color: white)),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
