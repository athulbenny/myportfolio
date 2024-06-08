import 'package:flutter/material.dart';

import '../model/models.dart';


class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {

    String myDesc= 'As a B.Tech cse student and Flutter developer, I am passionate about exploring the latest technologies and building innovative solutions to real-world problems.I am seeking opportunities to leverage my skills and knowledge to create innovative and user-friendly mobile applications. I am proficient in Flutter framework and have experience building responsive and performant apps for iOS and Android platforms. I am excited to continue learning and growing as a Flutter developer and contribute to impactful projects.\n\t With my technical skills and leadership abilities, I have also taken on the role of Technical Manager at IEEE PIE Kerala Section, where I oversee the development of cutting-edge software applications. In addition, I am proud to serve as the District Head of Gtech mulearn, where I work tirelessly to promote social welfare and community development initiatives. Through my involvement in this organization, I have developed strong organizational and communication skills, and have gained valuable experience in project management and team leadership.\n\t With a proven track record of success in both technical and leadership roles, I am eager to continue making a positive impact in both the tech industry and my local community. Let\'s connect and explore how we can work together to create a brighter future for all.';

    TextStyle style = TextStyle(fontSize: 20);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    List<DetailMapping> detailMappingList =[
      DetailMapping(header: 'Mail id', value: 'athulbenny493@gmail.com'),
      DetailMapping(header: 'Contact', value: 'XXXXXXXXXX'),
      DetailMapping(header: 'Residence', value: 'Kannur,Kerala,India'),
      DetailMapping(header: 'Zipcode', value: '670633'),
      DetailMapping(header: 'Github', value: 'https://github.com/athulbenny'),
      DetailMapping(header: 'LinkedIn', value: 'https://linkedin.com/in/athulbennyp'),
      DetailMapping(header: 'Medium', value: 'https://www.medium.com/@athulbennyp'),
      DetailMapping(header: 'Portfolio', value: 'https://athul-portfolio-1580b.web.app/'),
      // DetailMapping(header: 'Resume', value: 'https://drive.google.com/file/d/1V_P-NLeydjHNcw32fPl-cZbMNeX2_kth/view?usp=sharing'),
    ];

    return Container(
      padding: EdgeInsets.symmetric(horizontal: width/15),
      child: Column(
        children: [
          SizedBox(height: height/15,),
        Text(myDesc,
          style: TextStyle(fontSize: 20),),
          SizedBox(height: height/25,),
          Column(
            children: detailMappingList,
          )
        ],
      ),
    );
  }
}



