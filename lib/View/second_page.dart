import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app/View/controller.dart';
import 'package:music_app/View/homepage.dart';
import 'package:music_app/View/third_screen.dart';
import 'package:music_app/Widgets/costomtext.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {

    homepageController controller = Get.put(homepageController());

    return Scaffold(
      appBar: AppBar(
        title: Text("Now Playing"),
        centerTitle: true,
        leading: IconButton(onPressed: (){
          Get.to(HomePage());
        }, icon: Icon(Icons.keyboard_arrow_down, size: 30,)),
        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.more_vert, size: 30,))],
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [

            SizedBox(height: 30,),
            Container(
              height: 280,
              width: 300,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                //  child: Image.network("https://media.gettyimages.com/id/125112134/photo/concert.jpg?s=612x612&w=gi&k=20&c=SS-MlQDZxz9RgcikMkKX7fed8BqwQDSZHq-vP5iwGys=")),

                child: Image.asset(Get.arguments["image"], fit: BoxFit.fill,)),
            ),

            SizedBox(height: 30,),
            CustomText(text: Get.arguments["titel"], fontweight: FontWeight.w600,fontcolor: Colors.black,fontsize: 35.0,),
            CustomText(text: Get.arguments["subtitel"], fontweight: FontWeight.w500,fontcolor: Colors.black54,fontsize: 18.0,),

            SizedBox(height: 10,),

            Container(child: Slider(value: controller.slidervalue.toDouble(),
                onChanged: (double newvalue){

                  setState(() {
                    controller.slidervalue = newvalue.round();
                  });

                },
              min: 1,
              max: 100,
              divisions: 100,
              activeColor: Colors.blue,
              inactiveColor: Colors.grey,
            )),


            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.skip_previous, size: 40,)),
                IconButton(onPressed: (){

                  if(!controller.isPlaying){
                    setState(() {
                      controller.playbtn = Icons.pause;
                      controller.isPlaying = true;
                    });
                  }else{
                    setState(() {
                      controller.playbtn = Icons.play_arrow;
                      controller.isPlaying = false;
                    });
                  }
                }, icon: Icon(controller.playbtn, size: 60,)),
                IconButton(onPressed: (){}, icon: Icon(Icons.skip_next, size: 40,)),

              ],
            ),



            SizedBox(height: 80,),
            IconButton(onPressed: (){
              Get.to(ThirdScreen(), arguments: Get.arguments);
            }, icon: Icon(Icons.keyboard_arrow_up, size: 40,)),
            InkWell(onTap: (){
              Get.to(ThirdScreen(),arguments: Get.arguments);
            },
                child: CustomText(text: 'Lyrice', fontsize: 16.0,fontcolor: Colors.black54,fontweight: FontWeight.w500,)),

          
          ],
        ),
      ),
    );
  }
}
