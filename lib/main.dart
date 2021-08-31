import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled2/zuri_icons_icons.dart';
//import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:SocrateApp()
    );
  }
}


class SocrateApp extends StatefulWidget {
 // const SocratesApp({Key? key}) : super(key: key);

  @override
  _SocrateAppState createState() => _SocrateAppState();
}

class _SocrateAppState extends State<SocrateApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#f9f9f9'),

      appBar: AppBar(
        toolbarHeight: 56,
        title: Image.asset('asset/Zuri logo.jpg',
        fit: BoxFit.contain,
        height: 30.77,),
        backgroundColor: Colors.white,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
            child: Container(
              decoration: BoxDecoration(
                color: HexColor('#00B87C'),
                borderRadius: BorderRadius.all(Radius.circular(6),),
              ),
              margin: EdgeInsets.fromLTRB(24, 0, 24, 0),

              child: Padding(
                padding: const EdgeInsets.fromLTRB(24, 46, 24, 26),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Team Socrates',
                        style:
                          GoogleFonts.lato(fontStyle: FontStyle.normal, fontSize: 24, fontWeight: FontWeight.w700,
                          color: HexColor('ffffff'),),

                        ),

                      ],
                    ),

                    SizedBox(height: 16,),

                    Text('A flutter team from HNG internship. We would be handling the mobile app for Zuri chat. This is just a basic screen to aid the update to repo. Cheers.',
                    style:  GoogleFonts.lato(fontStyle: FontStyle.normal, fontSize: 14, fontWeight: FontWeight.w400,
                      color: HexColor('f4f4f4'),letterSpacing: 0.25,height: 1.5
                    ),
                    ),
                  ],
                ),
              ),
            ),
          ),

        ],
      ),


      bottomNavigationBar: BottomNavigationBar(
        items: [

          BottomNavigationBarItem(
            icon: Icon(ZuriIcons.default_2,color: HexColor('#00B87C'),
            ),
            label: 'df',
           // title: Text('Inate',style: TextStyle(color: Colors.black),),
          ),

          BottomNavigationBarItem(
            activeIcon: Icon(ZuriIcons.integrate),
            icon: Icon(ZuriIcons.integrate,color: Colors.grey,),
            label: 'grate',
         //   title: Text('Intergrate',style: TextStyle(color: Colors.black),),
          ),

          BottomNavigationBarItem(icon: Icon(ZuriIcons.default_1,color: Colors.grey,),
            label: 'Default',


           // title: Text('Intere',style: TextStyle(color: Colors.black),),
          ),

          BottomNavigationBarItem(icon: Icon(ZuriIcons.default_icon,color: Colors.grey,),
            label: 'User',

           // title: Text('Ingrate',style: TextStyle(color: Colors.black),),
          ),

         

        ],
        selectedLabelStyle: TextStyle(
          color: Colors.green
        ),
        onTap: _onItemTapped,
      ),
    );
  }
}
