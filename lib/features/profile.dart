import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project6/features/sub_route/forgot_password.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {

    Color mycolor =Color.fromARGB(255, 81, 212, 194);

    double screenHeight = MediaQuery.of(context).size.height;
    Color dark_mycolor=Color.fromARGB(255, 35, 128, 116);
    Color comp_color = Color(0xFFD45163);

    return Scaffold(



     body: Padding(
       padding: const EdgeInsets.all(8.0),
       child: Stack(
         children:[
           Row(
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
               Padding(
                 padding: const EdgeInsets.only(left: 16.0,top: 40.0),
                 child: Text('Login',
                   style: TextStyle(
                     color: mycolor,
                     fontWeight: FontWeight.bold,
                     fontSize: 48,
                   ),),
               ),
             ],
           ),
           Center(
           child: Container(
             width: double.infinity, // Make container take full width
             height: screenHeight * 0.35,
             decoration: BoxDecoration(
               color: mycolor,
               borderRadius: BorderRadius.circular(32.0),
             ),// Set height to 33% of screen height
             child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 Padding(
                   padding: const EdgeInsets.all(12.0),
                   child: TextFormField(

                     decoration:
                     InputDecoration(label:

                     Padding(
                       padding: const EdgeInsets.only(left: 8.0),
                       child: Text('Email'),
                     ),
                       hintText: "Enter email",
                       hintStyle: TextStyle(color: Colors.black),
                       labelStyle: TextStyle(color: Colors.black),

                       enabledBorder: OutlineInputBorder(
                         borderSide: BorderSide(color: Colors.black),
                         borderRadius: BorderRadius.circular(32.0),
                       ),
                       focusedBorder: OutlineInputBorder(
                         borderSide: BorderSide(color: Colors.black),
                         borderRadius: BorderRadius.circular(32.0),
                       ),
                     ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(12.0),
                   child: TextFormField(

                     decoration:
                     InputDecoration(label:

                     Padding(
                       padding: const EdgeInsets.only(left: 8.0),
                       child: Text('Password'),
                     ),
                       hintText: "Password",
                       hintStyle: TextStyle(color: Colors.black),
                       labelStyle: TextStyle(color:Colors.black),

                       enabledBorder: OutlineInputBorder(
                         borderSide: BorderSide(color: Colors.black),
                         borderRadius: BorderRadius.circular(32.0),
                       ),
                       focusedBorder: OutlineInputBorder(
                         borderSide: BorderSide(color: Colors.black),
                         borderRadius: BorderRadius.circular(32.0),
                       ),
                     ),
                   ),
                 ),

                 TextButton(
                     onPressed: (){
                       Navigator.push(
                           context,
                           MaterialPageRoute(
                           builder:(context)=>ForgotPassword(),
                       ),
                       );
                     },
                     child:
                     Text('forgot password??',
                     style: TextStyle(color: dark_mycolor),
                     )
                 ),

                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     ElevatedButton(
                       onPressed: (){},
                       style: ElevatedButton.styleFrom(
                         backgroundColor: comp_color,
                         foregroundColor: Color.fromARGB(255,255,255,255),
                         elevation: 0,
                         minimumSize: Size(150, 50),
                       ),
                       child: Text('Sign in',style: TextStyle(fontSize: 16),),
                     ),
                     ElevatedButton(
                         onPressed: (){},
                         style: ElevatedButton.styleFrom(
                           backgroundColor: comp_color,
                           foregroundColor: Color.fromARGB(255,255,255,255),
                           elevation: 0,
                           minimumSize: Size(150, 50),
                         ),
                         child: Text('Log in',style: TextStyle(fontSize: 16)),
                     ),

                   ],
                 ),

               ],
             ),
           ),
         ),
         ],
       ),
     )


    );
  }
}

