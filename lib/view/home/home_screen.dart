import 'package:finance_and_budget/view/global_widgets/custom_appbar.dart';
import 'package:finance_and_budget/view/global_widgets/custom_card.dart';
import 'package:finance_and_budget/view/global_widgets/custom_text.dart';
import 'package:finance_and_budget/view/home/widgets/accounts_row.dart';
import 'package:finance_and_budget/view/home/widgets/month_budget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double intValue = 0;
    return Scaffold(
        backgroundColor: bgWhite,
        body: SingleChildScrollView(
            child: Column(
          children: [
            const CustomAppbar(),
            Padding(
                padding: EdgeInsets.all(20.w),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      customCard(
                          134,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              titleText('Pay off \$5000 Debt',
                                  color: titleTextColor, size: 20),
                              SliderTheme(
                                  data: SliderTheme.of(context).copyWith(
                                    showValueIndicator:
                                        ShowValueIndicator.always,
                                    inactiveTrackColor:
                                        secondaryTextColor.withOpacity(0.2),
                                  ),
                                  child: Slider(
                                    onChanged: (value) {
                                      setState(() {
                                        intValue = value;
                                      });
                                    },
                                    value: intValue,
                                  )),
                              subTitleText(
                                  'Cool! let\'s keep your expense below the budget',
                                  size: 15),
                            ],
                          )),
                      SizedBox(height: 20.h),
                      customCard(
                          173,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              titleText('Accounts Overview',
                                  color: titleTextColor, size: 20),
                              accountsRow('Cash Count', '1234567890'),
                              accountsRow('Credit Score', '775\$'),
                              accountsRow(
                                  'Credit Card Utilization', 'N12,000.00'),
                            ],
                          )),
                      SizedBox(height: 20.h),
                      MonthBudget(),
                      SizedBox(height: 20.h),
                      customCard(
                          228,
                          Container(
                            padding: EdgeInsets.all(10.h),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 56.h,
                                      width: 60.w,
                                      decoration: BoxDecoration(
                                          color: primaryColor.withOpacity(0.1),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(14.r))),
                                      child: Center(
                                        child: SizedBox(
                                          height: 22.h,
                                          width: 20.w,
                                          child: Image.asset(
                                              'assets/images/transVector.png',
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 10.w),
                                    titleText('Transactions',
                                        size: 20, color: titleTextColor)
                                  ],
                                ),

                                Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        titleText('Store-1', size: 16),
                                        titleText('\$350', size: 16),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Stack(
                                          children: [
                                            Container(
                                              height: 4.h,
                                              width: 237.w,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.all(
                                                      Radius.circular(10.r)),
                                                  color: secondaryTextColor
                                                      .withOpacity(0.2)),
                                            ),
                                            Container(
                                              height: 4.h,
                                              width: 177.w,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.all(
                                                      Radius.circular(10.r)),
                                                  color: primaryColor),
                                            ),
                                          ],
                                        ),
                                        titleText('Left \$186',color: secondaryTextColor, size: 12),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        titleText('Store-2', size: 16),
                                        titleText('\$250', size: 16),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Stack(
                                          children: [
                                            Container(
                                              height: 4.h,
                                              width: 237.w,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.all(
                                                      Radius.circular(10.r)),
                                                  color: secondaryTextColor
                                                      .withOpacity(0.2)),
                                            ),
                                            Container(
                                              height: 4.h,
                                              width: 137.w,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.all(
                                                      Radius.circular(10.r)),
                                                  color: primaryColor),
                                            ),
                                          ],
                                        ),
                                        titleText('Left \$186',color: secondaryTextColor, size: 12),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ))
                    ],
                  ),
                )),
            SizedBox(
              height: 50.h,
            ),
          ],
        )));
  }
}
