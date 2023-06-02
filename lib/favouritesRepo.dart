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
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFf2f2fa),
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
            ),

          body: ValueListenableBuilder(
            valueListenable: Hive.box(favourites_box).listenable(),
            builder: (context, box, child) {
              List<dynamic> reposInfo = List.from(box.values);
              return SizedBox(
                  height: 500,
                  child: reposInfo.isNotEmpty && reposInfo[0].isNotEmpty
                      ? GridView.count(
                    crossAxisCount: 2,
                    children: reposInfo[0].map<Widget>((entry) {
                      final item = entry;
                      return GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            AppRoutes.web_view,
                            arguments: item['html_url'],
                          );
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                            borderRadius:
                            BorderRadius.all(Radius.circular(12.0)),
                          ),
                          child: Card(
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            color: const Color(0xFF232336),
                            margin: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 20),
                            child: Padding(
                              padding:
                              const EdgeInsets.fromLTRB(10, 15, 10, 0),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.center,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.center,
                                  children: [
                                    Center(
                                      child: Text(
                                        item['name'],
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                          color: Color(0xFFf2f2fa),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18,
                                          height: 1.3,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        width: 54,
                                        height: 54,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                          const BorderRadius.all(
                                            Radius.circular(12.0),
                                          ),
                                          border: Border.all(
                                            color: const Color(0xFF16171a),
                                            width: 3,
                                          ),
                                        ),
                                        child: IconButton(
                                          onPressed: () {
                                            remove(item);
                                          },
                                          icon: Icon(
                                            Icons.favorite_border_rounded,
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
                  )
                      : const Center(
                         child: Text(
                              "No Favourite Repositories",
                      style: TextStyle(color: Color(0xFFf2f2fa),
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                    ),
                  ));
            },
          ),

    ));
  }
  Future<void> remove(item) async {
    final box = await Hive.openBox(favourites_box);
    final List existingList = box.get('myList', defaultValue: []);

    // Add more strings to the existing list
    existingList.remove(item);

    // Save the updated list back to Hive
    box.put('myList', existingList);
  }
  
}