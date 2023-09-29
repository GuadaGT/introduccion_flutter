import 'package:flutter/material.dart'; 

class contadorPage extends StatefulWidget {
  const contadorPage({super.key});

  @override
  State<contadorPage> createState() => _contadorPageState();
}

class _contadorPageState extends State<contadorPage> 
{
  TextStyle estilo = new TextStyle(fontSize:25, color: Colors.green,fontWeight: FontWeight.w600);
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Appbar'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(contador.toString(), 
            style: estilo,
            ), 
            Image.network(
              'https://t4.ftcdn.net/jpg/00/84/13/15/240_F_84131506_fV8Szg1O5j9wB2ORZR6hxSv5PNCPIw0o.jpg',
              height: 300,
              fit: BoxFit.cover,
              ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _crearBotones(),
      bottomNavigationBar: BottomAppBar(
        child: Container(height: MediaQuery.of(context).size.height * 0.05),
      ),
    );
  }

  _crearBotones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(onPressed: _sumar, child: Icon(Icons.add),),
        FloatingActionButton(onPressed: _restar, child: Icon(Icons.remove),),
        FloatingActionButton(onPressed: _resetear, child: Icon(Icons.exposure_zero),)
      ],
    );
  }

  void _sumar(){
    setState(() {
      contador++;
    });
  }

    void _restar(){
    setState(() {
      if(contador == 0){
      contador = 0;
      }
      else {
        contador--;
      }
    });
  }

    void _resetear(){
    setState(() {
      contador = 0;
    });
  }
}