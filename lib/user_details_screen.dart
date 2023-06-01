import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:portfolio_app/app/data/models/repos.dart';
import 'package:portfolio_app/app/data/models/user_profile.dart';
import 'package:portfolio_app/app/routes/app_routes.dart';
import 'package:portfolio_app/main.dart';
import 'package:portfolio_app/notifier/user_provider.dart';
import 'package:provider/provider.dart';

class UserDetailScreen extends StatefulWidget {
  @override
  State<UserDetailScreen> createState() => _UserDetailScreenState();
}

class _UserDetailScreenState extends State<UserDetailScreen> {
  Color _iconColor = Color(0xFFf2f2fa);
  @override
  Widget build(BuildContext context) {

    final userInfo = context.watch<UserProvider>().user;
    final List<Repos> reposInfo = context.watch<UserProvider>().repos;
    // TODO: implement build
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
          leading: Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: BackButton(
              color: Color(0xFFf2f2fa),
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Text(
              'GitHub Profile'.toUpperCase(),
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

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
            child: Center(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(50.0),
                    child: Image.network(
                      userInfo.avatar_url,
                      height: 80,
                      width: 80,
                    ),
                  ),
            ),
          ),
          SizedBox(
            height: 15,
          ),

          ListTile(
            title: Padding(
              padding: const EdgeInsets.fromLTRB(0,0,0,8),
              child: Text(userInfo.name ?? "",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFf2f2fa),
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
            subtitle: Text(userInfo.bio ?? "",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFFf2f2fa),
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
              ),
            ),
          ),

          SizedBox(
            height: 15,
          ),


          Padding(
            padding: const EdgeInsets.fromLTRB(25, 10, 25,0),
            child: Container(
              height: 100,
              width: MediaQuery.of(context).size.width,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xFF232336),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Text("Repositories",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFFf2f2fa),
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          fontStyle: FontStyle.normal,
                        ),
                      ),

                      SizedBox(height: 5,),

                      Text('${userInfo.repositories}',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFFe4e4f0),
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          fontStyle: FontStyle.normal,
                        ),
                      )
                    ],
                  ),

                  SizedBox(width: 8,),

                  Container(
                    height: 50,
                    child: VerticalDivider(

                      color: Color(0xFFe4e4f0),
                      thickness: 1,

                    ),
                  ),

                  SizedBox(width: 8,),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Text("Following",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFFf2f2fa),
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          fontStyle: FontStyle.normal,
                        ),
                      ),

                      SizedBox(height: 5,),

                      Text('${userInfo.following}',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFFe4e4f0),
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          fontStyle: FontStyle.normal,
                        ),
                      )
                    ],
                  ),

                  SizedBox(width: 8,),

                  Container(
                    height: 50,
                    child: VerticalDivider(

                      color: Color(0xFFe4e4f0),
                      thickness: 1,

                    ),
                  ),

                  SizedBox(width: 8,),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Text("Followers",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFFf2f2fa),
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          fontStyle: FontStyle.normal,
                        ),
                      ),

                      SizedBox(height: 5,),

                      Text('${userInfo.followers}',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFFe4e4f0),
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          fontStyle: FontStyle.normal,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: 25,),

          Text('Repositories',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFFf2f2fa),
              fontSize: 24.0,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.normal,
            ),
          ),

          SizedBox(height: 15,),

          Expanded(
            child: GridView.count(
                crossAxisCount: 2,
              // mainAxisSpacing: 20,
              // crossAxisSpacing: 20,
              children: reposInfo.map((item) {
                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(
                        context,
                        AppRoutes.web_view,
                        arguments: item.html_url
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      color: Color(0xFF232336),
                      margin: EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Center(
                                child: Text(item.name,
                                textAlign: TextAlign.center,
                                // overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Color(0xFFf2f2fa),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  height: 1.3,
                                  fontStyle: FontStyle.normal,
                                ),
                                ),
                              ),
                              SizedBox(height: 20,),
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  width: 54,
                                  height: 54,
                                  // alignment: Alignment.bottomRight,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                    border: Border.all(color: Color(0xFF16171a),width: 3,)
                                  ),
                                    child: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            _iconColor = Color(0xFFf2f2fa);
                                          });

                                          Hive.box(FAVOURITES_BOX).putAll(reposInfo as Map);

                                        },
                                        icon: Icon(Icons.favorite_border_rounded,
                                          color: _iconColor,
                                          size: 28,
                                        ),
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
              }).toList(),
            ),
          )



        ],
      ),


    ));
  }
}
