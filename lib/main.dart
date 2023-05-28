import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:portfolio_app/app/routes/app_routes.dart';
import 'package:portfolio_app/dashboard.dart';
import 'package:portfolio_app/notifier/user_provider.dart';
import 'package:portfolio_app/project.dart';
import 'package:portfolio_app/skills.dart';
import 'package:portfolio_app/userProfile_demo.dart';
import 'package:portfolio_app/user_details_screen.dart';
import 'package:portfolio_app/work.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<UserProvider>(
      create: (_) => UserProvider(),
      child: MaterialApp(
        title: 'Portfolio App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        initialRoute: AppRoutes.home,
        onGenerateRoute: AppRoutes.onGenerateRoute,
      ),
    );
  }
}

class Example extends StatefulWidget{
  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  int _index = 0;
  final screens = [
    Dashboard(),
    WorkExperience(),
    Project(),
    HomeScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF16171a),
        bottomNavigationBar: SingleChildScrollView(
          child: Container(
            color: Color(0xFF232336),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              child: GNav(
                selectedIndex: _index,
                onTabChange: (index){
                  setState(() {
                    _index = index;
                  });
                },
                backgroundColor: Color(0xFF232336),
                rippleColor: Color(0xFF3A2550), // tab button ripple color when pressed
                hoverColor: Color(0xFF3A2550),
                gap: 8,
                tabBackgroundColor: Color(0xFF3A2550),
                // tabBorderRadius: 35,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                tabs: [
                  GButton(icon: Icons.home,
                    iconColor: Color(0xFFd5d5e0),
                    iconActiveColor: Color(0xFF9d62d9),
                    iconSize: 24,
                    text: 'Home',
                    textColor: Color(0xFF9d62d9),

                    // onPressed: (){
                    //   Navigator.push(context, MaterialPageRoute(builder: (context) => Dashboard()));
                    //
                    // }
                  ),
                  GButton(icon: Icons.work,
                    iconColor: Color(0xFFd5d5e0),
                    iconActiveColor: Color(0xFF9d62d9),
                    iconSize: 24,
                    text: 'Experience',
                    textColor: Color(0xFF9d62d9),

                    // onPressed: (){
                    //   Navigator.push(context, MaterialPageRoute(builder: (context) => WorkExperience()));
                    //
                    // }
                  ),
                  GButton(icon: Icons.book,
                    iconColor: Color(0xFFd5d5e0),
                    iconActiveColor: Color(0xFF9d62d9),
                    iconSize: 24,
                    text: 'Projects',
                    textColor: Color(0xFF9d62d9),
                    // onPressed: (){
                    //   Navigator.push(context, MaterialPageRoute(builder: (context) => WorkExperience()));
                    //
                    // }
                  ),
                  GButton(icon: Icons.star,
                    iconColor: Color(0xFFd5d5e0),
                    iconActiveColor: Color(0xFF9d62d9),
                    iconSize: 24,
                    text: 'Achievements',
                    textColor: Color(0xFF9d62d9),
                    // onPressed: (){
                    //   Navigator.push(context, MaterialPageRoute(builder: (context) => WorkExperience()));
                    //
                    //   },
                  ),
                ],

              ),
            ),
          ),
        ),

        body: Center(child: screens.elementAt(_index)),


    ),


    );


  }
}