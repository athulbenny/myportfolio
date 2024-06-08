import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:personal_website/main.dart';
import 'package:personal_website/model/models.dart';


class AboutMe extends StatelessWidget {
  const AboutMe({super.key});



  @override
  Widget build(BuildContext context) {
    Widget rowCol = Row();
    TextStyle style = TextStyle(fontSize: 20);
    TextStyle headerStyle = TextStyle(fontSize: 25,fontWeight: FontWeight.w900);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    if(kIsWeb){
      rowCol=Row();
    }
    else{
      rowCol = Column();
    }
    final data1 =  Column(
      children: [
        Center(child: Text('Education',style: headerStyle,)),
        SizedBox(height: height/20,),
        Education(course: 'B.Tech CSE',
          year: '2020-24',
          university: 'APJ Abdul Kalam Technological University',
          college: 'GCE Kannur',cgpa: 'CGPA: 9.01',),
        SizedBox(height: height/25,),
        Education(course: 'Higher Secondary', year: '2019',
          university: 'Kerala State HSE Board',cgpa: 'Percent: 95',),
        SizedBox(height: height/25,),
        Education(course: 'Tenth Standard', year: '2017',
          university: 'Indian Council for Secondary Education',cgpa: 'Percent: 87.5',),
      ],
    );
    final data2 = Column(
      children: [
        Text('Experience',style: headerStyle,),
        SizedBox(height: height/30,),
        Education(course: 'Flutter Developer Intern', year: '2023-present', university: 'Neuflo Solutions Pvt. Ltd'),
        SizedBox(height: height/30,),
        Education(course: 'Technical Manager', year: '2023 jan-2024 jan', university: 'IEEE PIE Kerala Section'),
        SizedBox(height: height/30,),
        Education(course: 'District Cordinator', year: '2022 dec-2023 dec', university: 'GTECH Mulearn')
      ],
    );
    return SizedBox(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: width/15),
            // color: Colors.orange,
            child: Column(
              children: [
                 // Center(child: Text('About Me',style: headerStyle,)),
                SizedBox(height: height/20,),
                 Text('I am a passionate WebApp developer, pursuing final year B.Tech Computer Science Engineer from Government College of Engineering Kannur. Currently working as Flutter Developer Intern at Neuflo Technologies Private ltd.  ',
                style: style),

              ],
            ),
          ),
          Divider(color: Colors.grey,indent: width/10,endIndent: width/10,),
          SizedBox(height: height/15,),
          if(!kIsDevice && kIsWeb)...[
            Row(
              children: [
                Expanded(flex:2,child: data1),
                Expanded(flex:2,child: data2),
              ],
            )
          ]
          else...[
          data1,
          Divider(color: Colors.grey,indent: width/10,endIndent: width/10,),
            SizedBox(height: height/15,),
          data2
        ],
    ]
      ),
    );
  }
}
