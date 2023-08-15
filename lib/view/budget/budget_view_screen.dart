import 'package:finance_and_budget/view/budget/widgets/custom_expence.dart';
import 'package:finance_and_budget/view/global_widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/colors.dart';
import '../global_widgets/custom_appbar.dart';
import '../global_widgets/custom_card.dart';

class BudgetViewScreen extends StatefulWidget {
  const BudgetViewScreen({super.key});

  @override
  State<BudgetViewScreen> createState() => _BudgetViewScreenState();
}

class _BudgetViewScreenState extends State<BudgetViewScreen>
    with SingleTickerProviderStateMixin {
  late TabController controller;
  double intValue = 0;

  @override
  void initState() {
    controller = TabController(vsync: this, length: 4);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgWhite,
        body: SingleChildScrollView(
          child: Column(children: [
            CustomAppbar(),
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20.0.h, 20.h, 20.h, 0.h),
                    child: Row(
                      children: [
                        Container(
                          height: 35.h,
                          width: 37.w,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: titleTextColor,
                                width: 1,
                              ),
                              color: white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50.r))),
                          child: Icon(Icons.arrow_back),
                        ),
                        SizedBox(width: 10.w),
                        titleText('Car loan',
                            color: titleTextColor, size: 25, authPage: true),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20.0.h, 20.h, 20.h, 0.h),
                  child: Stack(
                    children: [
                      Container(
                        height: 215.h,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 1,
                                blurRadius: 5,
                                offset:
                                    Offset(0, 2), // changes position of shadow
                              ),
                            ],
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.r))),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(10.r)),
                          child: Image.asset('assets/images/rec_background.png',
                              fit: BoxFit.cover),
                        ),
                      ),
                      Center(
                        child: Container(
                          margin: EdgeInsets.only(top: 20.h),
                          height: 79.h,
                          width: 79.w,
                          decoration: BoxDecoration(
                              color: white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(14.r))),
                          child: Center(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15.0),
                              child: Image.asset(
                                  'assets/images/home_vector.png',
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              titleText('Car loan', size: 25, authPage: true),
                              Row(
                                children: [
                                  subTitleText('Created : '),
                                  subTitleText('13/12/2023',
                                      color: blackTextColor),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 30.h),
                Container(
                  height: 50.h,
                  color: white,
                  child: TabBar(
                    physics: const BouncingScrollPhysics(),
                    controller: controller,
                    isScrollable: true,
                    labelColor: primaryColor,
                    indicatorColor: primaryColor,
                    tabs: [
                      Tab(
                        child: subTitleText('Income',
                            authPage: true,
                            fontWeight: FontWeight.w500,
                            color: titleTextColor),
                      ),
                      Tab(
                        child: subTitleText('Fixed Expence',
                            authPage: true,
                            fontWeight: FontWeight.w500,
                            color: titleTextColor),
                      ),
                      Tab(
                        child: subTitleText('Variable Expence',
                            authPage: true,
                            fontWeight: FontWeight.w500,
                            color: titleTextColor),
                      ),
                      Tab(
                        child: subTitleText('Sinking Funds',
                            authPage: true,
                            fontWeight: FontWeight.w500,
                            color: titleTextColor),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 30.h),
                Container(
                  height: 156.h,
                  padding: EdgeInsets.fromLTRB(20.0.h, 0.h, 20.h, 0.h),
                  child: TabBarView(
                    controller: controller,
                    children: [
                      customExpence(
                          title: 'Income',
                          row1text1: 'Salary',
                          row1text2: '\$ 45350',
                          row2text1: 'Support',
                          row2text2: '\$ 55350'),
                      customExpence(
                          title: 'Fixed Expense',
                          row1text1: 'Rent',
                          row1text2: '\$  5350',
                          row2text1: 'Car loan',
                          row2text2: '\$ 50050'),
                      customExpence(
                          title: 'Variable Expense',
                          row1text1: 'Shopping',
                          row1text2: '\$ 25350',
                          row2text1: 'Car loan',
                          row2text2: '\$ 55350'),
                      customExpence(
                          title: 'Sinking Funds',
                          row1text1: 'Gifts ',
                          row1text2: '\$ 350',
                          row2text1: 'Birthday',
                          row2text2: '\$ 5350'),
                    ],
                  ),
                ),
                SizedBox(height: 10.h),
                customCard(
                    160,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          subTitleText('Budet Total'),
                          subTitleText('\$ 300',
                              color: blackTextColor, size: 22),
                          SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                showValueIndicator: ShowValueIndicator.always,
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              subTitleText('\$ 250',
                                  size: 16, color: secondaryTextColor),
                              subTitleText('\$ 300',
                                  size: 16, color: secondaryTextColor)
                            ],
                          )
                        ],
                      ),
                    )),
              ],
            )
          ]),
        ));
  }
}
