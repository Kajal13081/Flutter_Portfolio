import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:portfolio_app/app/data/models/repos.dart';
import 'package:portfolio_app/app/routes/app_routes.dart';
import 'package:portfolio_app/main.dart';
import 'package:portfolio_app/notifier/user_provider.dart';
import 'package:provider/provider.dart';

class FavouriteRepos extends StatelessWidget{
  Color _iconColor = Color(0xFFf2f2fa);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final List<Repos> reposInfo = context.watch<UserProvider>().repos;
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
                    'Favourite Repositories'.toUpperCase(),
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

          body: ValueListenableBuilder(
            valueListenable: Hive.box(FAVOURITES_BOX).listenable(),
            builder: (context, box, child){
              List reposInfo = List.from(box.values);
              return Expanded(
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
                                          // setState(() {
                                          //   _iconColor = Color(0xFFf2f2fa);
                                          // }


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
              );
            },
          ),

    ));
  }
  
}