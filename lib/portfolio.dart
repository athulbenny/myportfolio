import "package:flutter/material.dart";

class ProfilePage extends StatefulWidget{
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>{

  @override
  void initState(){
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("profile",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                )),
          ),
        ),

        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              Padding(
                padding: const EdgeInsets.only(top: 1,bottom: 10),
                child: Container(
                  height: size.height * .30,

                  color: Colors.yellow,
                  child: Column(
                    children: [
                      Expanded(
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 50.0),
                            child: CircleAvatar(
                              backgroundImage: AssetImage('assests/athul.jpg'),
                              radius: 50.0,
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text('ATHUL BENNY',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text('Web developer',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      ),
                      Padding(padding: const EdgeInsets.only(top:10.0,bottom: 0.0),
                      child: Text('flutter app developer',
                      style:TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                      ),),
                      ),
                      Padding(padding: const EdgeInsets.only(top:10.0,bottom: 10.0),
                      child: Text('Cybersecurity enthusiast',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                      ),),)
                    ],
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(100, 10, 0.0, 0.0),
                          child: Icon(Icons.email_sharp,),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 0.0, 0.0),
                          child: Text('EMAIL',
                            style:TextStyle(
                              color: Colors.pink,
                              fontSize: 15.0,
                            ),),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 0.0, 0.0),
                    child: Center(child: Text('athulbenny493@gmail.com',
                    style:TextStyle(
                      color: Colors.orange,
                      fontSize: 15.0,
                    ),)),
                  ),
                ],
              ),
              Divider(color: Colors.red,),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(100, 20, 0.0, 0.0),
                          child: Icon(Icons.add_call,),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0.0, 20, 0.0, 0.0),
                          child: Text('MOBILE',
                            style:TextStyle(
                            color: Colors.pink,
                            fontSize: 15.0,
                          ),),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20.0, 20.0, 20.0),
                    child: Center(child: Text('xxxxxxxxxx',
                      style:TextStyle(
                      color: Colors.orange,
                      fontSize: 15.0,
                    ),)),
                  ),
                ],
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(100, 20, 0.0, 0.0),
                          child: Icon(Icons.add_call,),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0.0, 20, 0.0, 0.0),
                          child: Text('WHATSAPP',
                            style:TextStyle(
                            color: Colors.pink,
                            fontSize: 15.0,
                          ),),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20.0, 20.0, 20.0),
                    child: Center(child: Text('xxxxxxxxxx',
                      style:TextStyle(
                      color: Colors.orange,
                      fontSize: 15.0,
                    ),)),
                  ),
                ],
              ),

              
              Divider(color: Colors.red,),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(100, 20, 0.0, 0.0),
                          child: Icon(Icons.add_location,),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0.0, 20, 0.0, 0.0),
                          child: Text('LOCATION',
                            style:TextStyle(
                              color: Colors.pink,
                              fontSize: 15.0,
                            ),),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20.0, 20.0, 20.0),
                    child: Center(child: Text('Kerala',
                      style:TextStyle(
                        color: Colors.orange,
                        fontSize: 15.0,
                      ),)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
