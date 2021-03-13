import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class BotonesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Stack(
        children: [
          _fondoApp(),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _titulos(),
                _botonesRedondeados()
              ],
            ),
          )
        ],
      )
      ),
      bottomNavigationBar: _bottomNavBar(context)
      // BottomNavigationBar(
      //   showSelectedLabels: false,
      //   showUnselectedLabels: false,
      //   selectedFontSize: 0,
      //   items: <BottomNavigationBarItem> [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.today),
      //       label: '',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.bar_chart_outlined),
      //       label: '',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.supervised_user_circle),
      //       label: '',
      //     ),
      //   ],
      // ),
    );
  }

  Widget _bottomNavBar(BuildContext context){
    return new Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
        primaryColor: Colors.pinkAccent,
          //ACTUALIZACION SE USA EL unselectedItemColor para darle color a los iconos sin selecionar
          // textTheme: Theme.of(context).textTheme.copyWith(
          //   caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0))
          // )
      ),
      child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedFontSize: 0,
        unselectedItemColor: Color.fromRGBO(116, 117, 152, 1.0),
        items: [
                BottomNavigationBarItem(
                icon: Icon(Icons.today,size: 30,),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bar_chart_outlined,size: 30,),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.supervised_user_circle,size: 30,),
                label: '',
              ),
        ],
      ),
    );
  }

  Widget _fondoApp() {
    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: FractionalOffset(0.0, 0.5),
            end: FractionalOffset(0.0, 1.0),
            colors: [
              Color.fromRGBO(52, 54, 101, 1.0),
              Color.fromRGBO(35, 37, 57, 1.0)
            ]),
      ),
    );

    final cajaRosa = Transform.rotate(
      angle: -pi / 4,
      child: Container(
        height: 360.0,
        width: 360.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(55),
          gradient: LinearGradient(colors: [
            Color.fromRGBO(236, 98, 188, 1.0),
            Color.fromRGBO(241, 142, 172, 1.0)
          ]),
        ),
      ),
    );

    return Stack(
      children: [
        gradiente,
        Positioned(
          top: -100,
          child: cajaRosa,
        )
      ],
    );
  }

  Widget _titulos() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Clasificar Transaccion',style: TextStyle(fontSize: 30,color: Colors.white, fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Text('Clasificar esta transaccion en una categoria particular',style: TextStyle(fontSize: 18,color: Colors.white),),
            ],
          ),
        ),
      ),
    );
  }

  Widget _botonesRedondeados() {
    return Table(
      children: [
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.blue,Icons.border_all,'General'),
            _crearBotonRedondeado(Colors.purpleAccent,Icons.directions_bus,'Transport'),
          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.pinkAccent,Icons.shopping_bag_sharp,'Shopping'),
            _crearBotonRedondeado(Colors.orangeAccent,Icons.format_list_bulleted,'Bills'),
          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.blueAccent,Icons.movie_creation_rounded,'Entertaiment'),
            _crearBotonRedondeado(Colors.greenAccent,Icons.local_grocery_store,'Grocery'),
          ]
        ),
      ],
    );
  }

  Widget _crearBotonRedondeado(Color color,IconData icono,String texto) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ClipRRect(
        // clipBehavior: Clip.antiAliasWithSaveLayer,
        borderRadius: BorderRadius.circular(20.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0,sigmaY: 10.0),
          child: Container(
            height: 140,
            // margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Color.fromRGBO(62, 66, 107, 0.7),
                  borderRadius: BorderRadius.circular(20)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                SizedBox(height: 5,),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: color,
                    child: Icon(icono,color: Colors.white,size: 30,),
                  ),
                Text(texto,style: TextStyle(color: color),),
                SizedBox(height: 5,)

              ],
            ),
          ),
        ),
      ),
    );
  }
}
