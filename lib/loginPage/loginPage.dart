import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class loginPage extends StatefulWidget {
  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
           width: MediaQuery.of(context).size.width,
           decoration: const BoxDecoration(
            gradient:LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
              Color(0xFF8A2387),
              Color(0xFFE94057),
              Color(0xFFF27121),
              ]
              )
           ),
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 10,),

             Image.asset('images/login.png',
                          height: 300,
                          width: 300,),
             
              
               const SizedBox(height: 5,),
              const Text('Welcome : Admin Page',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
              ),

              const SizedBox(height: 50,),

              Container(
                height: 500,
                width: 400,
                decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)

              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                   const SizedBox(height: 30,),
                   const Text('Hello',
                  style: TextStyle(
                color: Colors.black,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
              
                  ),
                  const SizedBox(height: 10,),

                  const Text('Please Login to your Account',
                  style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
                  ),
                  
                  const SizedBox(height: 20,),
                  // ignore: sized_box_for_whitespace
                  Container(
                    width: 250,
                    child: const TextField(
                      decoration: InputDecoration(
                        labelText: 'Email Address',
                        suffixIcon: Icon(FontAwesomeIcons.envelope,
                        size:17,),
                      ),
                    ),

                  ),

                   const SizedBox(height: 20,),
                  // ignore: sized_box_for_whitespace
                  Container(
                    width: 250,
                    child: const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'password',
                        suffixIcon: Icon(FontAwesomeIcons.eyeSlash,size:17,),
                      ),
                    ),

                  ),


                  Padding(padding: EdgeInsets.fromLTRB(20, 20, 40, 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('Forget Password',style: TextStyle(color: Colors.orangeAccent[700]),
                      ),
                    ],
                    ),
                    ),
                  
                  const SizedBox(height: 20,),

                  GestureDetector(
                    
                    onTap: () {
                    // Fonction à exécuter lorsque l'utilisateur appuie sur le texte
                    Navigator.pushNamed(context, '/home');
                  },
                    child: Container(

                      alignment:Alignment.center,
                      width:250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        gradient: const LinearGradient(
                          begin: Alignment.centerLeft,
                          end:Alignment.centerRight,
                          colors: [
                                Color(0xFF8A2387),
                                Color(0xFFE94057),
                                Color(0xFFF27121),
                                  ]
                        ),
                      ),

                      child: const  Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Text ('Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                          ),
                      ),
                    ),
                  ),
                  )
                ],
              ),
              ),
           ],
           ),
        ),
      ),

    );
  }
}

