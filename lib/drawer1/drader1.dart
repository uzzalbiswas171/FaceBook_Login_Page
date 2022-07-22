import 'package:flutter/material.dart';

import '../Login/login.dart';

class DrawerPagee extends StatefulWidget {
  const DrawerPagee({Key? key}) : super(key: key);

  @override
  State<DrawerPagee> createState() => _DrawerPageeState();
}

class _DrawerPageeState extends State<DrawerPagee> {
  List Student_list=[
    {'name':'Uzzal biswas','phone':'01889173335','email':'uzzal.171.cse@gmail.com','icon':'Icons.add','img':'im/big1.jpg'},
    {'name':'Rahim biswas','phone':'01889173335','email':'karimcse@gmail.com','icon':'Icons.add_call','img':'im/big2.jpg'},
    {'name':'Ador biswas', 'phone':'01889173335','email':'kumar171.cse@gmail.com','icon':'Icons.notification_add','img':'im/big4.jpg'},
    {'name':'Achol biswas','phone':'01889173335','email':'biswas.csecse@gmail.com','icon':'Icons.facebook','img':'im/big8.jpg'},
    {'name':'Bijoy biswas','phone':'01889173335','email':'someonedd3242cse@gmail.com','icon':'Icons.email','img':'im/big10.jpg'},
    {'name':'Biplob biswa','phone':'01889173335','email':'uzzal.171.cse@gmail.com','icon':'Icons.youtube_searched_for','img':'im/big14.jpg'},
    {'name':'kajol biswas','phone':'01889173335','email':'uzzalkumarbiswas.cse@gmail.com','icon':'Icons.call','img':'im/big16.jpg'},
    {'name':'kamal biswas','phone':'01889173335','email':'kumar171.cse@gmail.com','icon':'Icons.notification_add','img':'im/big4.jpg'},
    {'name':'Munshi bisws','phone':'01889173335','email':'biswas.csecse@gmail.com','icon':'Icons.facebook','img':'im/big8.jpg'},
    {'name':'Masud biswas','phone':'01889173335','email':'someonedd3242cse@gmail.com','icon':'Icons.email','img':'im/big10.jpg'},
    {'name':'Roni biswas ','phone':'01889173335','email':'uzzal.171.cse@gmail.com','icon':' Icons.youtube_searched_for','img':'im/big14.jpg'},
  ];

  final GlobalKey<ScaffoldState> _scc=GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent,
      body: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(
          top: 7,
          bottom: 7,
          left: 10,
          right: 10,
        ),


             child: ListView.builder(
               scrollDirection: Axis.vertical,
                 itemCount: Student_list.length,
                 itemBuilder:(context,index){
                   return Container(
                     height: 100,
                     width: MediaQuery.of(context).size.width,
                     child:InkWell(
                       onTap: ((){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                       }),
                       child: Card(
                         color: Colors.white60,
                         shape:RoundedRectangleBorder(
                           borderRadius: BorderRadius.all(Radius.circular(30) )
                         ) ,
                         child: ListTile(
                           leading: CircleAvatar(
                             backgroundColor: Colors.lightBlueAccent,
                             child: Text(Student_list[index]['name'][index]),
                           ),
                           title: Text(Student_list[index]['name']),
                           subtitle: Text(Student_list[index]['email']),
                           //trailing: Student_list[index]['Icon'],
                           trailing: Icon(Icons.call),
                         ),
                       ),
                     ) ,
                   );
                 }
             ),
      ),
    );
  }
}

