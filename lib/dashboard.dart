import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:portfolio_app/aboutMe.dart';
import 'package:portfolio_app/notifier/user_provider.dart';
import 'package:portfolio_app/user_details_screen.dart';
import 'package:provider/provider.dart';
import 'work.dart';

class Dashboard extends StatefulWidget{
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  @override
  Widget build(BuildContext context) {

    // final userNameController = TextEditingController();
    //
    // final model = context.watch<UserProvider>();
    //
    // Future<void> fetchUserInfo() async {
    //
    //   await context.read<UserProvider>().getUser(
    //       username: userNameController.text,
    //       ctx: context);
    // }

    // TODO: implement build
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    // throw UnimplementedError();

    return SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xFF16171a),
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(60),
            child: AppBar(
              elevation: 0,
              centerTitle: true,
              backgroundColor: Colors.transparent,
              actions: [

                IconButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AboutMe()));
                }
                    , icon: Icon(CupertinoIcons.profile_circled),
                  color: Color(0xFFf2f2fa),
                  iconSize: 32.0,
                  padding: const EdgeInsets.fromLTRB(0,10, 15,0),
                ),
              ],
              title: Padding(
                padding: const EdgeInsets.fromLTRB(0,10, 0,0),
                child: Text('My Profile'.toUpperCase(),
                    style: TextStyle(
                      color: Color(0xFFf2f2fa),
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      fontStyle: FontStyle.normal,
                    ),),
              ),

            ),
          ),

          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 15,),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                      child: Text('Search for a Developer',
                        style: TextStyle(
                          color: Color(0xFFf2f2fa),
                          fontSize: 22.0,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                  ),

                  // SizedBox(width: 10,),

                  // model.isLoading?Center(
                  //   child: CircularProgressIndicator(
                  //     backgroundColor: Colors.white,
                  //   ),
                  // )
                  //     : const SizedBox.shrink(),

                  SizedBox(height: 20,),


                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                    child: TextField(
                      // controller: userNameController,
                      // onSubmitted: (value) {
                      //   fetchUserInfo();
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => UserDetailScreen()));
                      // },

                      style: TextStyle(color: Color(0xFFd5d5e0)),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFF232336),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                        hintText: "Search for GitHub Username",
                        prefixIcon: Icon(Icons.search),
                        prefixIconColor: Color(0xFF9d62d9),
                        hintStyle: TextStyle(
                          color: Color(0xFF9d62d9),
                          fontSize: 14,
                        )
                      ),

                    ),
                  ),

                  SizedBox(height: 40,),


                  // image
                  ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                    child: Container(
                      height: 300,
                      width: 250,
                      color: Color(0xFF232336),
                      child:
                      Image.asset("assets/images/img1.jpg"),
                    ),
                  ),
                  const SizedBox(height: 25,),

                  Center(
                    child: Text('Hello !!'
                        ' \n I am Kajal Kumari'.toUpperCase(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        height: 1.2,
                        // letterSpacing: 1,
                        color: Color(0xFFf2f2fa),
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),

                  const SizedBox(height: 12,),

                  Center(
                    child: Text('NITJ 24 | Microsoft Enagage 22 | \n'
                        'GWOC 2021 | Android Developer | \n '
                        'UI-UX Designer | Flutter ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        height: 1.4,
                        // letterSpacing: 1,
                        color: Color(0xFFd5d5e0),
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),

                  const SizedBox(height: 25,),

                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MaterialButton(
                          minWidth: 150,
                          height: 50,
                          onPressed: () {
                            // Navigator.push(context, MaterialPageRoute(builder: (context) => DashBoard.DashBoard()));

                          },
                          // defining the shape
                          color: Color(0xFF9d62d9),
                          shape: RoundedRectangleBorder(

                              borderRadius: BorderRadius.circular(50)
                          ),
                          child: const Text(
                            "Resume",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFf2f2fa),
                                fontSize: 18
                            ),
                          ),
                        ),

                        SizedBox(width: 30,),

                        MaterialButton(
                          minWidth: 150,
                          height: 50,
                          onPressed: () {
                            // Navigator.push(context, MaterialPageRoute(builder: (context) => DashBoard.DashBoard()));

                          },
                          // defining the shape
                          color: Color(0xFF9d62d9),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)
                          ),
                          child: const Text(
                            "Contact",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFf2f2fa),
                                fontSize: 18
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 25,),
                ],
              ),

            ),
          ),
        )
    );
  }
}

