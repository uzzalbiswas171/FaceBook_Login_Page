import 'package:flutter/material.dart';

class Facebook_user_sign_up_Page extends StatefulWidget {
  const Facebook_user_sign_up_Page({Key? key}) : super(key: key);

  @override
  State<Facebook_user_sign_up_Page> createState() => _Facebook_user_sign_up_PageState();
}

class _Facebook_user_sign_up_PageState extends State<Facebook_user_sign_up_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    backgroundColor: Color(0xFFF0F2F5),
      body: Container(
        alignment:Alignment.center ,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
             // color: Colors.green,
              height: 90,
              width: 320,
              //color: Colors.lightBlueAccent,
              margin: EdgeInsets.only(
                top: 21,
              ),
                 child: Image.asset("im/facebook.png",

                   fit: BoxFit.cover,
                    ),
              // child: Text("FaceBook",style: TextStyle(
              //   color: Color(0xff1877F2),
              //   fontWeight:FontWeight.bold,
              //   fontSize:44,
              //
              // ),),
            ),
            Container(
              margin: EdgeInsets.only(
                right: MediaQuery.of(context).size.width*0.1,
                left: MediaQuery.of(context).size.width*0.14,
              ),
              child: Text("Facebook helps you connect and share with the people in your life.",style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w400,
              ),),
            ),
            Container(

              margin: EdgeInsets.only(
                top: 39,
              ),
              height: 350,
              width: 400,
              decoration: BoxDecoration(
               color: Color(0xffFFFFFF),
            //  color: Color(0xffF4F1E6),
                borderRadius: BorderRadius.all(Radius.circular(12))
              ),
              child: Container(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                        left: 20,
                      ),
                      height: 54,
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(
                        bottom: 7,
                      ),
                      decoration: BoxDecoration(
                        border:Border.all(
                            color: Color(0xffF0D1D2),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                      ),
                     child: TextFormField(
                       decoration:InputDecoration(
                         hintText: "Password",
                          hintStyle:TextStyle(
                            color: Color(0xff9094B6),
                            fontWeight: FontWeight.w200,
                          ),
                          border: InputBorder.none
                       ),
                     ),
                     // color: Colors.green,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        left: 20,
                      ),
                      height: 54,
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(
                        bottom: 7,
                        top: 7,
                      ),
                      decoration: BoxDecoration(
                        border:Border.all(
                          color: Color(0xffF0D1D2),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                      ),
                      child: TextFormField(
                        decoration:InputDecoration(
                            hintText: "Email address or phone number",
                            hintStyle:TextStyle(
                              color: Color(0xff9094B6),
                              fontWeight: FontWeight.w200,
                            ),
                            border: InputBorder.none
                        ),
                      ),
                      // color: Colors.green,
                    ),
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(
                        bottom: 3,
                        top: 7,
                      ),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Color(0xff166FE5),
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                      ),
                        child: Text("Log In",
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w900,
                          wordSpacing: 1,
                          color: Colors.white
                        ),),

                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(
                      //  bottom: 7,
                        top: 1,
                        bottom: 4,
                      ),
                      child: Text("Forgotten password?",style: TextStyle(
                          color: Color(0xff166FE5),
                        fontWeight: FontWeight.w200
                      ),),
                      //color: Colors.green,
                    ),
                    Divider(
                      thickness: 1.5,
                      color: Color(0xffECEEF0),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 48,
                      width: 205,
                      margin: EdgeInsets.only(
                        top: 17,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xff36A420),
                     borderRadius: BorderRadius.all(Radius.circular(6)),
                      ),
                      child: Text("Creat New Account",style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        wordSpacing: 3,
                        letterSpacing: 1,
                      ),),

                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 30,
              ),
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width*0.2,
              ),
              alignment: Alignment.center,
             child:Row(
                children: [
                  Text("Creat a Page",style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 14,
                    letterSpacing: 1,
                  ),),
                  Text(" for a celebrity, brand or business.",style: TextStyle(
                       fontWeight: FontWeight.w300,
                  ),),
              ],
            ),

            )
          ],
        ),
      ),
    );
  }
}
