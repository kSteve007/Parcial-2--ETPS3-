import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_menu/json/groceries_json.dart';
import 'package:flutter_application_menu/temas/colores.dart';
import 'package:line_icons/line_icons.dart';

class Groceries extends StatefulWidget {
  const Groceries({super.key});

  @override
  State<Groceries> createState() => _GroceriesState();
}

class _GroceriesState extends State<Groceries> {
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
                "Groceries",
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
                    children: [
                      Container(
                        width: 100,
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Ctg 1: Frutas y Verduras",
                          style: TextStyle(fontSize: 25, color: white),
                        ),
                      ),
                      getGroceries1(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Ctg 2: Carnes Variadas",
                          style: TextStyle(fontSize: 25, color: white),
                        ),
                      ),
                      getGroceries2()
                    ],
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }

  Widget getGroceries1() {
    var tamanio = MediaQuery.of(context).size;
    return Column(
      children: List.generate(groceries_category1_data.length, (index) {
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
                                  image: NetworkImage(
                                      groceries_category1_data[index]['img']),
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
                                groceries_category1_data[index]['name'],
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
                                    groceries_category1_data[index]
                                        ['descripcion'],
                                    style: TextStyle(
                                        fontSize: 16,
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
                  padding: const EdgeInsets.only(left: 55),
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

  Widget getGroceries2() {
    var tamanio = MediaQuery.of(context).size;
    return Column(
      children: List.generate(groceries_category2_data.length, (index) {
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
                                  image: NetworkImage(
                                      groceries_category2_data[index]['img']),
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
                                groceries_category2_data[index]['name'],
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
                                    groceries_category2_data[index]
                                        ['descripcion'],
                                    style: TextStyle(
                                        fontSize: 16,
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
                  padding: const EdgeInsets.only(left: 55),
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
