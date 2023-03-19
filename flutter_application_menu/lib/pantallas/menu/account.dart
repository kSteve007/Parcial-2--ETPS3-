import 'package:flutter/material.dart';
import 'package:flutter_application_menu/json/account_json.dart';
import 'package:flutter_application_menu/temas/colores.dart';
import 'package:animate_do/animate_do.dart';
import 'package:line_icons/line_icons.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var tamanio = MediaQuery.of(context).size;
    return Column(
      children: List.generate(account_data.length, (index) {
        return Padding(
          padding: const EdgeInsets.only(left: 5, right: 5, top: 15),
          child: FadeInDown(
            duration: Duration(milliseconds: 100 * index),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      child: Row(children: [
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                account_data[index]['carnet'],
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
                                    account_data[index]['estudiante'],
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
