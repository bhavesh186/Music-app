import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app/Plant%20App%20Screen/plant_controller.dart';
import 'package:music_app/Widgets/costomtext.dart';

class SecondplantScreen extends StatelessWidget {
   SecondplantScreen({super.key});

  PlantController plantController = Get.put(PlantController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [

                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(text: "Find your",fontsize: 20.0,fontcolor: Colors.black,fontweight: FontWeight.w500,),
                        CustomText(text: "favorite plants",fontsize: 20.0,fontcolor: Colors.black,fontweight: FontWeight.w500,),
                      ],
                    ),

                    Icon(Icons.search, size: 30,),


                  ],
                ),

                SizedBox(height: 20,),

                Container(

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,

                    children: [
                      Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomText(text: "30% OFF",fontweight: FontWeight.w700,fontcolor: Colors.black,fontsize: 30.0,),
                          CustomText(text: "02-23 July",fontweight: FontWeight.w500,fontcolor: Colors.grey,fontsize: 18.0,),
                        ],
                      ),

                      Image.asset("Images/plantone.png", height: 150,),
                    ],
                  ),
                 decoration: BoxDecoration(
                   color: Colors.green[200],
                   borderRadius: BorderRadius.circular(15),
                 ),
                  height: 100,
                  width: double.infinity,

                ),


                Expanded(
                  child: ListView.builder(

                      scrollDirection: Axis.horizontal,
                      itemCount: plantController.plantimg.length,
                      itemBuilder: (context,index) {
                        return InkWell(

                          onTap: (){

                          },


                          child: Container(
                            height: 300,
                            width: 200,
                            decoration: BoxDecoration(
                              color: Colors.green[200],
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 5),

                            child: Stack(
                              children: [
                                Container(

                                  child: ClipRRect(
                                    child: Image.asset(plantController.plantimg[index],width: 120,height: 110,fit: BoxFit.fill,),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),

                                  ),
                                ),

                              ],
                            ),
                          ),
                        );
                      }),
                ),

              ],
            ),
          ),
      ),
    );
  }
}
