import 'package:flutter/material.dart';
import 'package:camerlearn/widget/Logout_popUp/Logout_popUp.dart';

class navbar extends StatelessWidget {
@override
Widget build (BuildContext context) {
  return LayoutBuilder (
    builder: (context, constraints) {
      if (constraints.maxWidth > 1200) {
        return DesktopNavbar();
      }  else if (constraints.maxWidth > 800 && constraints.maxWidth <1200) {
      return DesktopNavbar();
      } else {
      return MobileNavbar();
     }
   },
  );
 }
}


class DesktopNavbar extends StatelessWidget {
@override
Widget build (BuildContext context) {
  return Padding(
    padding:const EdgeInsets.symmetric(vertical: 20,horizontal: 40),
    child:Container(
    constraints: const BoxConstraints(maxWidth: 1200),
    child: 
    
       
  
        Row(
          
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          

              children: <Widget>[
                  
                  Text(
                    "CamerLearn",
                    style: TextStyle(color: Colors.white),
                  ),

                  SizedBox(width: 200,
                  ),

                  MaterialButton(
                    color:Colors.pink,
                    shape:RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    onPressed: (){
                      showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Logout_popUp();
                      },
                  );
                      
                    },
                    child:Text("LogOut",
                          style: TextStyle(color: Colors.white
                          ),
                          ),
                  ),

                ],
              ),
            
      ),
    );
      }
    }
class MobileNavbar extends StatelessWidget {
  @override
Widget build (BuildContext context) {
  return Padding(
    padding:const EdgeInsets.symmetric(vertical: 0,horizontal: 0),
    child:Container(
      
   
    child: 
    
       
  
        Row(
          
          
          

              children: <Widget>[
                  
                  Text(
                    "CamerLearn",
                    style: TextStyle(color: Colors.white),
                  ),

                  SizedBox(width: 60,
                  ),

                  MaterialButton(
                    color:Colors.pink,
                    shape:RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    onPressed: (){
                      showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Logout_popUp();
                      },
                  );
                      
                    },
                    child:Text("LogOut",
                          style: TextStyle(color: Colors.white
                          ),
                          ),
                  ),

                ],
              ),
            
      ),
    );
      }
    
}