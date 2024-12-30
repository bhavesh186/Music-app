import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app/View/homepage.dart';
import 'package:music_app/View/second_page.dart';
import 'package:music_app/View/third_screen.dart';

class homepageController extends GetxController{


  List<String> music_title = [
    "Ghost",
    "Shivers",
    "Happier",
    "Ghost"
  ];

  List<String> music_subtitle = [
    "Justin Bieber",
    "Ed Sheeran",
    "Olivia Radrigo",
    "Justin Bieber"
  ];

  List<String> music_image = [
    "Images/1.jpeg",
    "Images/2.jpeg",
    "Images/3.jpeg",
    "Images/1.jpeg",
  ];

  RxInt mycurrentIndex = 0.obs;

  var pages = [
    HomePage(),
   Container(child: Center(child: Text("Second Page"),),),
   Container(child: Center(child: Text("Third Page"),),),
   Container(child: Center(child: Text("Four Page"),),)
  ];

  bool isPlaying = false;
  IconData playbtn = Icons.play_arrow;

  var slidervalue = 1;



}