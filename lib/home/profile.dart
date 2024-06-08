import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import '../model/models.dart';





class Profile extends StatefulWidget {
  const Profile({required this.value});
  final String value;

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      // padding: EdgeInsets.only(left: 20),
      width: (!kIsDevice && kIsWeb)?width/1.1:width/1,
      // color: Colors.black87,
      child: Stack(
        children : [
          SizedBox(
            height: height/4,
            width: width,
            child: const FittedBox(
              fit: BoxFit.fill,
              child: Image(
                image: AssetImage('assets/img.png'),
              ),
            ),
          ),
          SizedBox(
          height: height/2,
          width: width,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              children: [
                SizedBox(height: height/7,),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.purpleAccent),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: SizedBox.fromSize(
                      size: const Size.fromRadius(48),
                      child: const FittedBox(
                        fit: BoxFit.fill,
                        child:  Image(
                          image: AssetImage('assets/athul.jpg'),
                          // radius: 55.0,
                        ),
                      ),
                    ),
                  ),
                ),
                const Text('ATHUL BENNY',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900),),
                Text(widget.value,style:const TextStyle(fontSize: 15,fontWeight: FontWeight.w600)),
                if(!kIsWeb)...[SizedBox(height: height/30,)],
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ImageIconsOfProfile(image: Image(image: AssetImage('assets/mail.png'),),action: ''),//email
                    ImageIconsOfProfile(image: Image(image: AssetImage('assets/linkedin.png'),),action: 'https://www.linkedin.com/in/athulbennyp'),//linkedin
                    ImageIconsOfProfile(image: Image(image: AssetImage('assets/github.png'),),action: 'https://www.github.com/athulbenny'),//github
                    ImageIconsOfProfile(image: Image(image: AssetImage('assets/medium.png'),),action: 'https://www.medium.com/@athulbennyp'),//medium
                  ],
                )
              ],
            ),
          ),
        ),
      ],
      ),
    );
  }
}

