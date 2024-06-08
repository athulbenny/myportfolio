import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:personal_website/about/contact.dart';
import 'package:personal_website/home/about.dart';
import 'package:personal_website/main.dart';
import 'package:personal_website/model/models.dart';
import 'package:personal_website/home/profile.dart';
import 'package:personal_website/home/projects.dart';
import 'package:personal_website/home/skills.dart';
import 'about/details.dart';







class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {

  List<AppBarIcons> listAppBarIcons=  [
    const AppBarIcons(icon: Icon(Icons.home), text: 'Home') ,
    const AppBarIcons(icon: Icon(Icons.person), text: 'About',),
    const AppBarIcons(icon: Icon(Icons.contact_page), text: 'Resume',),
  ];

  List<Widget> homeContent = [const AboutMe(), const Skills(), const Projects()];
  List<Widget> aboutContent = [const Details(),const ConnectME()];

  List<String> ranks=['Webapp Developer','Cyber-security Enthusiast','Freelancer'];
  int i=0;


  @override
  void initState() {
    Timer.periodic(const Duration(seconds: 2), (timer) {
      i=(i+1)%3;
      setState((){});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double deviceRatio= height/width ;
    if(deviceRatio>0.745){
      kIsDevice = true;// mobile device
    }else{
      kIsDevice = false;
    }
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        shadowColor: Colors.grey,
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(120),
          child: SizedBox.fromSize(
            size: const Size.fromRadius(8),
            child: const FittedBox(
              fit: BoxFit.fill,
              child:  Image(
                image: AssetImage('assets/athul.jpg'),
              ),
            ),
          ),
        ),
        title: ListTile(title: Text('Athul Benny',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600)),
        subtitle: Text(ranks[i]),
        ),
        bottom: PreferredSize(
          preferredSize: Size(width,(kIsDevice || !kIsWeb)?height/10:height/30),
          child: Container(color: Colors.transparent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: (kIsDevice || !kIsWeb)?listAppBarIcons:[],
          ),),
        ),
      ),
      body: SingleChildScrollView(
        child:  Container(
          padding: EdgeInsets.symmetric(horizontal:(!kIsDevice)?10: 0),
          // height: height,
          child:  Column(
            children: [
              Row(
                children: [
                  Stack(
                    children: [
                  if(!kIsDevice)...[
                    Positioned(
                        top: height/25,
                        left: width/120,
                        child: Column(
                          children: listAppBarIcons
                        ))
                  ],
                  Row(
                    children: [
                      if(!kIsDevice && kIsWeb)...[
                        SizedBox(width: width/15,)],
                      Profile(value: ranks[i]),
                    ],
                  ),
                ])
                ],
              ),
              Column(
                children: (currentPage=='Home')?homeContent:(currentPage=="About")?aboutContent:[],
              )
            ],
          ),
        ),
      ),
    );
  }
}
