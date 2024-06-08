import 'package:flutter/material.dart';


class ConnectME extends StatefulWidget {
  const ConnectME({super.key});

  @override
  State<ConnectME> createState() => _ConnectMEState();
}

class _ConnectMEState extends State<ConnectME> {
  TextEditingController nameContoller = new TextEditingController();
  TextEditingController mailContoller = new TextEditingController();
  TextEditingController decsContoller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width/15),
      child: Column(
        children: [
          SizedBox(height: height/10,),
          Text('Connect Me',style:TextStyle(fontSize: 25,fontWeight: FontWeight.w900)),
          TextFormField(
            controller: nameContoller,
            decoration: InputDecoration(
              hintText: 'Name',
              labelText: 'Name',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              )
            )
          ),//Name
          SizedBox(height: height/20,),
          TextFormField(
              controller: mailContoller,
              decoration: InputDecoration(
                  hintText: 'Mail id',
                  labelText: 'Mail id',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  )
              )
          ),//mail id
          SizedBox(height: height/20,),
          TextFormField(
            //expands: true,
              controller: decsContoller,
              decoration: InputDecoration(
                  hintText: 'Content',
                  labelText: 'Content',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(),
                    borderRadius: BorderRadius.circular(8),
                  )
              )
          ),//desc
          SizedBox(height: height/15,),
          ElevatedButton(onPressed: (){

          },child: Text('Send'),),
          SizedBox(height: height/10,),
        ],
      ),
    );
  }
}
