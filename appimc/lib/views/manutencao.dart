import 'package:appimc/main.dart';
import 'package:flutter/material.dart';

class Manu extends StatefulWidget {
  const Manu({super.key});

  @override
  State<Manu> createState() => _ManuState();
}

class _ManuState extends State<Manu> {
  void _abrirIMC() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => CalcImc()));
  }

  void _abrirManu() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Manu()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.black,
        surfaceTintColor: Colors.amber,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
              ),
              child: Text(
                "Calculadora IMC",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.monitor_weight,
                color: Colors.amber,
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(1.0, 1.0),
                    blurRadius: 3.0,
                    color: Colors.black,
                  )
                ],
              ),
              title: Text(
                "IMC",
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 20,
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(1.0, 1.0),
                      blurRadius: 3.0,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
              onTap: () {
                _abrirIMC();
              },
            ),
            ListTile(
              leading: Icon(
                Icons.fitness_center,
                color: Colors.amber,
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(1.0, 1.0),
                    blurRadius: 3.0,
                    color: Colors.black,
                  )
                ],
              ),
              title: Text(
                "Treino",
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 20,
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(1.0, 1.0),
                      blurRadius: 3.0,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
              onTap: () {
                _abrirManu();
              },
            ),
            ListTile(
                leading: Icon(
                  Icons.accessibility,
                  color: Colors.amber,
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(1.0, 1.0),
                      blurRadius: 3.0,
                      color: Colors.black,
                    )
                  ],
                ),
                title: Text(
                  "Resultados",
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 20,
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(1.0, 1.0),
                        blurRadius: 3.0,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
                onTap: () {
                  _abrirManu();
                },
              ),
          ],
        ),
      ),
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        actions: [
          IconButton(
            onPressed: () {
              _abrirIMC();
            },
            icon: Icon(
              Icons.home,
              color: Colors.white,
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(1.0, 1.0),
                  blurRadius: 3.0,
                  color: Colors.black,
                )
              ],
            ),
          )
        ],
        centerTitle: true,
        title: Text(
          "EM DESENVOLVIMENTO",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            shadows: <Shadow>[
              Shadow(
                offset: Offset(1.0, 1.0),
                blurRadius: 3.0,
                color: Colors.black,
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 1,
            ),
            Icon(
              Icons.warning,
              color: Colors.amber,
              size: 150,
            ),
            SizedBox(height: 30),
            Text(
              "No momento está tela ainda não esta funcionando...",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25, color: Colors.amber),
            ),
            SizedBox(height: 30),
            Text(
              "Consulte novamente está tela nas proximas atualizações :(",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25, color: Colors.amber),
            ),
          ],
        ),
      ),
    );
  }
}
