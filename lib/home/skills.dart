import 'dart:async';

import 'package:flutter/material.dart';
import 'dart:math' as math;










class Skills extends StatefulWidget {
  const Skills({super.key});

  @override
  State<Skills> createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {

  List<String> skills = ['Flutter','Dart','Python','Leadership','Javascript','Firebase','SQL','Linux','Windows','Java','HTML'];
  TextStyle headerStyle = TextStyle(fontSize: 25,fontWeight: FontWeight.w900);

  int a=2,b=2,c=2,i=2,j=2,k=2,l=2,p=2,q=2,r=2,s=2,time=0;

  @override
  void initState() {
    // TODO: implement initState
    Timer.periodic(Duration(milliseconds: 100), (timer) {
      i=(i+1)%20; if(i<2) i=2;
      j=(j+1)%12; if(j<2) j=2;
      k=(k+1)%25; if(k<2) k=2;
      l=(l+1)%6; if(l<2)l=2;
      //m=(m+1)%8; if(m<2)m=2;
      //n=(n+1)%5; if(n<2)n=2;
      p=(p+1)%10; if(p<2)p=2;
      q=(q+1)%11; if(q<2)q=2;
      r=(r+1)%50; if(r<2)r=2;
      time+=100;
      if(time==4500){ timer.cancel();}
      setState(() {

      });
    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: width/15),
      child: Column(
        children: [
          Divider(color: Colors.grey,indent: width/10,endIndent: width/10,),
          SizedBox(height: height/15,),
          Text('Skills ',style: headerStyle),
          Container(
              decoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const SweepGradient(
                  startAngle: math.pi * 0.1,
                  endAngle: math.pi * 1.8,
                  colors: [
                    Colors.redAccent,
                      Colors.purple,
                      Colors.blue,
                      Colors.purpleAccent,
                      Colors.lightBlue,
                      Colors.deepPurpleAccent,
                      Colors.redAccent,
                  ],
                  stops: <double>[0.0,0.15, 0.45, 0.55, 0.65, 0.85,1.0],
                  tileMode: TileMode.clamp,
                ),
              ),
            width: width/1.1,
            height: height/2,
            child: Stack(
              children: [
                Positioned(
                    top: height/i,// 20
                    left: width/i,// 20
                    child: Item(name: skills[0],)),
                Positioned(
                    top: height/j,
                    right: width/j,//12
                    child: Item(name: skills[1],)),
                Positioned(
                    top: height/r,
                    left: width/r,
                    child: Item(name: skills[2],)),
                Positioned(
                    top: height/i,
                    right: width/3.5,
                    child: Item(name: skills[3],)),
                Positioned(
                    top: height/r,
                    left: width/3.5,
                    child: Item(name: skills[4],)),
                Positioned(
                    bottom: height/5,
                    left: width/j,//12
                    child: Item(name: skills[5],)),
                Positioned(
                    top: height/4.5,
                    right: width/i,
                    child: Item(name: skills[6],)),
                Positioned(
                    bottom: height/10,
                    right: width/p,
                    child: Item(name: skills[7],)),
                Positioned(
                    bottom: height/i,
                    left: width/i,
                    child: Item(name: skills[8],)),
                Positioned(
                    top: height/k,
                    right: width/7,
                    child: Item(name: skills[9],)),
                Positioned(
                    bottom: height/r,
                    left: width/2.5,
                    child: Item(name: skills[10],)),
              ],
            )
          ),
          Divider(color: Colors.grey,indent: width/10,endIndent: width/10,),
          SizedBox(height: height/15,),
          Text('Projects ',style: headerStyle),
        ],
      ),
    );
  }
}



class Item extends StatelessWidget {
  const Item({required this.name,this.extend});
  final String name;
  final double? extend;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: extend,
      color: Colors.transparent,
      child: Text('$name',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
    );
  }
}

