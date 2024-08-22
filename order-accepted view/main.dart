import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homeview(),
    );
  }
}

class homeview extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  String? email;
  String? password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
   body: Form(
        key: formKey,
        child: ListView(
          padding: const EdgeInsets.all(15.0),
          children: [
            Column(children: <Widget>[

            SizedBox(height: 126,),



SizedBox(width: 33,),
Row(

 

   children:

   [
    SizedBox(width:36,),
    Image.asset('assets/images/Group 6872.png',),
   ]
),
       
                 SizedBox(height: 66,),


              Text("   Your Order has been ",style: TextStyle(fontFamily:"font1" ,
                fontSize:  28,fontWeight:FontWeight.w600,),),
              Text(" accepted",style: TextStyle(fontSize: 28,fontWeight:FontWeight.w600,),),
              
              SizedBox(height: 18,),

             Text("   Your items has been placcd and is on  ",style: TextStyle(fontSize: 
16,fontWeight:FontWeight.w400,color: Color(0xff7C7C7C)),),
              Text(" it’s way to being processed",style: TextStyle(   fontFamily:"font1" ,
                fontSize: 
16,fontWeight:FontWeight.w400,color: Color(0xff7C7C7C)),),
          

         
          

              SizedBox(
                height: 126,
              ),

              //container button

              InkWell(
                onTap: () {
                  formKey.currentState!.validate();
                },
                child: Container(
                  width: 364,
                  height: 67,
                  decoration: BoxDecoration(
                      color: Color(0xff53B175),
                      borderRadius: BorderRadius.circular(19)),
                  child: Text(
                    "Track Order",
                    style: TextStyle(
                      fontFamily:"font1" ,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                  ),
                  alignment: Alignment.center,
                ),
              ),

              //end button

         
              Column(
                children: [
              
   InkWell(
                onTap: () {
                  formKey.currentState!.validate();
                },
                child: Container(
                  width: 364,
                  height: 67,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 227, 228, 227),
                      borderRadius: BorderRadius.circular(19)),
                  child: Text(
                    "Back to home",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                  ),
                  alignment: Alignment.center,
                ),
              ),

                ],
              ),

                     )
            ]),

 ],
        ),
      ),
 );
  }
}
