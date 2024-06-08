import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:personal_website/main.dart';

import '../model/models.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  List<ProjectFormat> projList=[
    const ProjectFormat(
      name: 'VPool',
      desc: 'Vehicle pooling application for sharing vehicles and travels eco-friendly.',
      tech: 'Flutter, Firebase, OpenStreetMap, location',
      link: 'https://www.github.com/athulbenny/vpool',
  ),
    const ProjectFormat(
        name: 'Etrack',
        desc: 'Real world application for tracking location of people. It is developed for kannur wing of Kerala Police for tracking the locations of poeple going for night duties',
        tech: 'Flutter, Firebase, location',),

    const ProjectFormat(
        name: 'Day Predictor',
        desc: 'Website for predicting the day for a given date',
        tech: 'HTML, Javascript',
        link: 'https://www.github.com/athulbenny/day-predictor',
    ),

    const ProjectFormat(
      name: 'HeyChats',
      desc: 'A secure one-to-one chat app utilizing XMPP server for realtime communication and integrated MYSQL for efficient data storage',
      tech: 'Flutter, Mysql, XMPP server',
      link: 'https://www.github.com/athulbenny/HeyChats',
    ),

    const ProjectFormat(
      name: 'My-notes',
      desc: 'A user-friendly notepad application for mobile devices, enabling seamless creation, modification and deletion, and functionality for storing user data locally on their physical device',
      tech: 'Flutter, Hive, Device storage',
      link: 'https://www.github.com/athulbenny/My-notes',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    if(kIsDevice || !kIsWeb || (height/width>0.617)){
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: height/2,
          child: ListView.builder(
              itemCount: projList.length,
              itemBuilder: (context,index){
                return projList[index];
          }),
        ),
        SizedBox(height: height/10,),
      ],
    );
  }
    else{
      return Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: width/10),
            height: height/1.5,
            child: GridView.builder(
                itemCount: projList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 120,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1.5
                ),
                itemBuilder: (context,index){
                  return projList[index];
            })
          ),
          SizedBox(height: height/10,),
        ],
      );
    }
}
}


