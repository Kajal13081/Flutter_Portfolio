import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutMe extends StatefulWidget {
  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {

  int tag = 1;
  List<String> tags = [];
  List<String> options = [
    'Java',
    'Flutter',
    'Dart'
    'Android Development',
    'XML'
    'Git/GitHub',
    'Firebase',
    'UI-UX Design'
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
            leading: Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: BackButton(
                color: Color(0xFFf2f2fa),
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Text(
                'About Me'.toUpperCase(),
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
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 15, 15, 10),
                child: Center(
                  child: Container(
                    // height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      color: Color(0xFF232336),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 20, 0, 15),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50.0),
                                  child: Image.asset(
                                    "assets/images/img1.jpg",
                                    height: 100,
                                    width: 100,
                                  )),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Kajal Kumari".toUpperCase(),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFFf2f2fa),
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              "Student",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFFe4e4f0),
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                fontStyle: FontStyle.normal,
                              ),
                            ),

                            SizedBox(height: 20,),

                            const Align(
                              alignment: Alignment.center,
                              child: Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 15),
                                  child: Text("I am Kajal Kumari, currently doing a Bachelor of Technology at the Dr. B.R Ambedkar National Institute of Technology, Jalandhar and a proficient developer and programmer. "
                                      "In addition to my technical skills, I also have experience in Java, Dart, Flutter, Firebase, and "
                                      "Android Development. I am thrilled to share that I have been selected for various open-source and "
                                      "mentorship programs, which was an exciting opportunity for me to expand my skill set. "
                                      "I have been also a mentee in Microsoft Engage 2022 Program and I got the opportunity to "
                                      "build a project under the guidance of the experienced developers and engineers of "
                                      "Mircosoft. I believe in continuous learning and sharing knowledge with others, and I look "
                                      "forward to bringing these experiences to my upcoming endeavors",
                                    overflow: TextOverflow.clip,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFFf2f2fa),
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 0.1,
                                      height: 1.3,
                                      fontSize: 16,
                                      fontStyle: FontStyle.normal,
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(
                              height: 15,
                            ),

                            Text(
                              "Education Details".toUpperCase(),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFFf2f2fa),
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                fontStyle: FontStyle.normal,
                              ),
                            ),

                            SizedBox(
                              height: 15,
                            ),

                            Container(
                              // height: MediaQuery.of(context).size.height * 0.4,
                              width: MediaQuery.of(context).size.width * 0.8,

                              child: Card(
                                elevation: 15,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                color: Color(0xFF9d62d9),
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        "Dr. B.R Ambedkar National Institute of Technology Jalandhar".toUpperCase(),
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFFf2f2fa),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 12,
                                      ),
                                      Text(
                                        "B.Tech - Instrumentation and Control Engineering",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFFe4e4f0),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      ),

                                      SizedBox(
                                        height: 10,
                                      ),

                                      Center(
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "CGPA: 8.10",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Color(0xFFe4e4f0),
                                                fontWeight: FontWeight.w500,
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

                                            Text(
                                              "Dec 2020 - Jun 2024",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Color(0xFFe4e4f0),
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16,
                                                fontStyle: FontStyle.normal,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),

                                      SizedBox(height: 10,),

                                      Divider(
                                        color: Color(0xFFe4e4f0),
                                        height: 15,
                                        thickness: 1.5,
                                        indent: 30,
                                        endIndent: 30,
                                      ),

                                      SizedBox(height: 15,),

                                      Text(
                                        "12th from CBSE board".toUpperCase(),
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFFf2f2fa),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      ),

                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Result: 90 %",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFFe4e4f0),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      ),

                                      SizedBox(height: 10,),

                                      Divider(
                                        color: Color(0xFFe4e4f0),
                                        height: 15,
                                        thickness: 1.5,
                                        indent: 30,
                                        endIndent: 30,
                                      ),

                                      SizedBox(height: 15,),

                                      Text(
                                        "10th from CBSE board".toUpperCase(),
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFFf2f2fa),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      ),

                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Result: 10 CGPA",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFFe4e4f0),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(
                              height: 20,
                            ),

                            Text(
                              "Skills".toUpperCase(),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFFf2f2fa),
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                fontStyle: FontStyle.normal,
                              ),
                            ),

                            SizedBox(
                              height: 15,
                            ),

                            Container(
                              // height: MediaQuery.of(context).size.height * 0.4,
                              width: MediaQuery.of(context).size.width * 0.8,
                              child: Card(
                                elevation: 15,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                color: Color(0xFF9d62d9),
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(10, 20, 10, 30),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [

                                      Text(
                                        "Technical Languages and Frameworks".toUpperCase(),
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFFf2f2fa),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      ),

                                      SizedBox(
                                        height: 12,
                                      ),

                                      Transform(
                                        transform: new Matrix4.identity()..scale(1.1),
                                        child: Wrap(
                                          crossAxisAlignment: WrapCrossAlignment.center,
                                          spacing: 6,
                                          children: [
                                            ChoiceChip(
                                              label: Text('Java', overflow: TextOverflow.ellipsis,),
                                              selected: true,
                                              selectedColor: Color(0xff7878fa),
                                              labelStyle: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16
                                              ),
                                            ),
                                            ChoiceChip(
                                              label: Text('Flutter', overflow: TextOverflow.ellipsis,),
                                              selected: true,
                                              selectedColor: Color(0xff7878fa),
                                              labelStyle: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16
                                              ),
                                            ),
                                            ChoiceChip(
                                              label: Text('Android Development', overflow: TextOverflow.ellipsis,),
                                              selected: true,
                                              selectedColor: Color(0xff7878fa),
                                              labelStyle: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16
                                              ),
                                            ),
                                            ChoiceChip(
                                              label: Text('XML', overflow: TextOverflow.ellipsis,),
                                              selected: true,
                                              selectedColor: Color(0xff7878fa),
                                              labelStyle: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16
                                              ),
                                            ),
                                            ChoiceChip(
                                              label: Text('Dart', overflow: TextOverflow.ellipsis,),
                                              selected: true,
                                              selectedColor: Color(0xff7878fa),
                                              labelStyle: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16
                                              ),
                                            ),
                                            ChoiceChip(
                                              label: Text('Git/GitHub', overflow: TextOverflow.ellipsis,),
                                              selected: true,
                                              selectedColor: Color(0xff7878fa),
                                              labelStyle: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16
                                              ),
                                            ),
                                            ChoiceChip(
                                              label: Text('Firebase', overflow: TextOverflow.ellipsis,),
                                              selected: true,
                                              selectedColor: Color(0xff7878fa),
                                              labelStyle: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16
                                              ),
                                            ),
                                          ],
                                        ),

                                      ),

                                      SizedBox(height: 40,),

                                      Text(
                                        "Technical Knowledge".toUpperCase(),
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFFf2f2fa),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      ),

                                      SizedBox(
                                        height: 12,
                                      ),

                                      Transform(
                                        transform: new Matrix4.identity()..scale(1.1),
                                        child: Wrap(
                                          crossAxisAlignment: WrapCrossAlignment.center,
                                          spacing: 6,
                                          children: [
                                            ChoiceChip(
                                              label: Text('OOPS', overflow: TextOverflow.ellipsis,),
                                              selected: true,
                                              selectedColor: Color(0xff7878fa),
                                              labelStyle: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16
                                              ),
                                            ),
                                            ChoiceChip(
                                              label: Text('Data Structure', overflow: TextOverflow.ellipsis,),
                                              selected: true,
                                              selectedColor: Color(0xff7878fa),
                                              labelStyle: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16
                                              ),
                                            ),
                                            ChoiceChip(
                                              label: Text('Algorithm Design', overflow: TextOverflow.ellipsis,),
                                              selected: true,
                                              selectedColor: Color(0xff7878fa),
                                              labelStyle: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16
                                              ),
                                            ),
                                            ChoiceChip(
                                              label: Text('Software Engineering Concepts', overflow: TextOverflow.ellipsis,),
                                              selected: true,
                                              selectedColor: Color(0xff7878fa),
                                              labelStyle: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16
                                              ),
                                            ),


                                            ChoiceChip(
                                              label: Text('Problem Solving', overflow: TextOverflow.ellipsis,),
                                              selected: true,
                                              selectedColor: Color(0xff7878fa),
                                              labelStyle: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16
                                              ),
                                            ),
                                          ],
                                        ),

                                      ),

                                      SizedBox(height: 40,),

                                      Text(
                                        "Soft Skills".toUpperCase(),
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFFf2f2fa),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      ),

                                      SizedBox(
                                        height: 12,
                                      ),

                                      Transform(
                                        transform: new Matrix4.identity()..scale(1.1),
                                        child: Wrap(
                                          crossAxisAlignment: WrapCrossAlignment.center,
                                          spacing: 6,
                                          children: [
                                            ChoiceChip(
                                              label: Text('Communication Skills', overflow: TextOverflow.ellipsis,),
                                              selected: true,
                                              selectedColor: Color(0xff7878fa),
                                              labelStyle: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16
                                              ),
                                            ),
                                            ChoiceChip(
                                              label: Text('Writing', overflow: TextOverflow.ellipsis,),
                                              selected: true,
                                              selectedColor: Color(0xff7878fa),
                                              labelStyle: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16
                                              ),
                                            ),
                                            ChoiceChip(
                                              label: Text('Event Management', overflow: TextOverflow.ellipsis,),
                                              selected: true,
                                              selectedColor: Color(0xff7878fa),
                                              labelStyle: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16
                                              ),
                                            ),

                                            ChoiceChip(
                                              label: Text('Time Management', overflow: TextOverflow.ellipsis,),
                                              selected: true,
                                              selectedColor: Color(0xff7878fa),
                                              labelStyle: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16
                                              ),
                                            ),
                                            ChoiceChip(
                                              label: Text('Leadership', overflow: TextOverflow.ellipsis,),
                                              selected: true,
                                              selectedColor: Color(0xff7878fa),
                                              labelStyle: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16
                                              ),
                                            ),

                                          ],
                                        ),

                                      ),



                                    ],

                                  ),
                                ),

                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
