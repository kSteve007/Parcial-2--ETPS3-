import 'package:flutter/material.dart';

class Plans extends StatelessWidget {
  const Plans({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        //Image.network("hhtps"), //imagen externa
        SizedBox(
          height: 25, //espaciado
        ),
        Text(
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          "Registro de Tarjeta",
        ),
        SizedBox(
          height: 10, //espaciado
        ),
        Image.asset(height: 200, "assets/credit.png"),
        SizedBox(
          height: 10, //espaciado
        ), //img interna
        _nombreinput(),
        SizedBox(
          height: 6, //espaciado
        ),

        _nombreinputNumber(),
        SizedBox(
          height: 6, //espaciado
        ),
        Row(
          children: [
            Container(
                width: MediaQuery.of(context).size.width * 0.5,
                child: _nombreinputDate()),
            Container(
                width: MediaQuery.of(context).size.width * 0.5,
                child: _nombreinputCode()),
          ],
        ),
        Container(
          margin: const EdgeInsets.all(15),
          width: MediaQuery.of(context).size.width - 30,
          child:
              ElevatedButton(onPressed: () {}, child: Text("Registrar Pago")),
        )
      ],
    ));
  }

  Container _nombreinput() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.white)),
        padding: EdgeInsets.symmetric(horizontal: 20),
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: TextFormField(
          style: TextStyle(color: Colors.white, fontSize: 15),
          decoration: InputDecoration(
              hintStyle: TextStyle(color: Colors.white),
              icon: Icon(Icons.book, color: Colors.white),
              hintText: 'Nombre del Titular',
              border: InputBorder.none),
        ));
  }

  Container _nombreinputNumber() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.white)),
        padding: EdgeInsets.symmetric(horizontal: 20),
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: TextFormField(
          keyboardType: TextInputType.number,
          style: TextStyle(color: Colors.white, fontSize: 15),
          decoration: InputDecoration(
              hintStyle: TextStyle(color: Colors.white),
              icon: Icon(Icons.numbers_outlined, color: Colors.white),
              hintText: '0000-0000-0000-0000',
              border: InputBorder.none),
          obscureText: false,
        ));
  }

  Container _nombreinputDate() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.white)),
        padding: EdgeInsets.symmetric(horizontal: 20),
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: TextFormField(
          style: TextStyle(color: Colors.white, fontSize: 15),
          decoration: InputDecoration(
              hintStyle: TextStyle(color: Colors.white),
              icon: Icon(Icons.date_range, color: Colors.white),
              hintText: '01/26',
              border: InputBorder.none),
          obscureText: false,
        ));
  }

  Container _nombreinputCode() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.white)),
        padding: EdgeInsets.symmetric(horizontal: 20),
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: TextFormField(
          keyboardType: TextInputType.number,
          style: TextStyle(color: Colors.white, fontSize: 15),
          decoration: InputDecoration(
              hintStyle: TextStyle(color: Colors.white),
              icon: Icon(
                Icons.password_sharp,
                color: Colors.white,
              ),
              hintText: '000',
              border: InputBorder.none),
          obscureText: true,
        ));
  }
}
