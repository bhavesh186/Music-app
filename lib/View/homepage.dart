import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app/View/controller.dart';
import 'package:music_app/View/second_page.dart';

import '../Widgets/costomtext.dart';
import '../Widgets/customTextformfield.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    homepageController controller = Get.put(homepageController());

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Discover",
        ),
        centerTitle: true,

        // leading: InkWell(child: Icon(Icons.menu,), onTap: (){
        //   Drawer();
        // },),
      ),
      drawer: Drawer(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Container(

                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: CustomTextformfield(
                  ontap: () {},
                  hinttext: "Find your favorite song",
                  sufixicon: Icon(Icons.settings_voice),
                  prefixicon: Icon(Icons.search),
                  desablebordercolor: Colors.grey.withOpacity(0.4),
                  enablebordercolor: Colors.grey.withOpacity(0.4),
                )),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: "Made for you",
                  fontcolor: Colors.black,
                  fontweight: FontWeight.w500,
                  fontsize: 18.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text("more"),
                      ),
                      Icon(Icons.navigate_next_outlined),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(

                scrollDirection: Axis.horizontal,
                  itemCount: controller.music_image.length,
                  itemBuilder: (context,index) {
                    return InkWell(

                      onTap: (){
                        Get.to(SecondPage(), arguments:{
                          "image" : controller.music_image[index],
                          "titel" : controller.music_title[index],
                          "subtitel" : controller.music_subtitle[index],
                        }
                        );

                      },


                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 5),

                        child: Stack(
                          children: [
                            Container(

                                child: ClipRRect(
                                    child: Image.asset(controller.music_image[index],width: 120,height: 110,fit: BoxFit.fill,),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),

                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 68, left: 5),
                              child: CustomText(text: controller.music_title[index], fontcolor: Colors.white,fontweight: FontWeight.w600,fontsize: 16.0,),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top: 86, left: 5),
                              child: CustomText(text: controller.music_subtitle[index], fontcolor: Colors.white54,fontweight: FontWeight.w600,fontsize: 12.0,),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),

            SizedBox(height: 20,),

            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image: AssetImage("Images/2.jpeg"),fit: BoxFit.fill, ),
                  ),
                  height: 100,
                  width: double.infinity,
                ),

                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      CustomText(text: "New Relase",fontsize: 18.0, fontcolor: Colors.white,fontweight: FontWeight.w600,),
                      SizedBox(width: 5,),
                      Icon(Icons.arrow_circle_right_outlined, color: Colors.white,),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 10),
                  child: CustomText(text: "VESPA",fontsize: 30.0, fontcolor: Colors.white,fontweight: FontWeight.w600,),
                ),


              ],
            ),

            SizedBox(height: 15,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: "Your Genre",
                  fontcolor: Colors.black,
                  fontweight: FontWeight.w500,
                  fontsize: 18.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text("more"),
                      ),
                      Icon(Icons.navigate_next_outlined),
                    ],
                  ),
                )
              ],
            ),

            SizedBox(height: 15,),
            Expanded(
              child: ListView.builder(

                  scrollDirection: Axis.horizontal,
                  itemCount: controller.music_image.length,
                  itemBuilder: (context,index) {
                    return Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),

                      child: Stack(
                        children: [
                          Container(

                            child: ClipRRect(
                              child: Image.asset(controller.music_image[index],width: 100,height: 90,fit: BoxFit.fill,),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),

                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 5, top: 5),
                            child: CustomText(text: ("Genre"), fontcolor: Colors.white38,fontweight: FontWeight.w600,fontsize: 13.0,),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5, top: 25),
                            child: CustomText(text: controller.music_title[index], fontcolor: Colors.white,fontweight: FontWeight.w600,fontsize: 16.0,),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 65, left: 5),
                            child: CustomText(text: controller.music_subtitle[index], fontcolor: Colors.white,fontweight: FontWeight.w600,fontsize: 12.0,),
                          ),
                        ],
                      ),
                    );
                  }),
            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: "Top Hits",
                  fontcolor: Colors.black,
                  fontweight: FontWeight.w500,
                  fontsize: 18.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text("more"),
                      ),
                      Icon(Icons.navigate_next_outlined),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(

                  scrollDirection: Axis.horizontal,
                  itemCount: controller.music_image.length,
                  itemBuilder: (context,index) {
                    return Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),

                      child: Stack(
                        children: [
                          Container(

                            child: ClipRRect(
                              child: Image.asset(controller.music_image[index],width: 120,height: 110,fit: BoxFit.fill,),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),

                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 68, left: 5),
                            child: CustomText(text: controller.music_title[index], fontcolor: Colors.white,fontweight: FontWeight.w600,fontsize: 16.0,),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 86, left: 5),
                            child: CustomText(text: controller.music_subtitle[index], fontcolor: Colors.white54,fontweight: FontWeight.w600,fontsize: 12.0,),
                          ),
                        ],
                      ),
                    );
                  }),
            ),


          ],
        ),
      ),
    );
  }
}
