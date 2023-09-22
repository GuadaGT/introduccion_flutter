import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget
{
    MyHomePage({super.key});
    TextStyle estilo = new TextStyle(fontSize:25, color: Colors.green,fontWeight: FontWeight.w600);

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
            Text('Hola mundo', 
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
      bottomNavigationBar: BottomAppBar(
        child: Container(height: MediaQuery.of(context).size.height * 0.05),
      ),
    );
  }
}