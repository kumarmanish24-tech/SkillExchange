import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter/animation.dart';
import 'package:pretty_animated_buttons/pretty_animated_buttons.dart';
import 'package:ex32/ex.dart';
import 'package:ex32/colors/colors.dart';
import 'CreateProfile.dart';
import 'package:page_transition/page_transition.dart';
import 'package:ex32/pagetra.dart';

class WellcomeScreen extends StatefulWidget {
  const WellcomeScreen({Key? key}) : super(key: key);

  @override
  State<WellcomeScreen> createState() => _WellcomeScreenState();
}

class _WellcomeScreenState extends State<WellcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100),
            Column(
              children: [
                Text(
                  'Find Your Perfect ',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 35),
                ),
                Text(
                  'Skill Partner ',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 35,color: AppColors.theme),
                ),
                SizedBox(height: 20),
                Text(
                  'Smart matching helps you find the',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Colors.black54,
                  ),
                ),
                Text(
                  'right people to leanr and grow',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 400,
              width: 300,
              child: Lottie.asset('assets/lottie/study online.json'),
            ),
            SizedBox(height: 5,),



            PrettyCapsuleButton(
              label: 'Get Started'.toUpperCase(),
              labelStyle: const TextStyle(
                fontWeight: FontWeight.w700,
              ),
              bgColor: AppColors.theme,
              onPressed:()async{

                await Future.delayed(const Duration(milliseconds: 600));
                Navigator.push(context, MaterialPageRoute(builder: (context) => Createprofile()));
              },
            ),

            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => RadioExample()));
            }, child: Text("go to ex page"))

          ],
        ),
      ),
    );
  }
}
