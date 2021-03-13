import 'package:flutter/material.dart';
class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          _pagina1(),
          _pagina2(),
        ],
      ),
    );
  }

  Widget _pagina1() {
    return Stack(
      children: [
        _colorFondo(),
        _imagenfondo(),
        _crearTextos()
      ],
    );
  }

  Widget _pagina2() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
      child: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(30.0),
          ),),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0,vertical: 10.0),
            child: Text('Bienvenido',style: TextStyle(fontSize: 20),),
          ) ,
          onPressed: (){},

        ),
      ),
    );
  }

  Widget _colorFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
    );
  }

  Widget _imagenfondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(image: AssetImage('assets/scroll.png'),fit: BoxFit.cover,
      )
    );
  }

  Widget _crearTextos() {

    final estiloTexto=TextStyle(color: Colors.white,fontSize: 60.0);
    return SafeArea(
      child: Center(
        child: Column(
            children:[
              Text('11°',style: estiloTexto),
              Text('Miércoles',style: estiloTexto),
              // SizedBox(height: 300,),
              Expanded(child: SizedBox()),
              Icon(Icons.keyboard_arrow_down,size: 80,color: Colors.white,)
            ]
        ),
      ),
    );
  }
}
