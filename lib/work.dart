import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class WorkExperience extends StatelessWidget {
  var companyName = [
    "Placewit",
    "Microsoft India",
    "Winter of Code 2021",
    "GWOC 2021"
  ];

  var jobName = [
    "Technical Content Writer Intern",
    "Mentee at Microsoft Engage 2022",
    "Open Source Mentee",
    "Open Source Contributor in Android"
  ];

  var location = [
    "Remote (India)",
    "Remote (India)",
    "Remote (India)",
    "Remote (India)"
  ];

  var time = [
    "July 2022 - Aug 2022",
    "May 2022 - June 2022",
    "Dec 2021 - Jan 2022",
    "Sep 2021 - Nov 2021"
  ];

  var description = [
    "As a technical content writer intern, my work consists of curating content, writing and editing blog articles, quizzes, posts, etc., related to data structures and algorithms and various tech stacks.",
    "Through this initiative, students get to be mentored by Microsoft and be a part of AMA Sessions, Webinars, and Leader talks delivered by Microsoft employees. Submitted assignments, worked on a project using knowledge of Android development and data structures and algorithms under the mentor’s guidance.",
    "Worked in a team of 2 contributors under a mentor and applied problem-solving skills, brainstormed logic, and ideas to solve real-life based problems using DSA, and wrote neat, time and space optimized codes.",
    "Worked under mentors and contributed via videos, and documentation, built Android applications on various Android development topics, learned Android concepts, wrote documentation, clean and optimized codes."

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
              child: Text(
                'Work Experience'.toUpperCase(),
                style: TextStyle(
                  color: Color(0xFFf2f2fa),
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
          ),
        ),

        body: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: false,
            itemCount: companyName.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  showDialogFunction(context, companyName[index],
                      jobName[index], location[index], time[index],
                      description[index]);
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        boxShadow: [
                          // BoxShadow(
                          //   color: Color(0xFF9d62d9).withOpacity(0.5),
                          //   blurRadius: 15.0,
                          // )
                        ]
                    ),
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      color: Color(0xFF232336),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(25, 15, 0, 0),
                            child: Text(jobName[index],
                              style: TextStyle(
                                color: Color(0xFFf2f2fa),
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                          ),

                          SizedBox(height: 10,),

                          Padding(
                            padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                            child: Row(
                              children: [

                                Icon(Icons.location_city,
                                  color: Color(0xFFe4e4f0),
                                  size: 24,),

                                SizedBox(width: 15,),

                                Text(companyName[index],
                                  style: TextStyle(
                                    color: Color(0xFFe4e4f0),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          SizedBox(height: 10,),

                          Padding(
                            padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                            child: Row(
                              children: [

                                Icon(Icons.location_on,
                                  color: Color(0xFFe4e4f0),
                                  size: 24,),

                                SizedBox(width: 15,),

                                Text(location[index],
                                  style: TextStyle(
                                    color: Color(0xFFe4e4f0),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          SizedBox(height: 10,),

                          Padding(
                            padding: const EdgeInsets.fromLTRB(25, 0, 0, 15),
                            child: Row(
                              children: [

                                Icon(Icons.calendar_month,
                                  color: Color(0xFFe4e4f0),
                                  size: 24,),

                                SizedBox(width: 15,),

                                Text(time[index],
                                  style: TextStyle(
                                    color: Color(0xFFe4e4f0),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],

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

  showDialogFunction(context, companyName, jobName, location, time, description) {

    return showDialog(
        context: context,
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
                    width: MediaQuery.of(context).size.width * 0.85,
                    padding: EdgeInsets.all(15),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Text(jobName,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFFf2f2fa),
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                          ),

                          SizedBox(height: 10,),

                          Text(companyName,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFFe4e4f0),
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              fontStyle: FontStyle.normal,
                            ),
                          ),

                          SizedBox(height: 10,),

                          Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(location,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFFe4e4f0),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),

                                SizedBox(width: 4,),

                                Container(
                                  height: 20,
                                  child: VerticalDivider(

                                    color: Color(0xFFe4e4f0),
                                    thickness: 2,

                                  ),
                                ),

                                SizedBox(width: 4,),

                                Text(time,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFFe4e4f0),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
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




                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

          );

            }
          );
  }
}
