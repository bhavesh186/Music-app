import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app/Plant%20App%20Screen/secondplant_screen.dart';
import 'package:music_app/Widgets/costomtext.dart';
import 'package:music_app/Widgets/customButton.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(




      child: Scaffold(

        floatingActionButton: FloatingActionButton(
          onPressed: (){
            Get.to(SecondplantScreen());
          },
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(15),
            ),
              child: Center(child: Text("GO", style: TextStyle(color: Colors.white),)),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 200, top: 30, left: 30),
                child: RichText( maxLines: 3,
                  text: TextSpan(
                    text: 'Plant a tree for life',style: TextStyle(
                    color: Colors.black, fontSize: 45.0, fontWeight: FontWeight.w600,
                  ),

                  ),
                ),
              ),

              SizedBox(height: 20,),

              Image.asset("Images/plantone.png",height: 400,),

              SizedBox(height: 20,),

              CustomText(text: "Worldwide delivery", fontcolor: Colors.black,fontsize: 14.0,),
              CustomText(text: "within 10-15 days", fontcolor: Colors.black,fontsize: 14.0,),

              SizedBox(height: 30,),

              //CustomButtom(backgroundcolor: Colors.green, btncolor: Colors.white, btntext: "GO", ontap: (){}),


            ],
          ),
        ),
      ),
    );
  }
}
