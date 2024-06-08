import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:personal_website/about/details.dart';
import 'package:personal_website/home.dart';
import 'package:personal_website/main.dart';
import 'package:url_launcher/url_launcher.dart';





class Education extends StatefulWidget {
  const Education({required this.course, required this.year, required this.university, this.college, this.cgpa,});
  final String course,year,university;
  final String? college,cgpa;

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {

  TextStyle style = TextStyle();

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height =  MediaQuery.of(context).size.height;
    if(!kIsDevice && kIsWeb){
      style = TextStyle(fontSize: width/60);
      width=width/2;
    }
    else{
      style = TextStyle(fontSize: width/25);
    }
    return Container(
      padding: EdgeInsets.only(left: width/20),
      child:  Row(
        children: [
          const Text('\u2022',style: TextStyle(fontSize: 30),),
          // SizedBox(width: width/10,),
          Column(
            children: [
              Row(
                children: [
                    Text('${widget.course}',style: style.copyWith(fontWeight: FontWeight.w700,),),
                    SizedBox(width: width/100,),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.orange,
                      ),
                      child: Text(widget.year,style: style.copyWith(color: Colors.black87),),
                    ),
                ],
              ),
              Container(
                  width: width/1.2,
                  child: Center(child: Text('${widget.university}',style: style.copyWith(fontWeight: FontWeight.w500,)))),
              if(widget.college!=null)...[Text('${widget.college}',style: style)],
              Text('${widget.cgpa??""}',style: style.copyWith(fontWeight: FontWeight.w700,)),
            ],
          ),
        ],
      ),
    );
  }
}


class AppBarIcons extends StatefulWidget {
  const AppBarIcons({required this.icon,required this.text});
  final String text;
  final Icon icon;

  @override
  State<AppBarIcons> createState() => _AppBarIconsState();
}

class _AppBarIconsState extends State<AppBarIcons> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          IconButton(onPressed: () async{
            if(widget.text=='Home'){currentPage='Home';}
            if(widget.text=='About'){currentPage='About';}
            if(widget.text=='Resume') {
              if (await canLaunchUrl(Uri.parse('https://drive.google.com/file/d/1V_P-NLeydjHNcw32fPl-cZbMNeX2_kth/view?usp=sharing'))){
                await launchUrl(Uri.parse('https://drive.google.com/file/d/1V_P-NLeydjHNcw32fPl-cZbMNeX2_kth/view?usp=sharing'));
              } else {
                print('error in loading');
              }
            }
            setState(() {

            });
            // Navigator.of(context).push(MaterialPageRoute(builder: (context){
            //   return Portfolio();
            // }));

            // _launchUrl;
          }, icon: widget.icon),
          Text('${widget.text}')
        ],
      ),
    );
  }
}



class ImageIconsOfProfile extends StatefulWidget {
  const ImageIconsOfProfile({required this.image, required this.action});

  final Image image;
  final String action;

  @override
  State<ImageIconsOfProfile> createState() => _ImageIconsOfProfileState();
}

class _ImageIconsOfProfileState extends State<ImageIconsOfProfile> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    String action = widget.action;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        child: SizedBox(
          height: height/28,
          width: width/22,
            child:  ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: SizedBox.fromSize(
                size: const Size.fromRadius(10),
                child:  FittedBox(
                  fit: BoxFit.fill,
                  child: widget.image,
                ),
              ),
            ),
        ),
        onTap: () async{
          if(action==""){
            Uri params= Uri(scheme: 'mailto',path: 'athulbenny493@gmail.com');
            action= params.toString();
            print(action);
          }
          if (await canLaunchUrl(Uri.parse(action))){
          await launchUrl(Uri.parse(action));
          } else {
          print(widget.action);
          }
        },
      ),
    );
  }

  //  Future<void> _launchUrl() async {
//     if (!await launchUrl(Uri.parse('https://flutter.dev'))) {
//       throw Exception('Could not launch');
//     }
//   }

}






class ProjectFormat extends StatelessWidget {
  const ProjectFormat({required this.name, required this.desc,this.link, required this.tech});
  final String name,desc,tech;
  final String? link;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black12,
      child: Container(
        padding: EdgeInsets.only(left: 10,top: 10,right: 10,),
        child: Column(
          children: [
            ListTile(
              title: Text(name,style: TextStyle(fontWeight: FontWeight.w600),),
              subtitle: Text(desc),
              trailing: IconButton(
                icon: Icon(Icons.link),
                onPressed: ()async{
                  if (await canLaunchUrl(Uri.parse(link!))){
                    await launchUrl(Uri.parse(link!));
                  } else {
                    print(link);
                  }
                }
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                children: [
                  Expanded(flex:1,child: Text('Technology used: ')),
                  Expanded(flex:3,child: Text(tech)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


class DetailMapping extends StatelessWidget {
  const DetailMapping({required this.header, required this.value});
  final String header,value;

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(flex:1,child: Text(header,style: TextStyle(fontSize: 20),)),
          Expanded(flex:1,child: SizedBox(height: height/20,)),
          Expanded(flex:3,child: SizedBox(child  : SelectionArea(child: Text(value,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),))))
        ],
      ),
    );
  }
}
