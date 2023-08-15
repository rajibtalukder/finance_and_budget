import 'package:finance_and_budget/view/splash/widgets/custom_button.dart';
import 'package:finance_and_budget/view/authentication/login_screen.dart';
import 'package:flutter/material.dart';

class IntroThree extends StatelessWidget {
  const IntroThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Image.asset('assets/images/intro3.png', fit: BoxFit.cover),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20,0,20,40),
                child: InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (_)=>SigninScreen()));
                    },
                    child: customButton(text: 'Let\'s Go')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
