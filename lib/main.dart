import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text("Álcool ou Gasolina?", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.lightBlue[900],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Icon(
              Icons.local_gas_station,
              size: 150.0,
              color: Colors.lightBlue[900],
            ),
            TextFormField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Valor do Álcool",
                  labelStyle: TextStyle(color: Colors.lightBlue[900])),
              style: TextStyle(color: Colors.lightBlue[900], fontSize: 26.0),
            ),
            TextFormField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Valor do Gasolina",
                  labelStyle: TextStyle(color: Colors.lightBlue[900])),
              style: TextStyle(color: Colors.lightBlue[900], fontSize: 26.0),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
              child: Container(
                height: 50.0,
                child: ElevatedButton(
                  child: Text('Verificar'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.lightBlue[900],
                    onPrimary: Colors.white,
                    textStyle: TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            Text(
              "Resultado",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.lightBlue[900], fontSize: 26.0),
            )
          ],
        ),
      ),
    );
  }
}
