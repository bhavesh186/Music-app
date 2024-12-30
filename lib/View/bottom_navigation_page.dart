import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app/View/controller.dart';

class BottomNavigationPage extends StatelessWidget {
  const BottomNavigationPage({super.key});

  @override
  Widget build(BuildContext context) {

    homepageController controller = Get.put(homepageController());

    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(15),
        child: Obx(() => ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: BottomNavigationBar(
          
              currentIndex: controller.mycurrentIndex.value,
          
              onTap: (index){
                controller.mycurrentIndex.value = index;
              },
              unselectedItemColor: Colors.grey,
              // backgroundColor: Colors.black26,
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.headphones), label: "",backgroundColor: Colors.black),
                BottomNavigationBarItem(icon: Icon(Icons.search), label: "",backgroundColor: Colors.black),
                BottomNavigationBarItem(icon: Icon(Icons.heart_broken), label: "",backgroundColor: Colors.black),
                BottomNavigationBarItem(icon: Icon(Icons.queue_music), label: "",backgroundColor: Colors.black),
              ]),
        ),)
      ),
      
      body: Obx(() => controller.pages[controller.mycurrentIndex.value],),
    );
  }
}
