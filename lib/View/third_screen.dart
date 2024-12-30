import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app/View/controller.dart';
import 'package:music_app/View/homepage.dart';
import 'package:music_app/Widgets/costomtext.dart';

import 'bottom_navigation_page.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {




    homepageController controller = Get.put(homepageController());

    return Scaffold(
      appBar: AppBar(

        title: Text("Now Playing"),
        centerTitle: true,
        leading: IconButton(onPressed: (){
         Get.back();
        }, icon: Icon(Icons.arrow_back_ios, size: 30,)),
        actions: [
          Container(
            height: 30,
            width: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(),
            ),
            child: Center(child: CustomText(text: "Follow", fontcolor: Colors.black,fontsize: 16.0,)),
          ),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert, size: 30,)),

        ],
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Column(
            children: [

              SizedBox(height: 30,),
              Container(
                height: 150,
                width: 150,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                     // child: Image.network("https://media.gettyimages.com/id/125112134/photo/concert.jpg?s=612x612&w=gi&k=20&c=SS-MlQDZxz9RgcikMkKX7fed8BqwQDSZHq-vP5iwGys=", fit: BoxFit.fill,)),

                    child: Image.asset(controller.music_image[1], fit: BoxFit.fill,)),
              ),

              SizedBox(height: 30,),
              CustomText(text: "Ed Sheeran", fontweight: FontWeight.w600,fontcolor: Colors.black,fontsize: 35.0,),
              CustomText(text: "1.424.654 Monthly Listeners", fontweight: FontWeight.w500,fontcolor: Colors.black54,fontsize: 14.0,),


              SizedBox(height: 20,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.queue_music, size: 30,),
                 Container(
                   height: 50,
                   width: 130,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(25),
                     color: Colors.blue,
                   ),
                   child: Center(
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         CustomText(text: "Play All",fontsize: 16.0,fontweight: FontWeight.w500,fontcolor: Colors.white,),
                         Icon(Icons.play_arrow, size: 20,color: Colors.white,),
                       ],
                     ),
                   ),
                 ),
                  Icon(Icons.download_for_offline_outlined, size: 30,),
                ],
              ),



              Expanded(
                child: ListView.builder(

                    scrollDirection: Axis.vertical,
                    itemCount: controller.music_image.length,
                    itemBuilder: (context,index) {
                      return ListTile(
                        leading: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset(controller.music_image[index])),
                        title: Text(controller.music_title[index]),
                        subtitle: Text(controller.music_subtitle[index]),

                      );
                    }),
              ),


              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "Albums",
                    fontcolor: Colors.black,
                    fontweight: FontWeight.w500,
                    fontsize: 18.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.circular(10),
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
      ),
    );
  }
}
