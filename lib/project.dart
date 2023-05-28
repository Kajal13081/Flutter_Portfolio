import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Project extends StatefulWidget{
  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {

  var projectLogo = [
    "assets/images/img1.jpg",
    "assets/images/img1.jpg",
    "assets/images/img1.jpg",
    "assets/images/img1.jpg"
  ];

  var projectName = [
    "DevFolio",
    "Brink",
    "Musgenix",
    "Snap"
  ];

  var techStack = [
    "Flutter | Firebase",
    "Flutter | Firebase",
    "Java | XML ",
    "Kotlin | XML | MVVM"
  ];

  var githubLink = [
    "Remote (India)",
    "Remote (India)",
    "Remote (India)",
    "Remote (India)"
  ];

  var description = [
    "Made this responsive app using the best practices from the Android Community to show my skills and passions for design and development.",
    "Made an app that has an impressive logo, animations and material-designed user interface. It contains features such as sorting, sharing, and searching music, setting music as ringtone, playing music in the background, etc. This project was selected in JGEC Winter Of Code 2022.",
    "Made an app that has an impressive logo, animations and material-designed user interface. It contains features such as sorting, sharing, and searching music, setting music as ringtone, playing music in the background, etc. This project was selected in JGEC Winter Of Code 2022.",
    "Made an app that has an impressive logo, animations, and material-designed user interface. It contains features such as sharing and sorting images, saving images in the cloud, album, and folder view, etc. Did this project in a team with one more member. Worked on frontend of the project. This project was selected in JGEC Winter Of Code 2022.",

  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF16171a),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: AppBar(
            elevation: 0,
            centerTitle: true,
            backgroundColor: Colors.transparent,
            title: Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Text('Projects'.toUpperCase(),
                style: TextStyle(
                  color: Color(0xFFf2f2fa),
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  fontStyle: FontStyle.normal,
                ),),
            ),
          ),
        ),

        body: GridView.builder(
            scrollDirection: Axis.vertical,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 100 / 110,
              // mainAxisSpacing: 10,
              // crossAxisSpacing: 10,
            ),
            itemCount: 4,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  showDialogFun(context, projectLogo[index],
                      projectName[index], techStack[index], githubLink[index],
                      description[index]);
                },
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                    child: Card(
                      margin: EdgeInsets.symmetric(
                          vertical: 15, horizontal: 15),
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      color: Color(0xFF232336),
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50.0),
                                  child: Image.asset(projectLogo[index],
                                    height: 60,
                                    width: 60,)
                              ),
                            ),

                            SizedBox(height: 15,),

                            Text(projectName[index].toUpperCase(),
                              style: TextStyle(
                                color: Color(0xFFf2f2fa),
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                fontStyle: FontStyle.normal,
                              ),
                            ),

                            SizedBox(height: 8,),

                            Center(
                              child: Text(techStack[index],
                                style: TextStyle(
                                  color: Color(0xFFe4e4f0),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                            ),

                            SizedBox(height: 10,),

                            MaterialButton(
                              minWidth: 120,
                              height: 30,
                              onPressed: () {
                                // Navigator.push(context, MaterialPageRoute(builder: (context) => DashBoard.DashBoard()));

                              },
                              // defining the shape
                              color: Color(0xFF9d62d9),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)
                              ),
                              child: const Text(
                                "GitHub",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFFf2f2fa),
                                    fontSize: 12
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

              );
            }
            ),
      ),
    );
  }

  showDialogFun(context, projectLogo, projectName, techStack, githubLink, description) {
    return showDialog(context: context,
      builder: (context) {
        return Center(
          child: Material(
            type: MaterialType.transparency,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xff232336),
                  ),
                  width: MediaQuery.of(context).size.width * 0.8,
                  padding: EdgeInsets.all(15),
                  child: Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Align(
                      alignment: Alignment.center,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(50.0),
                                    child: Image.asset(projectLogo,
                                      height: 80,
                                      width: 80,)
                                ),
                                SizedBox(width: 25,),

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(projectName.toUpperCase(),
                                      style: TextStyle(
                                        color: Color(0xFFe4e4f0),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 22,
                                        fontStyle: FontStyle.normal,
                                      ),
                                    ),

                                    SizedBox(height: 8,),

                                    Center(
                                      child: Text(techStack,
                                        style: TextStyle(
                                          color: Color(0xFFe4e4f0),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),

                          SizedBox(height: 20,),

                          Align(
                              alignment: Alignment.center,
                              child: Expanded(
                                child: Text(description,
                                  overflow: TextOverflow.clip,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFFf2f2fa),
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.1,
                                    height: 1.3,
                                    fontSize: 18,
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                              ),
                            ),

                          SizedBox(height: 25,),

                          Center(
                            child: MaterialButton(
                              minWidth: 210,
                              height: 50,
                              onPressed: () {
                                // Navigator.push(context, MaterialPageRoute(builder: (context) => DashBoard.DashBoard()));

                              },
                              // defining the shape
                              color: Color(0xFF9d62d9),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)
                              ),
                              child: Text(
                                "GitHub Link".toUpperCase(),
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFFf2f2fa),
                                    fontSize: 17
                                ),
                              ),
                            ),
                          ),


                        ],
                      ),
                    ),
                  ),

                ),
              ],
            ),
          ),


        );
      },
    );
  }
}
