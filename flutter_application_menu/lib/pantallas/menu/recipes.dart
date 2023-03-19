import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_menu/json/recipes_json.dart';
import 'package:flutter_application_menu/temas/colores.dart';
import 'package:line_icons/line_icons.dart';

class Recipes extends StatefulWidget {
  const Recipes({super.key});

  @override
  State<Recipes> createState() => _RecipesState();
}

class _RecipesState extends State<Recipes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: getAppBar(),
      body: getBody(),
    );
  }

  PreferredSizeWidget getAppBar() {
    return AppBar(
      backgroundColor: bgColor,
      centerTitle: true,
      title: Container(
          width: 155,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: white.withOpacity(0.05)),
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          )),
    );
  }

  Widget getBody() {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 25,
              ),
              Text(
                "Recipes",
                style: TextStyle(
                    fontSize: 23, color: white, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 38,
                decoration: BoxDecoration(
                  color: textfieldColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  style: TextStyle(color: white),
                  cursorColor: primary,
                  decoration: InputDecoration(
                      prefixIcon:
                          Icon(LineIcons.search, color: white.withOpacity(0.3)),
                      border: InputBorder.none,
                      hintText: "Busqueda",
                      hintStyle: TextStyle(
                          color: white.withOpacity(0.3), fontSize: 17)),
                ),
              ),
              Row(
                children: [
                  Column(
                    children: [getRecipes()],
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }

  Widget getRecipes() {
    var tamanio = MediaQuery.of(context).size;
    return Column(
      children: List.generate(recipes_data.length, (index) {
        return Padding(
          padding: const EdgeInsets.only(left: 5, right: 5, top: 15),
          child: FadeInDown(
            duration: Duration(milliseconds: 100 * index),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      // width: (tamanio.width - 30) * 0.4,
                      child: Row(children: [
                        Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              image: DecorationImage(
                                  image:
                                      NetworkImage(recipes_data[index]['img']),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          // width: (tamanio.width - 100) * 0.4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                recipes_data[index]['name'],
                                style: TextStyle(
                                    fontSize: 20,
                                    color: white,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    recipes_data[index]['descripcion'],
                                    style: TextStyle(
                                        fontSize: 11,
                                        color: white.withOpacity(0.5),
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ]),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Divider(
                    color: white.withOpacity(0.3),
                  ),
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}
