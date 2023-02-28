import 'dart:ui';
import 'package:flutter/material.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: darkBlue,
        ),
        debugShowCheckedModeBanner: true,
        home: HomePage()
    );
  }
}

class HomePage extends StatefulWidget{
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0x000000),
      appBar: AppBar(
        backgroundColor: Color(0x000000),
        elevation: 0,
        toolbarHeight: 10,
      ),

      body:Padding(
        padding:EdgeInsets.all(25),

        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget>[
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DayRoute()),
                );
              },
              child: Container(
                margin: EdgeInsets.only(top:10,bottom:10,right:5,left:5),
                height:MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color:Color(0x7C2B2B2C),
                    border: Border.all(color:Color(0xFFBB86FC),),
                    borderRadius: BorderRadius.circular(10)
                ),
                child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("TIME TABLE",
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily:"roboto",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ]
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DaysRoute()),
                );
              },
              child: Container(
                margin: EdgeInsets.only(top:10,bottom:10,right:5,left:5),
                height:MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color:Color(0x7C2B2B2C),
                    border: Border.all(color:Color(0xFFBB86FC),),
                    borderRadius: BorderRadius.circular(10)
                ),
                child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("COMMON TIME",
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: "roboto",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ]
                ),
              ),
            ),
          ],
        ),
      ),


    );
  }


}

class DayRoute extends StatefulWidget {
  const DayRoute({Key? key}) : super(key: key);

  @override
  State<DayRoute> createState() => _DayRouteState();
}

class _DayRouteState extends State<DayRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0x000000),
        appBar: AppBar(
          backgroundColor: Color(0x000000),
          elevation: 0,
          toolbarHeight: 10,
        ),
        body:Padding(
          padding:EdgeInsets.all(25),
          child:Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:<Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const FirstRoute()),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(top:10,bottom:10,right:5,left:5),
                    height:(MediaQuery.of(context).size.height)/6.7,// * 0.25,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color:Color(0xFFBB86FC),
                        border: Border.all(color:Color(0xFFBB86FC),),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("MONDAY",
                            style: TextStyle(
                              color:Colors.black,
                              fontSize: 20,
                              fontFamily: "roboto",
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ]
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SecondRoute()),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(top:10,bottom:10,right:5,left:5),
                    height:(MediaQuery.of(context).size.height)/6.7,// * 0.25,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color:Color(0x7C2B2B2C),
                        border: Border.all(color:Color(0x7C2B2B2C),),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("TUESDAY",
                            style: TextStyle(
                              color:Colors.white,
                              fontSize: 20,
                              fontFamily: "roboto",
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ]
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ThirdRoute()),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(top:10,bottom:10,right:5,left:5),
                    height:(MediaQuery.of(context).size.height)/6.7,// * 0.25,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color:Color(0xFFBB86FC),
                        border: Border.all(color:Color(0xFFBB86FC),),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("WEDNESDAY",
                            style: TextStyle(
                              color:Colors.black,
                              fontSize: 20,
                              fontFamily: "roboto",
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ]
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const FourthRoute()),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(top:10,bottom:10,right:5,left:5),
                    height:(MediaQuery.of(context).size.height)/6.7,// * 0.25,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color:Color(0x7C2B2B2C),
                        border: Border.all(color:Color(0x7C2B2B2C),),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("THURSDAY",
                            style: TextStyle(
                              color:Colors.white,
                              fontSize: 20,
                              fontFamily: "roboto",
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ]
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const FifthRoute()),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(top:10,bottom:10,right:5,left:5),
                    height:(MediaQuery.of(context).size.height)/6.7,// * 0.25,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color:Color(0xFFBB86FC),
                        border: Border.all(color:Color(0xFFBB86FC),),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("FRIDAY",
                            style: TextStyle(
                              color:Colors.black,
                              fontSize: 20,
                              fontFamily: "roboto",
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ]
                    ),
                  ),
                ),
              ]
          ),
        )
    );
  }
}

class DaysRoute extends StatefulWidget {
  const DaysRoute({Key? key}) : super(key: key);

  @override
  State<DaysRoute> createState() => _DaysRouteState();
}

class _DaysRouteState extends State<DaysRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0x000000),
        appBar: AppBar(
          backgroundColor: Color(0x000000),
          elevation: 0,
          toolbarHeight: 10,
        ),
        body:Padding(
          padding:EdgeInsets.all(25),
          child:Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:<Widget>[

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const First1Route()),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(top:10,bottom:10,right:5,left:5),
                    height:(MediaQuery.of(context).size.height)/6.7,// * 0.25,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color:Color(0xFFBB86FC),
                        border: Border.all(color:Color(0xFFBB86FC),),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("MONDAY",
                            style: TextStyle(
                              color:Colors.black,
                              fontSize: 20,
                              fontFamily: "roboto",
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ]
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Second1Route()),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(top:10,bottom:10,right:5,left:5),
                    height:(MediaQuery.of(context).size.height)/6.7,// * 0.25,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color:Color(0x7C2B2B2C),
                        border: Border.all(color:Color(0x7C2B2B2C),),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("TUESDAY",
                            style: TextStyle(
                              color:Colors.white,
                              fontSize: 20,
                              fontFamily: "roboto",
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ]
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Third1Route()),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(top:10,bottom:10,right:5,left:5),
                    height:(MediaQuery.of(context).size.height)/6.7,// * 0.25,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color:Color(0xFFBB86FC),
                        border: Border.all(color:Color(0xFFBB86FC),),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("WEDNESDAY",
                            style: TextStyle(
                              color:Colors.black,
                              fontSize: 20,
                              fontFamily: "roboto",
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ]
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Fourth1Route()),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(top:10,bottom:10,right:5,left:5),
                    height:(MediaQuery.of(context).size.height)/6.7,// * 0.25,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color:Color(0x7C2B2B2C),
                        border: Border.all(color:Color(0x7C2B2B2C),),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("THURSDAY",
                            style: TextStyle(
                              color:Colors.white,
                              fontSize: 20,
                              fontFamily: "roboto",
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ]
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Fifth1Route()),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(top:10,bottom:10,right:5,left:5),
                    height:(MediaQuery.of(context).size.height)/6.7,// * 0.25,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color:Color(0xFFBB86FC),
                        border: Border.all(color:Color(0xFFBB86FC),),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("FRIDAY",
                            style: TextStyle(
                              color:Colors.black,
                              fontSize: 20,
                              fontFamily: "roboto",
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ]
                    ),
                  ),
                ),
              ]
          ),
        )
    );
  }
}

class FirstRoute extends StatefulWidget {
  const FirstRoute({Key? key}) : super(key: key);

  @override
  State<FirstRoute> createState() => _FirstRouteState();
}

class _FirstRouteState extends State<FirstRoute> {
  @override
  var time=['8:45am-9:45am','9:45am-10:45am','11:00am-12:00pm','12:00pm-1:00pm','1:00pm-2:00pm','2:00pm-3:00pm','3:15am-4:15pm','4:15am-5:15pm'];
  var sub1=['FREE HOUR','ECE209','CIV220','CIV111','FREE HOUR','FREE HOUR','MAT201R01','FREE HOUR'];
  var sub2=['ECE103','ECE103','EEE201','FREE HOUR','ECE101','MAT201R01','ECE102','FREE HOUR'];
  var sub3=['CIV221','CIV221','MEC205','MEC203','FREE HOUR','FREE HOUR','FREE HOUR','FREE HOUR'];
  var sub4=['FREE HOUR','MAT201R01','INT101','INT102R01','FREE HOUR','CSE103','INT103R03','INT103R03'];
  Widget build(BuildContext context) {
    AppBar(
      backgroundColor: Color(0x000000),
      elevation: 0,
      toolbarHeight: 10,
    );
    final PageController controller = PageController();
    return PageView(

      /// [PageView.scrollDirection] defaults to [Axis.horizontal].
      /// Use [Axis.vertical] to scroll vertically.
      controller: controller,
      children: <Widget>[
        Center(
          child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                for(int i=0;i<8;i++)
                if(sub1[i]=='FREE HOUR')
                  Container(
                    margin: EdgeInsets.only(
                        top: 5, bottom: 5, right: 5, left: 5),
                    height: (MediaQuery.of(context).size.height) / 9.5,
                    // * 0.25,
                    width: MediaQuery.of(context).size.width - 50,
                    decoration: BoxDecoration(
                        color: Color(0xFFBB86FC),
                        border: Border.all(color: Color(0xFFBB86FC),),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Text('FREE HOUR',
                                    //  textAlign: TextAlign.left,
                                    style: TextStyle(fontFamily: 'Roboto',
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black,
                                      decoration: TextDecoration.none,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 20,
                                      right: 70,
                                      top: 3),
                                  child: Text('MCT',
                                    //  textAlign: TextAlign.left,
                                    style: TextStyle(fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                      decoration: TextDecoration.none,
                                      fontSize: 10,
                                    ),
                                  ),
                                ),
                              ]
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: Text('${time[i]}',
                              //    textAlign: TextAlign.right,
                              style: TextStyle(fontFamily: 'Roboto',
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                                decoration: TextDecoration.none,
                                fontSize: 18,
                              ),
                            ),
                          ),

                        ]
                    ),
                  )
                else
                  Container(
                    margin: EdgeInsets.only(top: 5, bottom: 5, right: 5, left: 5),
                    height: (MediaQuery.of(context).size.height) / 9.5,
                    width: MediaQuery.of(context).size.width - 50,
                    decoration: BoxDecoration(
                        color: Color(0x7C2B2B2C),
                        border: Border.all(color: Color(0xFF2B2B2C),),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text('${sub1[i]}',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontFamily: 'Roboto',
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white,
                                    decoration: TextDecoration.none,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(left: 20),
                              child: Text('MCT',
                                    textAlign: TextAlign.left,
                                  style: TextStyle(fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                    decoration: TextDecoration.none,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                            ]
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Text('${time[i]}',
                            textAlign: TextAlign.right,
                            style: TextStyle(fontFamily: 'Roboto',
                              fontWeight: FontWeight.normal,
                              color: Color(0xFFBB86FC),
                              decoration: TextDecoration.none,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

              ]
          ),
        ),
        Center(
          child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                for(int i=0;i<8;i++)
                  if(sub2[i]=='FREE HOUR')
                    Container(
                      margin: EdgeInsets.only(top: 5,bottom: 5,right:5,left:5),
                      height:(MediaQuery.of(context).size.height)/9.5,// * 0.25,
                      width: MediaQuery.of(context).size.width-50,
                      decoration: BoxDecoration(
                          color:Color(0xFFBB86FC),
                          border: Border.all(color:Color(0xFFBB86FC),),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:[
                          Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:[
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Text('FREE HOUR',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(fontFamily: 'Roboto',
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black,
                                      decoration: TextDecoration.none,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 20,right: 74,top: 3),
                                  child: Text('ECE',
                                    //  textAlign: TextAlign.left,
                                    style: TextStyle(fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                      decoration: TextDecoration.none,
                                      fontSize: 10,
                                    ),
                                  ),
                                ),
                              ]
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: Text('${time[i]}',
                              textAlign: TextAlign.right,
                              style: TextStyle(fontFamily: 'Roboto',
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                                decoration: TextDecoration.none,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  else
                Container(
                  margin: EdgeInsets.only(top: 5,bottom: 5,right:5,left:5),
                  height:(MediaQuery.of(context).size.height)/9.5,// * 0.25,
                  width: MediaQuery.of(context).size.width-50,
                  decoration: BoxDecoration(color:Color(0x7C2B2B2C),
                      border: Border.all(color:Color(0xFF2B2B2C),),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:<Widget>[
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment:CrossAxisAlignment.start,
                            children:[
                              Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text('${sub2[i]}',
                                  //  textAlign: TextAlign.left,
                                  style: TextStyle(fontFamily: 'Roboto',
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white,
                                    decoration: TextDecoration.none,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20,top: 3),
                                child: Text('ECE',
                                  //  textAlign: TextAlign.left,
                                  style: TextStyle(fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                    decoration: TextDecoration.none,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                            ]
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Text('${time[i]}',
                            //    textAlign: TextAlign.right,
                            style: TextStyle(fontFamily: 'Roboto',
                              fontWeight: FontWeight.normal,
                              color: Color(0xFFBB86FC),
                              decoration: TextDecoration.none,
                              fontSize: 18,
                            ),
                          ),
                        ),

                      ]
                  ),
                ),
              ]
          ),
        ),
        Center(
          child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                for(int i=0;i<8;i++)
                  if(sub3[i]=='FREE HOUR')
                    Container(
                      margin: EdgeInsets.only(top: 5,bottom: 5,right:5,left:5),
                      height:(MediaQuery.of(context).size.height)/9.5,// * 0.25,
                      width: MediaQuery.of(context).size.width-50,
                      decoration: BoxDecoration(
                          color:Color(0xFFBB86FC),
                          border: Border.all(color:Color(0xFFBB86FC),),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:<Widget>[
                            Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:[
                                  Padding(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Text('FREE HOUR',
                                      //  textAlign: TextAlign.left,
                                      style: TextStyle(fontFamily: 'Roboto',
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black,
                                        decoration: TextDecoration.none,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 20,right: 72,top: 3),
                                    child: Text('MEC',
                                      //  textAlign: TextAlign.left,
                                      style: TextStyle(fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                        decoration: TextDecoration.none,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                ]
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 20),
                              child: Text('${time[i]}',
                                //    textAlign: TextAlign.right,
                                style: TextStyle(fontFamily: 'Roboto',
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                  decoration: TextDecoration.none,
                                  fontSize: 18,
                                ),
                              ),
                            ),

                          ]
                      ),
                    )
                else
                  Container(
                  margin: EdgeInsets.only(top: 5,bottom: 5,right:5,left:5),
                  height:(MediaQuery.of(context).size.height)/9.5,// * 0.25,
                  width: MediaQuery.of(context).size.width-50,
                  decoration: BoxDecoration(
                      color:Color(0x7C2B2B2C),
                      border: Border.all(color:Color(0xFF2B2B2C),),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:<Widget>[
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[
                              Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text('${sub3[i]}',
                                  //  textAlign: TextAlign.left,
                                  style: TextStyle(fontFamily: 'Roboto',
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white,
                                    decoration: TextDecoration.none,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20,right: 36,top: 3),
                                child: Text('MEC',
                                  //  textAlign: TextAlign.left,
                                  style: TextStyle(fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                    decoration: TextDecoration.none,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                            ]
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Text('${time[i]}',
                            //    textAlign: TextAlign.right,
                            style: TextStyle(fontFamily: 'Roboto',
                              fontWeight: FontWeight.normal,
                              color: Color(0xFFBB86FC),
                              decoration: TextDecoration.none,
                              fontSize: 18,
                            ),
                          ),
                        ),

                      ]
                  ),
                )
              ]
          ),
        ),
        Center(
          child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                for(int i=0;i<8;i++)
                  if(sub4[i]=='FREE HOUR')
                    Container(
                  margin: EdgeInsets.only(top: 5,bottom: 5,right:5,left:5),
                  height:(MediaQuery.of(context).size.height)/9.5,// * 0.25,
                  width: MediaQuery.of(context).size.width-50,
                  decoration: BoxDecoration(
                      color:Color(0xFFBB86FC),
                      border: Border.all(color:Color(0xFFBB86FC),),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:<Widget>[
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                              Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text('FREE HOUR',
                                  //  textAlign: TextAlign.left,
                                  style: TextStyle(fontFamily: 'Roboto',
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20,right: 85,top: 3),
                                child: Text('IT',
                                  //  textAlign: TextAlign.left,
                                  style: TextStyle(fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                            ]
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Text('${time[i]}',
                            //    textAlign: TextAlign.right,
                            style: TextStyle(fontFamily: 'Roboto',
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                              decoration: TextDecoration.none,
                              fontSize: 18,
                            ),
                          ),
                        ),

                      ]
                  ),
                )
                else
                  Container(
                  margin: EdgeInsets.only(top: 5,bottom: 5,right:5,left:5),
                  height:(MediaQuery.of(context).size.height)/9.5,// * 0.25,
                  width: MediaQuery.of(context).size.width-50,
                  decoration: BoxDecoration(
                      color:Color(0x7C2B2B2C),
                      border: Border.all(color:Color(0xFF2B2B2C),),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Text('${sub4[i]}',
                                textAlign: TextAlign.right,
                                style: TextStyle(fontFamily: 'Roboto',
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                  decoration: TextDecoration.none,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20,right: 87,top: 3),
                              child: Text('IT',
                                //  textAlign: TextAlign.left,
                                style: TextStyle(fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  decoration: TextDecoration.none,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ]
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Text('${time[i]}',
                          textAlign: TextAlign.right,
                          style: TextStyle(fontFamily: 'Roboto',
                            fontWeight: FontWeight.normal,
                            color: Color(0xFFBB86FC),
                            decoration: TextDecoration.none,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                )

              ]
          ),
        ),
      ],
    );
  }

}

class SecondRoute extends StatefulWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  State<SecondRoute> createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  @override
  var time=['8:45am-9:45am','9:45am-10:45am','11:00am-12:00pm','12:00pm-1:00pm','1:00pm-2:00pm','2:00pm-3:00pm','3:15am-4:15pm','4:15am-5:15pm'];
  var sub1=['ECE209','ECE209','MAT201R01','FREE HOUR','ECE104','CIV111','FREE HOUR','FREE HOUR'];
  var sub2=['FREE HOUR','EEE201','EIE201','ECE102','FREE HOUR','ECE101','MAT201R01','FREE HOUR'];
  var sub3=['MEC205','MEC201R01','MAT201R01','FREE HOUR','CIV220','FREE HOUR','FREE HOUR','FREE HOUR'];
  var sub4=['CSE103','INT101','CSE208','CSE208','FREE HOUR','MAT201R01','FREE HOUR','FREE HOUR'];
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return PageView(
      /// [PageView.scrollDirection] defaults to [Axis.horizontal].
      /// Use [Axis.vertical] to scroll vertically.
      controller: controller,
      children: <Widget>[
        Center(
          child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                for(int i=0;i<8;i++)
                  if(sub1[i]=='FREE HOUR')
                    Container(
                      margin: EdgeInsets.only(
                          top: 5, bottom: 5, right: 5, left: 5),
                      height: (MediaQuery.of(context).size.height) / 9.5,
                      // * 0.25,
                      width: MediaQuery.of(context).size.width - 50,
                      decoration: BoxDecoration(
                          color: Color(0xFFBB86FC),
                          border: Border.all(color: Color(0xFFBB86FC),),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Text('FREE HOUR',
                                      //  textAlign: TextAlign.left,
                                      style: TextStyle(fontFamily: 'Roboto',
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black,
                                        decoration: TextDecoration.none,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 20,
                                        right: 70,
                                        top: 3),
                                    child: Text('MCT',
                                      //  textAlign: TextAlign.left,
                                      style: TextStyle(fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                        decoration: TextDecoration.none,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                ]
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 20),
                              child: Text('${time[i]}',
                                //    textAlign: TextAlign.right,
                                style: TextStyle(fontFamily: 'Roboto',
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                  decoration: TextDecoration.none,
                                  fontSize: 18,
                                ),
                              ),
                            ),

                          ]
                      ),
                    )
                  else
                    Container(
                      margin: EdgeInsets.only(top: 5, bottom: 5, right: 5, left: 5),
                      height: (MediaQuery.of(context).size.height) / 9.5,
                      width: MediaQuery.of(context).size.width - 50,
                      decoration: BoxDecoration(
                          color: Color(0x7C2B2B2C),
                          border: Border.all(color: Color(0xFF2B2B2C),),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Text('${sub1[i]}',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontFamily: 'Roboto',
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white,
                                      decoration: TextDecoration.none,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Text('MCT',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      decoration: TextDecoration.none,
                                      fontSize: 10,
                                    ),
                                  ),
                                ),
                              ]
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: Text('${time[i]}',
                              textAlign: TextAlign.right,
                              style: TextStyle(fontFamily: 'Roboto',
                                fontWeight: FontWeight.normal,
                                color: Color(0xFFBB86FC),
                                decoration: TextDecoration.none,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

              ]
          ),
        ),
        Center(
          child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                for(int i=0;i<8;i++)
                  if(sub2[i]=='FREE HOUR')
                    Container(
                      margin: EdgeInsets.only(top: 5,bottom: 5,right:5,left:5),
                      height:(MediaQuery.of(context).size.height)/9.5,// * 0.25,
                      width: MediaQuery.of(context).size.width-50,
                      decoration: BoxDecoration(
                          color:Color(0xFFBB86FC),
                          border: Border.all(color:Color(0xFFBB86FC),),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:[
                          Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:[
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Text('FREE HOUR',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(fontFamily: 'Roboto',
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black,
                                      decoration: TextDecoration.none,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 20,right: 74,top: 3),
                                  child: Text('ECE',
                                    //  textAlign: TextAlign.left,
                                    style: TextStyle(fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                      decoration: TextDecoration.none,
                                      fontSize: 10,
                                    ),
                                  ),
                                ),
                              ]
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: Text('${time[i]}',
                              textAlign: TextAlign.right,
                              style: TextStyle(fontFamily: 'Roboto',
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                                decoration: TextDecoration.none,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  else
                    Container(
                      margin: EdgeInsets.only(top: 5,bottom: 5,right:5,left:5),
                      height:(MediaQuery.of(context).size.height)/9.5,// * 0.25,
                      width: MediaQuery.of(context).size.width-50,
                      decoration: BoxDecoration(color:Color(0x7C2B2B2C),
                          border: Border.all(color:Color(0xFF2B2B2C),),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:<Widget>[
                            Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment:CrossAxisAlignment.start,
                                children:[
                                  Padding(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Text('${sub2[i]}',
                                      //  textAlign: TextAlign.left,
                                      style: TextStyle(fontFamily: 'Roboto',
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white,
                                        decoration: TextDecoration.none,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 20,top: 3),
                                    child: Text('ECE',
                                      //  textAlign: TextAlign.left,
                                      style: TextStyle(fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                        decoration: TextDecoration.none,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                ]
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 20),
                              child: Text('${time[i]}',
                                //    textAlign: TextAlign.right,
                                style: TextStyle(fontFamily: 'Roboto',
                                  fontWeight: FontWeight.normal,
                                  color: Color(0xFFBB86FC),
                                  decoration: TextDecoration.none,
                                  fontSize: 18,
                                ),
                              ),
                            ),

                          ]
                      ),
                    ),
              ]
          ),
        ),
        Center(
          child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                for(int i=0;i<8;i++)
                  if(sub3[i]=='FREE HOUR')
                    Container(
                      margin: EdgeInsets.only(top: 5,bottom: 5,right:5,left:5),
                      height:(MediaQuery.of(context).size.height)/9.5,// * 0.25,
                      width: MediaQuery.of(context).size.width-50,
                      decoration: BoxDecoration(
                          color:Color(0xFFBB86FC),
                          border: Border.all(color:Color(0xFFBB86FC),),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:<Widget>[
                            Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:[
                                  Padding(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Text('FREE HOUR',
                                      //  textAlign: TextAlign.left,
                                      style: TextStyle(fontFamily: 'Roboto',
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black,
                                        decoration: TextDecoration.none,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 20,right: 72,top: 3),
                                    child: Text('MEC',
                                      //  textAlign: TextAlign.left,
                                      style: TextStyle(fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                        decoration: TextDecoration.none,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                ]
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 20),
                              child: Text('${time[i]}',
                                //    textAlign: TextAlign.right,
                                style: TextStyle(fontFamily: 'Roboto',
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                  decoration: TextDecoration.none,
                                  fontSize: 18,
                                ),
                              ),
                            ),

                          ]
                      ),
                    )
                  else
                    Container(
                      margin: EdgeInsets.only(top: 5,bottom: 5,right:5,left:5),
                      height:(MediaQuery.of(context).size.height)/9.5,// * 0.25,
                      width: MediaQuery.of(context).size.width-50,
                      decoration: BoxDecoration(
                          color:Color(0x7C2B2B2C),
                          border: Border.all(color:Color(0xFF2B2B2C),),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:<Widget>[
                            Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:[
                                  Padding(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Text('${sub3[i]}',
                                      //  textAlign: TextAlign.left,
                                      style: TextStyle(fontFamily: 'Roboto',
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white,
                                        decoration: TextDecoration.none,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 20,right: 36,top: 3),
                                    child: Text('MEC',
                                      //  textAlign: TextAlign.left,
                                      style: TextStyle(fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                        decoration: TextDecoration.none,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                ]
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 20),
                              child: Text('${time[i]}',
                                //    textAlign: TextAlign.right,
                                style: TextStyle(fontFamily: 'Roboto',
                                  fontWeight: FontWeight.normal,
                                  color: Color(0xFFBB86FC),
                                  decoration: TextDecoration.none,
                                  fontSize: 18,
                                ),
                              ),
                            ),

                          ]
                      ),
                    )
              ]
          ),
        ),
        Center(
          child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                for(int i=0;i<8;i++)
                  if(sub4[i]=='FREE HOUR')
                    Container(
                      margin: EdgeInsets.only(top: 5,bottom: 5,right:5,left:5),
                      height:(MediaQuery.of(context).size.height)/9.5,// * 0.25,
                      width: MediaQuery.of(context).size.width-50,
                      decoration: BoxDecoration(
                          color:Color(0xFFBB86FC),
                          border: Border.all(color:Color(0xFFBB86FC),),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:<Widget>[
                            Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:[
                                  Padding(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Text('FREE HOUR',
                                      //  textAlign: TextAlign.left,
                                      style: TextStyle(fontFamily: 'Roboto',
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black,
                                        decoration: TextDecoration.none,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 20,right: 85,top: 3),
                                    child: Text('IT',
                                      //  textAlign: TextAlign.left,
                                      style: TextStyle(fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                        decoration: TextDecoration.none,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                ]
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 20),
                              child: Text('${time[i]}',
                                //    textAlign: TextAlign.right,
                                style: TextStyle(fontFamily: 'Roboto',
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                  decoration: TextDecoration.none,
                                  fontSize: 18,
                                ),
                              ),
                            ),

                          ]
                      ),
                    )
                  else
                    Container(
                      margin: EdgeInsets.only(top: 5,bottom: 5,right:5,left:5),
                      height:(MediaQuery.of(context).size.height)/9.5,// * 0.25,
                      width: MediaQuery.of(context).size.width-50,
                      decoration: BoxDecoration(
                          color:Color(0x7C2B2B2C),
                          border: Border.all(color:Color(0xFF2B2B2C),),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:[
                          Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:[
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Text('${sub4[i]}',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(fontFamily: 'Roboto',
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white,
                                      decoration: TextDecoration.none,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 20,right: 87,top: 3),
                                  child: Text('IT',
                                    //  textAlign: TextAlign.left,
                                    style: TextStyle(fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      decoration: TextDecoration.none,
                                      fontSize: 10,
                                    ),
                                  ),
                                ),
                              ]
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: Text('${time[i]}',
                              textAlign: TextAlign.right,
                              style: TextStyle(fontFamily: 'Roboto',
                                fontWeight: FontWeight.normal,
                                color: Color(0xFFBB86FC),
                                decoration: TextDecoration.none,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )

              ]
          ),
        ),
      ],
    );
  }
}

class ThirdRoute extends StatefulWidget {
  const ThirdRoute({Key? key}) : super(key: key);

  @override
  State<ThirdRoute> createState() => _ThirdRouteState();
}

class _ThirdRouteState extends State<ThirdRoute> {
  @override
  var time=['8:45am-9:45am','9:45am-10:45am','11:00am-12:00pm','12:00pm-1:00pm','1:00pm-2:00pm','2:00pm-3:00pm','3:15am-4:15pm','4:15am-5:15pm'];
  var sub1=['MAT201R01','FREE HOUR','CIV111','FREE HOUR','ECE104','CIV220','CIV221','CIV221'];
  var sub2=['EEE201','ECE102','EIE103','EIE202','FREE HOUR','EIE201','FREE HOUR','FREE HOUR'];
  var sub3=['FREE HOUR','FREE HOUR','MEC201R01','MEC205','FREE HOUR','MEC203','CIV220','MAT201R01'];
  var sub4=['FREE HOUR','CSE208','INT102R01','INT101','FREE HOUR','FREE HOUR','MAT201R01','FREE HOUR'];
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return PageView(
      /// [PageView.scrollDirection] defaults to [Axis.horizontal].
      /// Use [Axis.vertical] to scroll vertically.
      controller: controller,
      children: <Widget>[
        Center(
          child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                for(int i=0;i<8;i++)
                  if(sub1[i]=='FREE HOUR')
                    Container(
                      margin: EdgeInsets.only(
                          top: 5, bottom: 5, right: 5, left: 5),
                      height: (MediaQuery.of(context).size.height) / 9.5,
                      // * 0.25,
                      width: MediaQuery.of(context).size.width - 50,
                      decoration: BoxDecoration(
                          color: Color(0xFFBB86FC),
                          border: Border.all(color: Color(0xFFBB86FC),),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Text('FREE HOUR',
                                      //  textAlign: TextAlign.left,
                                      style: TextStyle(fontFamily: 'Roboto',
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black,
                                        decoration: TextDecoration.none,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 20,
                                        right: 70,
                                        top: 3),
                                    child: Text('MCT',
                                      //  textAlign: TextAlign.left,
                                      style: TextStyle(fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                        decoration: TextDecoration.none,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                ]
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 20),
                              child: Text('${time[i]}',
                                //    textAlign: TextAlign.right,
                                style: TextStyle(fontFamily: 'Roboto',
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                  decoration: TextDecoration.none,
                                  fontSize: 18,
                                ),
                              ),
                            ),

                          ]
                      ),
                    )
                  else
                    Container(
                      margin: EdgeInsets.only(top: 5, bottom: 5, right: 5, left: 5),
                      height: (MediaQuery.of(context).size.height) / 9.5,
                      width: MediaQuery.of(context).size.width - 50,
                      decoration: BoxDecoration(
                          color: Color(0x7C2B2B2C),
                          border: Border.all(color: Color(0xFF2B2B2C),),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Text('${sub1[i]}',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontFamily: 'Roboto',
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white,
                                      decoration: TextDecoration.none,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Text('MCT',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      decoration: TextDecoration.none,
                                      fontSize: 10,
                                    ),
                                  ),
                                ),
                              ]
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: Text('${time[i]}',
                              textAlign: TextAlign.right,
                              style: TextStyle(fontFamily: 'Roboto',
                                fontWeight: FontWeight.normal,
                                color: Color(0xFFBB86FC),
                                decoration: TextDecoration.none,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

              ]
          ),
        ),
        Center(
          child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                for(int i=0;i<8;i++)
                  if(sub2[i]=='FREE HOUR')
                    Container(
                      margin: EdgeInsets.only(top: 5,bottom: 5,right:5,left:5),
                      height:(MediaQuery.of(context).size.height)/9.5,// * 0.25,
                      width: MediaQuery.of(context).size.width-50,
                      decoration: BoxDecoration(
                          color:Color(0xFFBB86FC),
                          border: Border.all(color:Color(0xFFBB86FC),),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:[
                          Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:[
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Text('FREE HOUR',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(fontFamily: 'Roboto',
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black,
                                      decoration: TextDecoration.none,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 20,right: 74,top: 3),
                                  child: Text('ECE',
                                    //  textAlign: TextAlign.left,
                                    style: TextStyle(fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                      decoration: TextDecoration.none,
                                      fontSize: 10,
                                    ),
                                  ),
                                ),
                              ]
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: Text('${time[i]}',
                              textAlign: TextAlign.right,
                              style: TextStyle(fontFamily: 'Roboto',
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                                decoration: TextDecoration.none,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  else
                    Container(
                      margin: EdgeInsets.only(top: 5,bottom: 5,right:5,left:5),
                      height:(MediaQuery.of(context).size.height)/9.5,// * 0.25,
                      width: MediaQuery.of(context).size.width-50,
                      decoration: BoxDecoration(color:Color(0x7C2B2B2C),
                          border: Border.all(color:Color(0xFF2B2B2C),),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:<Widget>[
                            Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment:CrossAxisAlignment.start,
                                children:[
                                  Padding(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Text('${sub2[i]}',
                                      //  textAlign: TextAlign.left,
                                      style: TextStyle(fontFamily: 'Roboto',
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white,
                                        decoration: TextDecoration.none,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 20,top: 3),
                                    child: Text('ECE',
                                      //  textAlign: TextAlign.left,
                                      style: TextStyle(fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                        decoration: TextDecoration.none,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                ]
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 20),
                              child: Text('${time[i]}',
                                //    textAlign: TextAlign.right,
                                style: TextStyle(fontFamily: 'Roboto',
                                  fontWeight: FontWeight.normal,
                                  color: Color(0xFFBB86FC),
                                  decoration: TextDecoration.none,
                                  fontSize: 18,
                                ),
                              ),
                            ),

                          ]
                      ),
                    ),
              ]
          ),
        ),
        Center(
          child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                for(int i=0;i<8;i++)
                  if(sub3[i]=='FREE HOUR')
                    Container(
                      margin: EdgeInsets.only(top: 5,bottom: 5,right:5,left:5),
                      height:(MediaQuery.of(context).size.height)/9.5,// * 0.25,
                      width: MediaQuery.of(context).size.width-50,
                      decoration: BoxDecoration(
                          color:Color(0xFFBB86FC),
                          border: Border.all(color:Color(0xFFBB86FC),),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:<Widget>[
                            Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:[
                                  Padding(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Text('FREE HOUR',
                                      //  textAlign: TextAlign.left,
                                      style: TextStyle(fontFamily: 'Roboto',
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black,
                                        decoration: TextDecoration.none,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 20,right: 72,top: 3),
                                    child: Text('MEC',
                                      //  textAlign: TextAlign.left,
                                      style: TextStyle(fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                        decoration: TextDecoration.none,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                ]
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 20),
                              child: Text('${time[i]}',
                                //    textAlign: TextAlign.right,
                                style: TextStyle(fontFamily: 'Roboto',
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                  decoration: TextDecoration.none,
                                  fontSize: 18,
                                ),
                              ),
                            ),

                          ]
                      ),
                    )
                  else
                    Container(
                      margin: EdgeInsets.only(top: 5,bottom: 5,right:5,left:5),
                      height:(MediaQuery.of(context).size.height)/9.5,// * 0.25,
                      width: MediaQuery.of(context).size.width-50,
                      decoration: BoxDecoration(
                          color:Color(0x7C2B2B2C),
                          border: Border.all(color:Color(0xFF2B2B2C),),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:<Widget>[
                            Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:[
                                  Padding(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Text('${sub3[i]}',
                                      //  textAlign: TextAlign.left,
                                      style: TextStyle(fontFamily: 'Roboto',
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white,
                                        decoration: TextDecoration.none,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 20,right: 36,top: 3),
                                    child: Text('MEC',
                                      //  textAlign: TextAlign.left,
                                      style: TextStyle(fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                        decoration: TextDecoration.none,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                ]
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 20),
                              child: Text('${time[i]}',
                                //    textAlign: TextAlign.right,
                                style: TextStyle(fontFamily: 'Roboto',
                                  fontWeight: FontWeight.normal,
                                  color: Color(0xFFBB86FC),
                                  decoration: TextDecoration.none,
                                  fontSize: 18,
                                ),
                              ),
                            ),

                          ]
                      ),
                    )
              ]
          ),
        ),
        Center(
          child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                for(int i=0;i<8;i++)
                  if(sub4[i]=='FREE HOUR')
                    Container(
                      margin: EdgeInsets.only(top: 5,bottom: 5,right:5,left:5),
                      height:(MediaQuery.of(context).size.height)/9.5,// * 0.25,
                      width: MediaQuery.of(context).size.width-50,
                      decoration: BoxDecoration(
                          color:Color(0xFFBB86FC),
                          border: Border.all(color:Color(0xFFBB86FC),),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:<Widget>[
                            Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:[
                                  Padding(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Text('FREE HOUR',
                                      //  textAlign: TextAlign.left,
                                      style: TextStyle(fontFamily: 'Roboto',
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black,
                                        decoration: TextDecoration.none,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 20,right: 85,top: 3),
                                    child: Text('IT',
                                      //  textAlign: TextAlign.left,
                                      style: TextStyle(fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                        decoration: TextDecoration.none,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                ]
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 20),
                              child: Text('${time[i]}',
                                //    textAlign: TextAlign.right,
                                style: TextStyle(fontFamily: 'Roboto',
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                  decoration: TextDecoration.none,
                                  fontSize: 18,
                                ),
                              ),
                            ),

                          ]
                      ),
                    )
                  else
                    Container(
                      margin: EdgeInsets.only(top: 5,bottom: 5,right:5,left:5),
                      height:(MediaQuery.of(context).size.height)/9.5,// * 0.25,
                      width: MediaQuery.of(context).size.width-50,
                      decoration: BoxDecoration(
                          color:Color(0x7C2B2B2C),
                          border: Border.all(color:Color(0xFF2B2B2C),),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:[
                          Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:[
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Text('${sub4[i]}',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(fontFamily: 'Roboto',
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white,
                                      decoration: TextDecoration.none,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 20,right: 87,top: 3),
                                  child: Text('IT',
                                    //  textAlign: TextAlign.left,
                                    style: TextStyle(fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      decoration: TextDecoration.none,
                                      fontSize: 10,
                                    ),
                                  ),
                                ),
                              ]
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: Text('${time[i]}',
                              textAlign: TextAlign.right,
                              style: TextStyle(fontFamily: 'Roboto',
                                fontWeight: FontWeight.normal,
                                color: Color(0xFFBB86FC),
                                decoration: TextDecoration.none,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )

              ]
          ),
        ),
      ],
    );
  }
}

class FourthRoute extends StatefulWidget {
  const FourthRoute({Key? key}) : super(key: key);

  @override
  State<FourthRoute> createState() => _FourthRouteState();
}

class _FourthRouteState extends State<FourthRoute> {
  @override
  var time=['8:45am-9:45am','9:45am-10:45am','11:00am-12:00pm','12:00pm-1:00pm','1:00pm-2:00pm','2:00pm-3:00pm','3:15am-4:15pm','4:15am-5:15pm'];
  var sub1=['FREE HOUR','CIV220','ECE209','ECE104','FREE HOUR','CIV111','MAT201R01','FREE HOUR'];
  var sub2=['EIE201','MAT201R01','ECE101','FREE HOUR','FREE HOUR','ECE102','FREE HOUR','FREE HOUR'];
  var sub3=['MAT201R01','CIV220','MEC203','FREE HOUR','MEC202','MEC202','FREE HOUR','FREE HOUR'];
  var sub4=['FREE HOUR','CSE103','CSE208','INT102R01','FREE HOUR','INT101','CSE104','CSE104'];
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return PageView(
      /// [PageView.scrollDirection] defaults to [Axis.horizontal].
      /// Use [Axis.vertical] to scroll vertically.
      controller: controller,
      children: <Widget>[
        Center(
          child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                for(int i=0;i<8;i++)
                  if(sub1[i]=='FREE HOUR')
                    Container(
                      margin: EdgeInsets.only(
                          top: 5, bottom: 5, right: 5, left: 5),
                      height: (MediaQuery.of(context).size.height) / 9.5,
                      // * 0.25,
                      width: MediaQuery.of(context).size.width - 50,
                      decoration: BoxDecoration(
                          color: Color(0xFFBB86FC),
                          border: Border.all(color: Color(0xFFBB86FC),),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Text('FREE HOUR',
                                      //  textAlign: TextAlign.left,
                                      style: TextStyle(fontFamily: 'Roboto',
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black,
                                        decoration: TextDecoration.none,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 20,
                                        right: 70,
                                        top: 3),
                                    child: Text('MCT',
                                      //  textAlign: TextAlign.left,
                                      style: TextStyle(fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                        decoration: TextDecoration.none,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                ]
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 20),
                              child: Text('${time[i]}',
                                //    textAlign: TextAlign.right,
                                style: TextStyle(fontFamily: 'Roboto',
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                  decoration: TextDecoration.none,
                                  fontSize: 18,
                                ),
                              ),
                            ),

                          ]
                      ),
                    )
                  else
                    Container(
                      margin: EdgeInsets.only(top: 5, bottom: 5, right: 5, left: 5),
                      height: (MediaQuery.of(context).size.height) / 9.5,
                      width: MediaQuery.of(context).size.width - 50,
                      decoration: BoxDecoration(
                          color: Color(0x7C2B2B2C),
                          border: Border.all(color: Color(0xFF2B2B2C),),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Text('${sub1[i]}',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontFamily: 'Roboto',
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white,
                                      decoration: TextDecoration.none,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Text('MCT',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      decoration: TextDecoration.none,
                                      fontSize: 10,
                                    ),
                                  ),
                                ),
                              ]
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: Text('${time[i]}',
                              textAlign: TextAlign.right,
                              style: TextStyle(fontFamily: 'Roboto',
                                fontWeight: FontWeight.normal,
                                color: Color(0xFFBB86FC),
                                decoration: TextDecoration.none,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

              ]
          ),
        ),
        Center(
          child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                for(int i=0;i<8;i++)
                  if(sub2[i]=='FREE HOUR')
                    Container(
                      margin: EdgeInsets.only(top: 5,bottom: 5,right:5,left:5),
                      height:(MediaQuery.of(context).size.height)/9.5,// * 0.25,
                      width: MediaQuery.of(context).size.width-50,
                      decoration: BoxDecoration(
                          color:Color(0xFFBB86FC),
                          border: Border.all(color:Color(0xFFBB86FC),),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:[
                          Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:[
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Text('FREE HOUR',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(fontFamily: 'Roboto',
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black,
                                      decoration: TextDecoration.none,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 20,right: 74,top: 3),
                                  child: Text('ECE',
                                    //  textAlign: TextAlign.left,
                                    style: TextStyle(fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                      decoration: TextDecoration.none,
                                      fontSize: 10,
                                    ),
                                  ),
                                ),
                              ]
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: Text('${time[i]}',
                              textAlign: TextAlign.right,
                              style: TextStyle(fontFamily: 'Roboto',
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                                decoration: TextDecoration.none,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  else
                    Container(
                      margin: EdgeInsets.only(top: 5,bottom: 5,right:5,left:5),
                      height:(MediaQuery.of(context).size.height)/9.5,// * 0.25,
                      width: MediaQuery.of(context).size.width-50,
                      decoration: BoxDecoration(color:Color(0x7C2B2B2C),
                          border: Border.all(color:Color(0xFF2B2B2C),),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:<Widget>[
                            Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment:CrossAxisAlignment.start,
                                children:[
                                  Padding(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Text('${sub2[i]}',
                                      //  textAlign: TextAlign.left,
                                      style: TextStyle(fontFamily: 'Roboto',
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white,
                                        decoration: TextDecoration.none,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 20,top: 3),
                                    child: Text('ECE',
                                      //  textAlign: TextAlign.left,
                                      style: TextStyle(fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                        decoration: TextDecoration.none,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                ]
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 20),
                              child: Text('${time[i]}',
                                //    textAlign: TextAlign.right,
                                style: TextStyle(fontFamily: 'Roboto',
                                  fontWeight: FontWeight.normal,
                                  color: Color(0xFFBB86FC),
                                  decoration: TextDecoration.none,
                                  fontSize: 18,
                                ),
                              ),
                            ),

                          ]
                      ),
                    ),
              ]
          ),
        ),
        Center(
          child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                for(int i=0;i<8;i++)
                  if(sub3[i]=='FREE HOUR')
                    Container(
                      margin: EdgeInsets.only(top: 5,bottom: 5,right:5,left:5),
                      height:(MediaQuery.of(context).size.height)/9.5,// * 0.25,
                      width: MediaQuery.of(context).size.width-50,
                      decoration: BoxDecoration(
                          color:Color(0xFFBB86FC),
                          border: Border.all(color:Color(0xFFBB86FC),),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:<Widget>[
                            Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:[
                                  Padding(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Text('FREE HOUR',
                                      //  textAlign: TextAlign.left,
                                      style: TextStyle(fontFamily: 'Roboto',
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black,
                                        decoration: TextDecoration.none,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 20,right: 72,top: 3),
                                    child: Text('MEC',
                                      //  textAlign: TextAlign.left,
                                      style: TextStyle(fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                        decoration: TextDecoration.none,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                ]
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 20),
                              child: Text('${time[i]}',
                                //    textAlign: TextAlign.right,
                                style: TextStyle(fontFamily: 'Roboto',
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                  decoration: TextDecoration.none,
                                  fontSize: 18,
                                ),
                              ),
                            ),

                          ]
                      ),
                    )
                  else
                    Container(
                      margin: EdgeInsets.only(top: 5,bottom: 5,right:5,left:5),
                      height:(MediaQuery.of(context).size.height)/9.5,// * 0.25,
                      width: MediaQuery.of(context).size.width-50,
                      decoration: BoxDecoration(
                          color:Color(0x7C2B2B2C),
                          border: Border.all(color:Color(0xFF2B2B2C),),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:<Widget>[
                            Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:[
                                  Padding(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Text('${sub3[i]}',
                                      //  textAlign: TextAlign.left,
                                      style: TextStyle(fontFamily: 'Roboto',
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white,
                                        decoration: TextDecoration.none,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 20,right: 36,top: 3),
                                    child: Text('MEC',
                                      //  textAlign: TextAlign.left,
                                      style: TextStyle(fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                        decoration: TextDecoration.none,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                ]
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 20),
                              child: Text('${time[i]}',
                                //    textAlign: TextAlign.right,
                                style: TextStyle(fontFamily: 'Roboto',
                                  fontWeight: FontWeight.normal,
                                  color: Color(0xFFBB86FC),
                                  decoration: TextDecoration.none,
                                  fontSize: 18,
                                ),
                              ),
                            ),

                          ]
                      ),
                    )
              ]
          ),
        ),
        Center(
          child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                for(int i=0;i<8;i++)
                  if(sub4[i]=='FREE HOUR')
                    Container(
                      margin: EdgeInsets.only(top: 5,bottom: 5,right:5,left:5),
                      height:(MediaQuery.of(context).size.height)/9.5,// * 0.25,
                      width: MediaQuery.of(context).size.width-50,
                      decoration: BoxDecoration(
                          color:Color(0xFFBB86FC),
                          border: Border.all(color:Color(0xFFBB86FC),),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:<Widget>[
                            Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:[
                                  Padding(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Text('FREE HOUR',
                                      //  textAlign: TextAlign.left,
                                      style: TextStyle(fontFamily: 'Roboto',
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black,
                                        decoration: TextDecoration.none,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 20,right: 85,top: 3),
                                    child: Text('IT',
                                      //  textAlign: TextAlign.left,
                                      style: TextStyle(fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                        decoration: TextDecoration.none,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                ]
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 20),
                              child: Text('${time[i]}',
                                //    textAlign: TextAlign.right,
                                style: TextStyle(fontFamily: 'Roboto',
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                  decoration: TextDecoration.none,
                                  fontSize: 18,
                                ),
                              ),
                            ),

                          ]
                      ),
                    )
                  else
                    Container(
                      margin: EdgeInsets.only(top: 5,bottom: 5,right:5,left:5),
                      height:(MediaQuery.of(context).size.height)/9.5,// * 0.25,
                      width: MediaQuery.of(context).size.width-50,
                      decoration: BoxDecoration(
                          color:Color(0x7C2B2B2C),
                          border: Border.all(color:Color(0xFF2B2B2C),),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:[
                          Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:[
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Text('${sub4[i]}',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(fontFamily: 'Roboto',
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white,
                                      decoration: TextDecoration.none,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 20,right: 87,top: 3),
                                  child: Text('IT',
                                    //  textAlign: TextAlign.left,
                                    style: TextStyle(fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      decoration: TextDecoration.none,
                                      fontSize: 10,
                                    ),
                                  ),
                                ),
                              ]
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: Text('${time[i]}',
                              textAlign: TextAlign.right,
                              style: TextStyle(fontFamily: 'Roboto',
                                fontWeight: FontWeight.normal,
                                color: Color(0xFFBB86FC),
                                decoration: TextDecoration.none,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )

              ]
          ),
        ),
      ],
    );
  }
}

class FifthRoute extends StatefulWidget {
  const FifthRoute({Key? key}) : super(key: key);

  @override
  State<FifthRoute> createState() => _FifthRouteState();
}

class _FifthRouteState extends State<FifthRoute> {
  @override
  var time=['8:45am-9:45am','9:45am-10:45am','11:00am-12:00pm','12:00pm-1:00pm','1:00pm-2:00pm','2:00pm-3:00pm','3:15am-4:15pm','4:15am-5:15pm'];
  var sub1=['ECE209','FREE HOUR','CIV220','FREE HOUR','CIV221','CIV221','ECE104','FREE HOUR'];
  var sub2=['FREE HOUR','ECE101','FREE HOUR','EIE201','FREE HOUR','ECE102','MAT201R01','FREE HOUR'];
  var sub3=['MEC201R01','FREE HOUR','MAT201R01','MEC203','FREE HOUR','FREE HOUR','CIV220','MEC205'];
  var sub4=['FREE HOUR','FREE HOUR','CSE208','FREE HOUR','FREE HOUR','MAT201R01','CSEE103','FREE HOUR'];
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return PageView(
      /// [PageView.scrollDirection] defaults to [Axis.horizontal].
      /// Use [Axis.vertical] to scroll vertically.
      controller: controller,
      children: <Widget>[
        Center(
          child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                for(int i=0;i<8;i++)
                  if(sub1[i]=='FREE HOUR')
                    Container(
                      margin: EdgeInsets.only(
                          top: 5, bottom: 5, right: 5, left: 5),
                      height: (MediaQuery.of(context).size.height) / 9.5,
                      // * 0.25,
                      width: MediaQuery.of(context).size.width - 50,
                      decoration: BoxDecoration(
                          color: Color(0xFFBB86FC),
                          border: Border.all(color: Color(0xFFBB86FC),),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Text('FREE HOUR',
                                      //  textAlign: TextAlign.left,
                                      style: TextStyle(fontFamily: 'Roboto',
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black,
                                        decoration: TextDecoration.none,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 20,
                                        right: 70,
                                        top: 3),
                                    child: Text('MCT',
                                      //  textAlign: TextAlign.left,
                                      style: TextStyle(fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                        decoration: TextDecoration.none,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                ]
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 20),
                              child: Text('${time[i]}',
                                //    textAlign: TextAlign.right,
                                style: TextStyle(fontFamily: 'Roboto',
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                  decoration: TextDecoration.none,
                                  fontSize: 18,
                                ),
                              ),
                            ),

                          ]
                      ),
                    )
                  else
                    Container(
                      margin: EdgeInsets.only(top: 5, bottom: 5, right: 5, left: 5),
                      height: (MediaQuery.of(context).size.height) / 9.5,
                      width: MediaQuery.of(context).size.width - 50,
                      decoration: BoxDecoration(
                          color: Color(0x7C2B2B2C),
                          border: Border.all(color: Color(0xFF2B2B2C),),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Text('${sub1[i]}',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontFamily: 'Roboto',
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white,
                                      decoration: TextDecoration.none,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Text('MCT',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      decoration: TextDecoration.none,
                                      fontSize: 10,
                                    ),
                                  ),
                                ),
                              ]
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: Text('${time[i]}',
                              textAlign: TextAlign.right,
                              style: TextStyle(fontFamily: 'Roboto',
                                fontWeight: FontWeight.normal,
                                color: Color(0xFFBB86FC),
                                decoration: TextDecoration.none,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

              ]
          ),
        ),
        Center(
          child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                for(int i=0;i<8;i++)
                  if(sub2[i]=='FREE HOUR')
                    Container(
                      margin: EdgeInsets.only(top: 5,bottom: 5,right:5,left:5),
                      height:(MediaQuery.of(context).size.height)/9.5,// * 0.25,
                      width: MediaQuery.of(context).size.width-50,
                      decoration: BoxDecoration(
                          color:Color(0xFFBB86FC),
                          border: Border.all(color:Color(0xFFBB86FC),),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:[
                          Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:[
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Text('FREE HOUR',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(fontFamily: 'Roboto',
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black,
                                      decoration: TextDecoration.none,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 20,right: 74,top: 3),
                                  child: Text('ECE',
                                    //  textAlign: TextAlign.left,
                                    style: TextStyle(fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                      decoration: TextDecoration.none,
                                      fontSize: 10,
                                    ),
                                  ),
                                ),
                              ]
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: Text('${time[i]}',
                              textAlign: TextAlign.right,
                              style: TextStyle(fontFamily: 'Roboto',
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                                decoration: TextDecoration.none,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  else
                    Container(
                      margin: EdgeInsets.only(top: 5,bottom: 5,right:5,left:5),
                      height:(MediaQuery.of(context).size.height)/9.5,// * 0.25,
                      width: MediaQuery.of(context).size.width-50,
                      decoration: BoxDecoration(color:Color(0x7C2B2B2C),
                          border: Border.all(color:Color(0xFF2B2B2C),),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:<Widget>[
                            Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment:CrossAxisAlignment.start,
                                children:[
                                  Padding(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Text('${sub2[i]}',
                                      //  textAlign: TextAlign.left,
                                      style: TextStyle(fontFamily: 'Roboto',
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white,
                                        decoration: TextDecoration.none,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 20,top: 3),
                                    child: Text('ECE',
                                      //  textAlign: TextAlign.left,
                                      style: TextStyle(fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                        decoration: TextDecoration.none,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                ]
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 20),
                              child: Text('${time[i]}',
                                //    textAlign: TextAlign.right,
                                style: TextStyle(fontFamily: 'Roboto',
                                  fontWeight: FontWeight.normal,
                                  color: Color(0xFFBB86FC),
                                  decoration: TextDecoration.none,
                                  fontSize: 18,
                                ),
                              ),
                            ),

                          ]
                      ),
                    ),
              ]
          ),
        ),
        Center(
          child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                for(int i=0;i<8;i++)
                  if(sub3[i]=='FREE HOUR')
                    Container(
                      margin: EdgeInsets.only(top: 5,bottom: 5,right:5,left:5),
                      height:(MediaQuery.of(context).size.height)/9.5,// * 0.25,
                      width: MediaQuery.of(context).size.width-50,
                      decoration: BoxDecoration(
                          color:Color(0xFFBB86FC),
                          border: Border.all(color:Color(0xFFBB86FC),),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:<Widget>[
                            Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:[
                                  Padding(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Text('FREE HOUR',
                                      //  textAlign: TextAlign.left,
                                      style: TextStyle(fontFamily: 'Roboto',
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black,
                                        decoration: TextDecoration.none,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 20,right: 72,top: 3),
                                    child: Text('MEC',
                                      //  textAlign: TextAlign.left,
                                      style: TextStyle(fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                        decoration: TextDecoration.none,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                ]
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 20),
                              child: Text('${time[i]}',
                                //    textAlign: TextAlign.right,
                                style: TextStyle(fontFamily: 'Roboto',
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                  decoration: TextDecoration.none,
                                  fontSize: 18,
                                ),
                              ),
                            ),

                          ]
                      ),
                    )
                  else
                    Container(
                      margin: EdgeInsets.only(top: 5,bottom: 5,right:5,left:5),
                      height:(MediaQuery.of(context).size.height)/9.5,// * 0.25,
                      width: MediaQuery.of(context).size.width-50,
                      decoration: BoxDecoration(
                          color:Color(0x7C2B2B2C),
                          border: Border.all(color:Color(0xFF2B2B2C),),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:<Widget>[
                            Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:[
                                  Padding(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Text('${sub3[i]}',
                                      //  textAlign: TextAlign.left,
                                      style: TextStyle(fontFamily: 'Roboto',
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white,
                                        decoration: TextDecoration.none,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 20,right: 36,top: 3),
                                    child: Text('MEC',
                                      //  textAlign: TextAlign.left,
                                      style: TextStyle(fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                        decoration: TextDecoration.none,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                ]
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 20),
                              child: Text('${time[i]}',
                                //    textAlign: TextAlign.right,
                                style: TextStyle(fontFamily: 'Roboto',
                                  fontWeight: FontWeight.normal,
                                  color: Color(0xFFBB86FC),
                                  decoration: TextDecoration.none,
                                  fontSize: 18,
                                ),
                              ),
                            ),

                          ]
                      ),
                    )
              ]
          ),
        ),
        Center(
          child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                for(int i=0;i<8;i++)
                  if(sub4[i]=='FREE HOUR')
                    Container(
                      margin: EdgeInsets.only(top: 5,bottom: 5,right:5,left:5),
                      height:(MediaQuery.of(context).size.height)/9.5,// * 0.25,
                      width: MediaQuery.of(context).size.width-50,
                      decoration: BoxDecoration(
                          color:Color(0xFFBB86FC),
                          border: Border.all(color:Color(0xFFBB86FC),),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:<Widget>[
                            Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:[
                                  Padding(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Text('FREE HOUR',
                                      //  textAlign: TextAlign.left,
                                      style: TextStyle(fontFamily: 'Roboto',
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black,
                                        decoration: TextDecoration.none,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 20,right: 85,top: 3),
                                    child: Text('IT',
                                      //  textAlign: TextAlign.left,
                                      style: TextStyle(fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                        decoration: TextDecoration.none,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                ]
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 20),
                              child: Text('${time[i]}',
                                //    textAlign: TextAlign.right,
                                style: TextStyle(fontFamily: 'Roboto',
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                  decoration: TextDecoration.none,
                                  fontSize: 18,
                                ),
                              ),
                            ),

                          ]
                      ),
                    )
                  else
                    Container(
                      margin: EdgeInsets.only(top: 5,bottom: 5,right:5,left:5),
                      height:(MediaQuery.of(context).size.height)/9.5,// * 0.25,
                      width: MediaQuery.of(context).size.width-50,
                      decoration: BoxDecoration(
                          color:Color(0x7C2B2B2C),
                          border: Border.all(color:Color(0xFF2B2B2C),),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:[
                          Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:[
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Text('${sub4[i]}',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(fontFamily: 'Roboto',
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white,
                                      decoration: TextDecoration.none,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 20,right: 87,top: 3),
                                  child: Text('IT',
                                    //  textAlign: TextAlign.left,
                                    style: TextStyle(fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      decoration: TextDecoration.none,
                                      fontSize: 10,
                                    ),
                                  ),
                                ),
                              ]
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: Text('${time[i]}',
                              textAlign: TextAlign.right,
                              style: TextStyle(fontFamily: 'Roboto',
                                fontWeight: FontWeight.normal,
                                color: Color(0xFFBB86FC),
                                decoration: TextDecoration.none,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )

              ]
          ),
        ),
      ],
    );
  }
}

class First1Route extends StatefulWidget {
  const First1Route({Key? key}) : super(key: key);

  @override
  State<First1Route> createState() => _First1RouteState();
}

class _First1RouteState extends State<First1Route> {
  @override
  Widget build(BuildContext context) {
    AppBar(
      backgroundColor: Color(0x000000),
      elevation: 0,
      toolbarHeight: 10,
    );
    final PageController controller = PageController();
    return PageView(

      /// [PageView.scrollDirection] defaults to [Axis.horizontal].
      /// Use [Axis.vertical] to scroll vertically.
      controller: controller,
      children: <Widget>[
        Center(
          child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                Container(
                  margin: EdgeInsets.only(top: 5,bottom: 5,right:5,left:5),
                  height:(MediaQuery.of(context).size.height)/9.5,// * 0.25,
                  width: MediaQuery.of(context).size.width-50,
                  decoration: BoxDecoration(
                      color:Color(0xFFBB86FC),
                      border: Border.all(color:Color(0xFFBB86FC),),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:<Widget>[
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                              Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text('FREE',
                                  //  textAlign: TextAlign.left,
                                  style: TextStyle(fontFamily: 'Roboto',
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20,right: 20,top: 3),
                                child: Text('MCT',
                                  //  textAlign: TextAlign.left,
                                  style: TextStyle(fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                            ]
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Text('8:45am-9:45am',
                            //    textAlign: TextAlign.right,
                            style: TextStyle(fontFamily: 'Roboto',
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                              decoration: TextDecoration.none,
                              fontSize: 18,
                            ),
                          ),
                        ),

                      ]
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5,bottom: 5,right:5,left:5),
                  height:(MediaQuery.of(context).size.height)/9.5,// * 0.25,
                  width: MediaQuery.of(context).size.width-50,
                  decoration: BoxDecoration(
                      color:Color(0x7C2B2B2C),
                      border: Border.all(color:Color(0xFF2B2B2C),),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Text('CLASS',
                                textAlign: TextAlign.right,
                                style: TextStyle(fontFamily: 'Roboto',
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                  decoration: TextDecoration.none,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20,right: 40,top: 3),
                              child: Text('',
                                //  textAlign: TextAlign.left,
                                style: TextStyle(fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  decoration: TextDecoration.none,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ]
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Text('9:45am-10:45am',
                          textAlign: TextAlign.right,
                          style: TextStyle(fontFamily: 'Roboto',
                            fontWeight: FontWeight.normal,
                            color: Color(0xFFBB86FC),
                            decoration: TextDecoration.none,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5,bottom: 5,right:5,left:5),
                  height:(MediaQuery.of(context).size.height)/9.5,// * 0.25,
                  width: MediaQuery.of(context).size.width-50,
                  decoration: BoxDecoration(
                      color:Color(0x7C2B2B2C),
                      border: Border.all(color:Color(0xFF2B2B2C),),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Text('CLASS',
                                textAlign: TextAlign.right,
                                style: TextStyle(fontFamily: 'Roboto',
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                  decoration: TextDecoration.none,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20,right: 40,top: 3),
                              child: Text('',
                                //  textAlign: TextAlign.left,
                                style: TextStyle(fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  decoration: TextDecoration.none,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ]
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Text('11:00am-12:00pm',
                          textAlign: TextAlign.right,
                          style: TextStyle(fontFamily: 'Roboto',
                            fontWeight: FontWeight.normal,
                            color: Color(0xFFBB86FC),
                            decoration: TextDecoration.none,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5,bottom: 5,right:5,left:5),
                  height:(MediaQuery.of(context).size.height)/9.5,// * 0.25,
                  width: MediaQuery.of(context).size.width-50,
                  decoration: BoxDecoration(
                      color:Color(0xFFBB86FC),
                      border: Border.all(color:Color(0xFFBB86FC),),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Text('FREE',
                                textAlign: TextAlign.right,
                                style: TextStyle(fontFamily: 'Roboto',
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                  decoration: TextDecoration.none,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20,right: 20,top: 3),
                              child: Text('ECE',
                                //  textAlign: TextAlign.left,
                                style: TextStyle(fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  decoration: TextDecoration.none,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ]
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Text('12:00pm-1:00pm',
                          textAlign: TextAlign.right,
                          style: TextStyle(fontFamily: 'Roboto',
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                            decoration: TextDecoration.none,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5,bottom: 5,right:5,left:5),
                  height:(MediaQuery.of(context).size.height)/9.5,// * 0.25,
                  width: MediaQuery.of(context).size.width-50,
                  decoration: BoxDecoration(
                      color:Color(0xFFBB86FC),
                      border: Border.all(color:Color(0xFFBB86FC),),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:<Widget>[
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                              Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text('FREE',
                                  //  textAlign: TextAlign.left,
                                  style: TextStyle(fontFamily: 'Roboto',
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20,top: 3),
                                child: Text('MCT,MEC',
                                  //  textAlign: TextAlign.left,
                                  style: TextStyle(fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                            ]
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Text('1:00pm-2:00pm',
                            //    textAlign: TextAlign.right,
                            style: TextStyle(fontFamily: 'Roboto',
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                              decoration: TextDecoration.none,
                              fontSize: 18,
                            ),
                          ),
                        ),

                      ]
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5,bottom: 5,right:5,left:5),
                  height:(MediaQuery.of(context).size.height)/9.5,// * 0.25,
                  width: MediaQuery.of(context).size.width-50,
                  decoration: BoxDecoration(
                      color:Color(0xFFBB86FC),
                      border: Border.all(color:Color(0xFFBB86FC),),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:<Widget>[
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                              Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text('FREE',
                                  //  textAlign: TextAlign.left,
                                  style: TextStyle(fontFamily: 'Roboto',
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20,top: 3),
                                child: Text('MCT,MEC',
                                  //  textAlign: TextAlign.left,
                                  style: TextStyle(fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                            ]
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Text('2:00pm-3:00pm',
                            //    textAlign: TextAlign.right,
                            style: TextStyle(fontFamily: 'Roboto',
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                              decoration: TextDecoration.none,
                              fontSize: 18,
                            ),
                          ),
                        ),

                      ]
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5,bottom: 5,right:5,left:5),
                  height:(MediaQuery.of(context).size.height)/9.5,// * 0.25,
                  width: MediaQuery.of(context).size.width-50,
                  decoration: BoxDecoration(
                      color:Color(0xFFBB86FC),
                      border: Border.all(color:Color(0xFFBB86FC),),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Text('FREE',
                                textAlign: TextAlign.right,
                                style: TextStyle(fontFamily: 'Roboto',
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                  decoration: TextDecoration.none,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20,right: 20,top: 3),
                              child: Text('MEC',
                                //  textAlign: TextAlign.left,
                                style: TextStyle(fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  decoration: TextDecoration.none,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ]
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Text('3:15am-4:15pm',
                          textAlign: TextAlign.right,
                          style: TextStyle(fontFamily: 'Roboto',
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                            decoration: TextDecoration.none,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5,bottom: 5,right:5,left:5),
                  height:(MediaQuery.of(context).size.height)/9.5,// * 0.25,
                  width: MediaQuery.of(context).size.width-50,
                  decoration: BoxDecoration(
                      color:Color(0xFFBB86FC),
                      border: Border.all(color:Color(0xFFBB86FC),),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:<Widget>[
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:<Widget>[
                              Padding(
                                padding: EdgeInsets.only(right: 5),
                                child: Text('FREE',
                                  //  textAlign: TextAlign.left,
                                  style: TextStyle(fontFamily: 'Roboto',
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20,top: 3),
                                child: Text('ECE,MCT,MEC',
                                  //  textAlign: TextAlign.left,
                                  style: TextStyle(fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                            ]
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Text('4:15pm-5:15pm',
                            //    textAlign: TextAlign.right,
                            style: TextStyle(fontFamily: 'Roboto',
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                              decoration: TextDecoration.none,
                              fontSize: 18,
                            ),
                          ),
                        ),

                      ]
                  ),
                ),

              ]
          ),
        ),
      ],
    );
  }

}

class Second1Route extends StatefulWidget {
  const Second1Route({Key? key}) : super(key: key);

  @override
  State<Second1Route> createState() => _Second1RouteState();
}

class _Second1RouteState extends State<Second1Route> {
  @override
  Widget build(BuildContext context) {
    AppBar(
      backgroundColor: Color(0x000000),
      elevation: 0,
      toolbarHeight: 10,
    );
    final PageController controller = PageController();
    return PageView(

      /// [PageView.scrollDirection] defaults to [Axis.horizontal].
      /// Use [Axis.vertical] to scroll vertically.
      controller: controller,
      children: <Widget>[
        Center(
          child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                Container(
                  margin: EdgeInsets.only(top: 5,bottom: 5,right:5,left:5),
                  height:(MediaQuery.of(context).size.height)/9.5,// * 0.25,
                  width: MediaQuery.of(context).size.width-50,
                  decoration: BoxDecoration(
                      color:Color(0xFFBB86FC),
                      border: Border.all(color:Color(0xFFBB86FC),),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:<Widget>[
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                              Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text('FREE',
                                  //  textAlign: TextAlign.left,
                                  style: TextStyle(fontFamily: 'Roboto',
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20,right: 22,top: 3),
                                child: Text('ECE',
                                  //  textAlign: TextAlign.left,
                                  style: TextStyle(fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                            ]
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Text('8:45am-9:45am',
                            //    textAlign: TextAlign.right,
                            style: TextStyle(fontFamily: 'Roboto',
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                              decoration: TextDecoration.none,
                              fontSize: 18,
                            ),
                          ),
                        ),

                      ]
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5,bottom: 5,right:5,left:5),
                  height:(MediaQuery.of(context).size.height)/9.5,// * 0.25,
                  width: MediaQuery.of(context).size.width-50,
                  decoration: BoxDecoration(
                      color:Color(0x7C2B2B2C),
                      border: Border.all(color:Color(0xFF2B2B2C),),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Text('CLASS',
                                textAlign: TextAlign.right,
                                style: TextStyle(fontFamily: 'Roboto',
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                  decoration: TextDecoration.none,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20,right: 40,top: 3),
                              child: Text('',
                                //  textAlign: TextAlign.left,
                                style: TextStyle(fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  decoration: TextDecoration.none,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ]
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Text('9:45am-10:45am',
                          textAlign: TextAlign.right,
                          style: TextStyle(fontFamily: 'Roboto',
                            fontWeight: FontWeight.normal,
                            color: Color(0xFFBB86FC),
                            decoration: TextDecoration.none,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5,bottom: 5,right:5,left:5),
                  height:(MediaQuery.of(context).size.height)/9.5,// * 0.25,
                  width: MediaQuery.of(context).size.width-50,
                  decoration: BoxDecoration(
                      color:Color(0x7C2B2B2C),
                      border: Border.all(color:Color(0xFF2B2B2C),),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Text('CLASS',
                                textAlign: TextAlign.right,
                                style: TextStyle(fontFamily: 'Roboto',
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                  decoration: TextDecoration.none,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20,right: 40,top: 3),
                              child: Text('',
                                //  textAlign: TextAlign.left,
                                style: TextStyle(fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  decoration: TextDecoration.none,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ]
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Text('11:00am-12:00pm',
                          textAlign: TextAlign.right,
                          style: TextStyle(fontFamily: 'Roboto',
                            fontWeight: FontWeight.normal,
                            color: Color(0xFFBB86FC),
                            decoration: TextDecoration.none,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5,bottom: 5,right:5,left:5),
                  height:(MediaQuery.of(context).size.height)/9.5,// * 0.25,
                  width: MediaQuery.of(context).size.width-50,
                  decoration: BoxDecoration(
                      color:Color(0xFFBB86FC),
                      border: Border.all(color:Color(0xFFBB86FC),),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Text('FREE',
                                textAlign: TextAlign.right,
                                style: TextStyle(fontFamily: 'Roboto',
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                  decoration: TextDecoration.none,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20,top: 3),
                              child: Text('MCT,MEC',
                                //  textAlign: TextAlign.left,
                                style: TextStyle(fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  decoration: TextDecoration.none,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ]
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Text('12:00pm-1:00pm',
                          textAlign: TextAlign.right,
                          style: TextStyle(fontFamily: 'Roboto',
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                            decoration: TextDecoration.none,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5,bottom: 5,right:5,left:5),
                  height:(MediaQuery.of(context).size.height)/9.5,// * 0.25,
                  width: MediaQuery.of(context).size.width-50,
                  decoration: BoxDecoration(
                      color:Color(0xFFBB86FC),
                      border: Border.all(color:Color(0xFFBB86FC),),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:<Widget>[
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                              Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text('FREE',
                                  //  textAlign: TextAlign.left,
                                  style: TextStyle(fontFamily: 'Roboto',
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20,right: 24,top: 3),
                                child: Text('ECE',
                                  //  textAlign: TextAlign.left,
                                  style: TextStyle(fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                            ]
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Text('1:00pm-2:00pm',
                            //    textAlign: TextAlign.right,
                            style: TextStyle(fontFamily: 'Roboto',
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                              decoration: TextDecoration.none,
                              fontSize: 18,
                            ),
                          ),
                        ),

                      ]
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5,bottom: 5,right:5,left:5),
                  height:(MediaQuery.of(context).size.height)/9.5,// * 0.25,
                  width: MediaQuery.of(context).size.width-50,
                  decoration: BoxDecoration(
                      color:Color(0xFFBB86FC),
                      border: Border.all(color:Color(0xFFBB86FC),),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:<Widget>[
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                              Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text('FREE',
                                  //  textAlign: TextAlign.left,
                                  style: TextStyle(fontFamily: 'Roboto',
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20,right: 20,top: 3),
                                child: Text('MEC',
                                  //  textAlign: TextAlign.left,
                                  style: TextStyle(fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                            ]
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Text('2:00pm-3:00pm',
                            //    textAlign: TextAlign.right,
                            style: TextStyle(fontFamily: 'Roboto',
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                              decoration: TextDecoration.none,
                              fontSize: 18,
                            ),
                          ),
                        ),

                      ]
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5,bottom: 5,right:5,left:5),
                  height:(MediaQuery.of(context).size.height)/9.5,// * 0.25,
                  width: MediaQuery.of(context).size.width-50,
                  decoration: BoxDecoration(
                      color:Color(0xFFBB86FC),
                      border: Border.all(color:Color(0xFFBB86FC),),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Text('FREE',
                                textAlign: TextAlign.right,
                                style: TextStyle(fontFamily: 'Roboto',
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                  decoration: TextDecoration.none,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20,top: 3),
                              child: Text('MCT,MEC',
                                //  textAlign: TextAlign.left,
                                style: TextStyle(fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  decoration: TextDecoration.none,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ]
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Text('3:15am-4:15pm',
                          textAlign: TextAlign.right,
                          style: TextStyle(fontFamily: 'Roboto',
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                            decoration: TextDecoration.none,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5,bottom: 5,right:5,left:5),
                  height:(MediaQuery.of(context).size.height)/9.5,// * 0.25,
                  width: MediaQuery.of(context).size.width-50,
                  decoration: BoxDecoration(
                      color:Color(0xFFBB86FC),
                      border: Border.all(color:Color(0xFFBB86FC),),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:<Widget>[
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:<Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 20,right: 20),
                                child: Text('FREE',
                                  //  textAlign: TextAlign.left,
                                  style: TextStyle(fontFamily: 'Roboto',
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20,top: 3),
                                child: Text('ECE,MCT,MEC',
                                  //  textAlign: TextAlign.left,
                                  style: TextStyle(fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                            ]
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Text('4:15pm-5:15pm',
                            //    textAlign: TextAlign.right,
                            style: TextStyle(fontFamily: 'Roboto',
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                              decoration: TextDecoration.none,
                              fontSize: 18,
                            ),
                          ),
                        ),

                      ]
                  ),
                ),

              ]
          ),
        ),
      ],
    );
  }

}

class Third1Route extends StatefulWidget {
  const Third1Route({Key? key}) : super(key: key);

  @override
  State<Third1Route> createState() => _Third1RouteState();
}

class _Third1RouteState extends State<Third1Route> {
  @override
  Widget build(BuildContext context) {
    AppBar(
      backgroundColor: Color(0x000000),
      elevation: 0,
      toolbarHeight: 10,
    );
    final PageController controller = PageController();
    return PageView(

      /// [PageView.scrollDirection] defaults to [Axis.horizontal].
      /// Use [Axis.vertical] to scroll vertically.
      controller: controller,
      children: <Widget>[
        Center(
          child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                Container(
                  margin: EdgeInsets.only(top: 5,bottom: 5,right:5,left:5),
                  height:(MediaQuery.of(context).size.height)/9.5,// * 0.25,
                  width: MediaQuery.of(context).size.width-50,
                  decoration: BoxDecoration(
                      color:Color(0xFFBB86FC),
                      border: Border.all(color:Color(0xFFBB86FC),),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:<Widget>[
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                              Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text('FREE',
                                  //  textAlign: TextAlign.left,
                                  style: TextStyle(fontFamily: 'Roboto',
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20,right: 20,top: 3),
                                child: Text('MEC',
                                  //  textAlign: TextAlign.left,
                                  style: TextStyle(fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                            ]
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Text('8:45am-9:45am',
                            //    textAlign: TextAlign.right,
                            style: TextStyle(fontFamily: 'Roboto',
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                              decoration: TextDecoration.none,
                              fontSize: 18,
                            ),
                          ),
                        ),

                      ]
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5,bottom: 5,right:5,left:5),
                  height:(MediaQuery.of(context).size.height)/9.5,// * 0.25,
                  width: MediaQuery.of(context).size.width-50,
                  decoration: BoxDecoration(
                      color:Color(0xFFBB86FC),
                      border: Border.all(color:Color(0xFFBB86FC),),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            Padding(
                              padding: EdgeInsets.only(left: 20,right: 20),
                              child: Text('FREE',
                                textAlign: TextAlign.right,
                                style: TextStyle(fontFamily: 'Roboto',
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                  decoration: TextDecoration.none,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20,right: 20,top: 3),
                              child: Text('MCT,MEC',
                                //  textAlign: TextAlign.left,
                                style: TextStyle(fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  decoration: TextDecoration.none,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ]
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Text('9:45am-10:45am',
                          textAlign: TextAlign.right,
                          style: TextStyle(fontFamily: 'Roboto',
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                            decoration: TextDecoration.none,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5,bottom: 5,right:5,left:5),
                  height:(MediaQuery.of(context).size.height)/9.5,// * 0.25,
                  width: MediaQuery.of(context).size.width-50,
                  decoration: BoxDecoration(
                      color:Color(0x7C2B2B2C),
                      border: Border.all(color:Color(0xFF2B2B2C),),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Text('CLASS',
                                textAlign: TextAlign.right,
                                style: TextStyle(fontFamily: 'Roboto',
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                  decoration: TextDecoration.none,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ]
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Text('11:00am-12:00pm',
                          textAlign: TextAlign.right,
                          style: TextStyle(fontFamily: 'Roboto',
                            fontWeight: FontWeight.normal,
                            color: Color(0xFFBB86FC),
                            decoration: TextDecoration.none,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5,bottom: 5,right:5,left:5),
                  height:(MediaQuery.of(context).size.height)/9.5,// * 0.25,
                  width: MediaQuery.of(context).size.width-50,
                  decoration: BoxDecoration(
                      color:Color(0xFFBB86FC),
                      border: Border.all(color:Color(0xFFBB86FC),),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Text('FREE',
                                textAlign: TextAlign.right,
                                style: TextStyle(fontFamily: 'Roboto',
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                  decoration: TextDecoration.none,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20,right: 20,top: 3),
                              child: Text('MCT',
                                //  textAlign: TextAlign.left,
                                style: TextStyle(fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  decoration: TextDecoration.none,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ]
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Text('12:00pm-1:00pm',
                          textAlign: TextAlign.right,
                          style: TextStyle(fontFamily: 'Roboto',
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                            decoration: TextDecoration.none,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5,bottom: 5,right:5,left:5),
                  height:(MediaQuery.of(context).size.height)/9.5,// * 0.25,
                  width: MediaQuery.of(context).size.width-50,
                  decoration: BoxDecoration(
                      color:Color(0xFFBB86FC),
                      border: Border.all(color:Color(0xFFBB86FC),),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:<Widget>[
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                              Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text('FREE',
                                  //  textAlign: TextAlign.left,
                                  style: TextStyle(fontFamily: 'Roboto',
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20,right: 20,top: 3),
                                child: Text('ECE',
                                  //  textAlign: TextAlign.left,
                                  style: TextStyle(fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                            ]
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Text('1:00pm-2:00pm',
                            //    textAlign: TextAlign.right,
                            style: TextStyle(fontFamily: 'Roboto',
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                              decoration: TextDecoration.none,
                              fontSize: 18,
                            ),
                          ),
                        ),

                      ]
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5,bottom: 5,right:5,left:5),
                  height:(MediaQuery.of(context).size.height)/9.5,// * 0.25,
                  width: MediaQuery.of(context).size.width-50,
                  decoration: BoxDecoration(
                      color:Color(0x7C2B2B2C),
                      border: Border.all(color:Color(0xFF2B2B2C),),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:<Widget>[
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                              Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text('CLASS',
                                  //  textAlign: TextAlign.left,
                                  style: TextStyle(fontFamily: 'Roboto',
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white,
                                    decoration: TextDecoration.none,
                                    fontSize: 18,
                                  ),
                                ),
                              ),

                            ]
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Text('2:00pm-3:00pm',
                            //    textAlign: TextAlign.right,
                            style: TextStyle(fontFamily: 'Roboto',
                              fontWeight: FontWeight.normal,
                              color: Color(0xFFBB86FC),
                              decoration: TextDecoration.none,
                              fontSize: 18,
                            ),
                          ),
                        ),

                      ]
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5,bottom: 5,right:5,left:5),
                  height:(MediaQuery.of(context).size.height)/9.5,// * 0.25,
                  width: MediaQuery.of(context).size.width-50,
                  decoration: BoxDecoration(
                      color:Color(0xFFBB86FC),
                      border: Border.all(color:Color(0xFFBB86FC),),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Text('FREE',
                                textAlign: TextAlign.right,
                                style: TextStyle(fontFamily: 'Roboto',
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                  decoration: TextDecoration.none,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20,right: 22,top: 3),
                              child: Text('ECE',
                                //  textAlign: TextAlign.left,
                                style: TextStyle(fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  decoration: TextDecoration.none,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ]
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Text('3:15am-4:15pm',
                          textAlign: TextAlign.right,
                          style: TextStyle(fontFamily: 'Roboto',
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                            decoration: TextDecoration.none,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5,bottom: 5,right:5,left:5),
                  height:(MediaQuery.of(context).size.height)/9.5,// * 0.25,
                  width: MediaQuery.of(context).size.width-50,
                  decoration: BoxDecoration(
                      color:Color(0xFFBB86FC),
                      border: Border.all(color:Color(0xFFBB86FC),),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:<Widget>[
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:<Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text('FREE',
                                  //  textAlign: TextAlign.left,
                                  style: TextStyle(fontFamily: 'Roboto',
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20,right: 22,top: 3),
                                child: Text('ECE',
                                  //  textAlign: TextAlign.left,
                                  style: TextStyle(fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                            ]
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Text('4:15pm-5:15pm',
                            //    textAlign: TextAlign.right,
                            style: TextStyle(fontFamily: 'Roboto',
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                              decoration: TextDecoration.none,
                              fontSize: 18,
                            ),
                          ),
                        ),

                      ]
                  ),
                ),

              ]
          ),
        ),
      ],
    );
  }

}

class Fourth1Route extends StatefulWidget {
  const Fourth1Route({Key? key}) : super(key: key);

  @override
  State<Fourth1Route> createState() => _Fourth1RouteState();
}

class _Fourth1RouteState extends State<Fourth1Route> {
  @override
  Widget build(BuildContext context) {
    AppBar(
      backgroundColor: Color(0x000000),
      elevation: 0,
      toolbarHeight: 10,
    );
    final PageController controller = PageController();
    return PageView(

      /// [PageView.scrollDirection] defaults to [Axis.horizontal].
      /// Use [Axis.vertical] to scroll vertically.
      controller: controller,
      children: <Widget>[
        Center(
          child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                Container(
                  margin: EdgeInsets.only(top: 5,bottom: 5,right:5,left:5),
                  height:(MediaQuery.of(context).size.height)/9.5,// * 0.25,
                  width: MediaQuery.of(context).size.width-50,
                  decoration: BoxDecoration(
                      color:Color(0xFFBB86FC),
                      border: Border.all(color:Color(0xFFBB86FC),),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:<Widget>[
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                              Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text('FREE',
                                  //  textAlign: TextAlign.left,
                                  style: TextStyle(fontFamily: 'Roboto',
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20,right: 20,top: 3),
                                child: Text('MCT',
                                  //  textAlign: TextAlign.left,
                                  style: TextStyle(fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                            ]
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Text('8:45am-9:45am',
                            //    textAlign: TextAlign.right,
                            style: TextStyle(fontFamily: 'Roboto',
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                              decoration: TextDecoration.none,
                              fontSize: 18,
                            ),
                          ),
                        ),

                      ]
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5,bottom: 5,right:5,left:5),
                  height:(MediaQuery.of(context).size.height)/9.5,// * 0.25,
                  width: MediaQuery.of(context).size.width-50,
                  decoration: BoxDecoration(
                      color:Color(0x7C2B2B2C),
                      border: Border.all(color:Color(0xFF2B2B2C),),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Text('CLASS',
                                textAlign: TextAlign.right,
                                style: TextStyle(fontFamily: 'Roboto',
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                  decoration: TextDecoration.none,
                                  fontSize: 18,
                                ),
                              ),
                            ),

                          ]
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Text('9:45am-10:45am',
                          textAlign: TextAlign.right,
                          style: TextStyle(fontFamily: 'Roboto',
                            fontWeight: FontWeight.normal,
                            color: Color(0xFFBB86FC),
                            decoration: TextDecoration.none,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5,bottom: 5,right:5,left:5),
                  height:(MediaQuery.of(context).size.height)/9.5,// * 0.25,
                  width: MediaQuery.of(context).size.width-50,
                  decoration: BoxDecoration(
                      color:Color(0x7C2B2B2C),
                      border: Border.all(color:Color(0xFF2B2B2C),),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Text('CLASS',
                                textAlign: TextAlign.right,
                                style: TextStyle(fontFamily: 'Roboto',
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                  decoration: TextDecoration.none,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ]
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Text('11:00am-12:00pm',
                          textAlign: TextAlign.right,
                          style: TextStyle(fontFamily: 'Roboto',
                            fontWeight: FontWeight.normal,
                            color: Color(0xFFBB86FC),
                            decoration: TextDecoration.none,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5,bottom: 5,right:5,left:5),
                  height:(MediaQuery.of(context).size.height)/9.5,// * 0.25,
                  width: MediaQuery.of(context).size.width-50,
                  decoration: BoxDecoration(
                      color:Color(0xFFBB86FC),
                      border: Border.all(color:Color(0xFFBB86FC),),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            Padding(
                              padding: EdgeInsets.only(left: 20,right: 20),
                              child: Text('FREE',
                                textAlign: TextAlign.right,
                                style: TextStyle(fontFamily: 'Roboto',
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                  decoration: TextDecoration.none,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20,right: 20,top: 3),
                              child: Text('ECE,MEC',
                                //  textAlign: TextAlign.left,
                                style: TextStyle(fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  decoration: TextDecoration.none,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ]
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Text('12:00pm-1:00pm',
                          textAlign: TextAlign.right,
                          style: TextStyle(fontFamily: 'Roboto',
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                            decoration: TextDecoration.none,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5,bottom: 5,right:5,left:5),
                  height:(MediaQuery.of(context).size.height)/9.5,// * 0.25,
                  width: MediaQuery.of(context).size.width-50,
                  decoration: BoxDecoration(
                      color:Color(0xFFBB86FC),
                      border: Border.all(color:Color(0xFFBB86FC),),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:<Widget>[
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                              Padding(
                                padding: EdgeInsets.only(left: 20,right: 20),
                                child: Text('FREE',
                                  //  textAlign: TextAlign.left,
                                  style: TextStyle(fontFamily: 'Roboto',
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20,right: 20,top: 3),
                                child: Text('ECE,MCT',
                                  //  textAlign: TextAlign.left,
                                  style: TextStyle(fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                            ]
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Text('1:00pm-2:00pm',
                            //    textAlign: TextAlign.right,
                            style: TextStyle(fontFamily: 'Roboto',
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                              decoration: TextDecoration.none,
                              fontSize: 18,
                            ),
                          ),
                        ),

                      ]
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5,bottom: 5,right:5,left:5),
                  height:(MediaQuery.of(context).size.height)/9.5,// * 0.25,
                  width: MediaQuery.of(context).size.width-50,
                  decoration: BoxDecoration(
                      color:Color(0x7C2B2B2C),
                      border: Border.all(color:Color(0xFF2B2B2C),),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:<Widget>[
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                              Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text('CLASS',
                                  //  textAlign: TextAlign.left,
                                  style: TextStyle(fontFamily: 'Roboto',
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white,
                                    decoration: TextDecoration.none,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ]
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Text('2:00pm-3:00pm',
                            //    textAlign: TextAlign.right,
                            style: TextStyle(fontFamily: 'Roboto',
                              fontWeight: FontWeight.normal,
                              color: Color(0xFFBB86FC),
                              decoration: TextDecoration.none,
                              fontSize: 18,
                            ),
                          ),
                        ),

                      ]
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5,bottom: 5,right:5,left:5),
                  height:(MediaQuery.of(context).size.height)/9.5,// * 0.25,
                  width: MediaQuery.of(context).size.width-50,
                  decoration: BoxDecoration(
                      color:Color(0xFFBB86FC),
                      border: Border.all(color:Color(0xFFBB86FC),),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            Padding(
                              padding: EdgeInsets.only(left: 20,right: 20),
                              child: Text('FREE',
                                textAlign: TextAlign.right,
                                style: TextStyle(fontFamily: 'Roboto',
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                  decoration: TextDecoration.none,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20,right: 20,top: 3),
                              child: Text('ECE,MEC',
                                //  textAlign: TextAlign.left,
                                style: TextStyle(fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  decoration: TextDecoration.none,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ]
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Text('3:15am-4:15pm',
                          textAlign: TextAlign.right,
                          style: TextStyle(fontFamily: 'Roboto',
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                            decoration: TextDecoration.none,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5,bottom: 5,right:5,left:5),
                  height:(MediaQuery.of(context).size.height)/9.5,// * 0.25,
                  width: MediaQuery.of(context).size.width-50,
                  decoration: BoxDecoration(
                      color:Color(0xFFBB86FC),
                      border: Border.all(color:Color(0xFFBB86FC),),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:<Widget>[
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:<Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 20,right: 20),
                                child: Text('FREE',
                                  //  textAlign: TextAlign.left,
                                  style: TextStyle(fontFamily: 'Roboto',
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20,top: 3),
                                child: Text('ECE,MCT,MEC',
                                  //  textAlign: TextAlign.left,
                                  style: TextStyle(fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                            ]
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Text('4:15pm-5:15pm',
                            //    textAlign: TextAlign.right,
                            style: TextStyle(fontFamily: 'Roboto',
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                              decoration: TextDecoration.none,
                              fontSize: 18,
                            ),
                          ),
                        ),

                      ]
                  ),
                ),

              ]
          ),
        ),
      ],
    );
  }

}

class Fifth1Route extends StatefulWidget {
  const Fifth1Route({Key? key}) : super(key: key);

  @override
  State<Fifth1Route> createState() => _Fifth1RouteState();
}

class _Fifth1RouteState extends State<Fifth1Route> {
  @override
  Widget build(BuildContext context) {
    AppBar(
      backgroundColor: Color(0x000000),
      elevation: 0,
      toolbarHeight: 10,
    );
    final PageController controller = PageController();
    return PageView(

      /// [PageView.scrollDirection] defaults to [Axis.horizontal].
      /// Use [Axis.vertical] to scroll vertically.
      controller: controller,
      children: <Widget>[
        Center(
          child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                Container(
                  margin: EdgeInsets.only(top: 5,bottom: 5,right:5,left:5),
                  height:(MediaQuery.of(context).size.height)/9.5,// * 0.25,
                  width: MediaQuery.of(context).size.width-50,
                  decoration: BoxDecoration(
                      color:Color(0xFFBB86FC),
                      border: Border.all(color:Color(0xFFBB86FC),),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:<Widget>[
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                              Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text('FREE',
                                  //  textAlign: TextAlign.left,
                                  style: TextStyle(fontFamily: 'Roboto',
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20,right: 20,top: 3),
                                child: Text('ECE',
                                  //  textAlign: TextAlign.left,
                                  style: TextStyle(fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                            ]
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Text('8:45am-9:45am',
                            //    textAlign: TextAlign.right,
                            style: TextStyle(fontFamily: 'Roboto',
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                              decoration: TextDecoration.none,
                              fontSize: 18,
                            ),
                          ),
                        ),

                      ]
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5,bottom: 5,right:5,left:5),
                  height:(MediaQuery.of(context).size.height)/9.5,// * 0.25,
                  width: MediaQuery.of(context).size.width-50,
                  decoration: BoxDecoration(
                      color:Color(0xFFBB86FC),
                      border: Border.all(color:Color(0xFFBB86FC),),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            Padding(
                              padding: EdgeInsets.only(left: 20,right: 20),
                              child: Text('FREE',
                                textAlign: TextAlign.right,
                                style: TextStyle(fontFamily: 'Roboto',
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                  decoration: TextDecoration.none,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20,right: 20,top: 3),
                              child: Text('MCT,MEC',
                                //  textAlign: TextAlign.left,
                                style: TextStyle(fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  decoration: TextDecoration.none,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ]
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Text('9:45am-10:45am',
                          textAlign: TextAlign.right,
                          style: TextStyle(fontFamily: 'Roboto',
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                            decoration: TextDecoration.none,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5,bottom: 5,right:5,left:5),
                  height:(MediaQuery.of(context).size.height)/9.5,// * 0.25,
                  width: MediaQuery.of(context).size.width-50,
                  decoration: BoxDecoration(
                      color:Color(0xFFBB86FC),
                      border: Border.all(color:Color(0xFFBB86FC),),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Text('FREE',
                                textAlign: TextAlign.right,
                                style: TextStyle(fontFamily: 'Roboto',
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                  decoration: TextDecoration.none,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20,right: 20,top: 3),
                              child: Text('ECE',
                                //  textAlign: TextAlign.left,
                                style: TextStyle(fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  decoration: TextDecoration.none,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ]
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Text('11:00am-12:00pm',
                          textAlign: TextAlign.right,
                          style: TextStyle(fontFamily: 'Roboto',
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                            decoration: TextDecoration.none,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5,bottom: 5,right:5,left:5),
                  height:(MediaQuery.of(context).size.height)/9.5,// * 0.25,
                  width: MediaQuery.of(context).size.width-50,
                  decoration: BoxDecoration(
                      color:Color(0xFFBB86FC),
                      border: Border.all(color:Color(0xFFBB86FC),),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Text('FREE',
                                textAlign: TextAlign.right,
                                style: TextStyle(fontFamily: 'Roboto',
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                  decoration: TextDecoration.none,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20,right: 20,top: 3),
                              child: Text('MCT',
                                //  textAlign: TextAlign.left,
                                style: TextStyle(fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  decoration: TextDecoration.none,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ]
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Text('12:00pm-1:00pm',
                          textAlign: TextAlign.right,
                          style: TextStyle(fontFamily: 'Roboto',
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                            decoration: TextDecoration.none,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5,bottom: 5,right:5,left:5),
                  height:(MediaQuery.of(context).size.height)/9.5,// * 0.25,
                  width: MediaQuery.of(context).size.width-50,
                  decoration: BoxDecoration(
                      color:Color(0xFFBB86FC),
                      border: Border.all(color:Color(0xFFBB86FC),),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:<Widget>[
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                              Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text('FREE',
                                  //  textAlign: TextAlign.left,
                                  style: TextStyle(fontFamily: 'Roboto',
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20,top: 3),
                                child: Text('ECE,MEC',
                                  //  textAlign: TextAlign.left,
                                  style: TextStyle(fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                            ]
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Text('1:00pm-2:00pm',
                            //    textAlign: TextAlign.right,
                            style: TextStyle(fontFamily: 'Roboto',
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                              decoration: TextDecoration.none,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ]
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5,bottom: 5,right:5,left:5),
                  height:(MediaQuery.of(context).size.height)/9.5,// * 0.25,
                  width: MediaQuery.of(context).size.width-50,
                  decoration: BoxDecoration(
                      color:Color(0xFFBB86FC),
                      border: Border.all(color:Color(0xFFBB86FC),),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:<Widget>[
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                              Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text('FREE',
                                  //  textAlign: TextAlign.left,
                                  style: TextStyle(fontFamily: 'Roboto',
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20,right: 20,top: 3),
                                child: Text('MEC',
                                  //  textAlign: TextAlign.left,
                                  style: TextStyle(fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                            ]
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Text('2:00pm-3:00pm',
                            //    textAlign: TextAlign.right,
                            style: TextStyle(fontFamily: 'Roboto',
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                              decoration: TextDecoration.none,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ]
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5,bottom: 5,right:5,left:5),
                  height:(MediaQuery.of(context).size.height)/9.5,// * 0.25,
                  width: MediaQuery.of(context).size.width-50,
                  decoration: BoxDecoration(
                      color:Color(0x7C2B2B2C),
                      border: Border.all(color:Color(0xFF2B2B2C),),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Text('CLASS',
                                textAlign: TextAlign.right,
                                style: TextStyle(fontFamily: 'Roboto',
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                  decoration: TextDecoration.none,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ]
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Text('3:15am-4:15pm',
                          textAlign: TextAlign.right,
                          style: TextStyle(fontFamily: 'Roboto',
                            fontWeight: FontWeight.normal,
                            color: Color(0xFFBB86FC),
                            decoration: TextDecoration.none,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5,bottom: 5,right:5,left:5),
                  height:(MediaQuery.of(context).size.height)/9.5,// * 0.25,
                  width: MediaQuery.of(context).size.width-50,
                  decoration: BoxDecoration(
                      color:Color(0xFFBB86FC),
                      border: Border.all(color:Color(0xFFBB86FC),),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:<Widget>[
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:<Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text('FREE',
                                  //  textAlign: TextAlign.left,
                                  style: TextStyle(fontFamily: 'Roboto',
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20,top: 3),
                                child: Text('ECE,MCT',
                                  //  textAlign: TextAlign.left,
                                  style: TextStyle(fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                            ]
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Text('4:15pm-5:15pm',
                            //    textAlign: TextAlign.right,
                            style: TextStyle(fontFamily: 'Roboto',
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                              decoration: TextDecoration.none,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ]
                  ),
                ),
              ]
          ),
        ),
      ],
    );
  }
}
