import 'package:flutter/material.dart';
import 'package:flutter_app/screens/UniversityScreen.dart';
import 'package:flutter_app/screens/sintomas1.dart';

void main() {
  runApp(HorariosDisponiveisScreen());
}

class HorariosDisponiveisScreen extends StatefulWidget {
  @override
  _HorariosDisponiveisScreenState createState() =>
      _HorariosDisponiveisScreenState();
}

class _HorariosDisponiveisScreenState extends State<HorariosDisponiveisScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 1, 162, 127),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => UniversityScreen()),
              );
            },
          ),
          title: Text(
            "Horários Disponíveis",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                Text(
                  "Horários disponíveis",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                // Coluna de botões, cada linha tem 3 botões
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Implemente a ação para o primeiro horário
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Color.fromARGB(255, 1, 162, 127)),
                            minimumSize:
                                MaterialStateProperty.all(Size(100, 36)),
                          ),
                          child: Text(
                            "09:00",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Implemente a ação para o segundo horário
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Color.fromARGB(255, 1, 162, 127)),
                            minimumSize:
                                MaterialStateProperty.all(Size(100, 36)),
                          ),
                          child: Text(
                            "09:50",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Implemente a ação para o terceiro horário
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Color.fromARGB(255, 1, 162, 127)),
                            minimumSize:
                                MaterialStateProperty.all(Size(100, 36)),
                          ),
                          child: Text(
                            "10:40",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10), // Espaçamento vertical
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Implemente a ação para o quarto horário
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Color.fromARGB(255, 1, 162, 127)),
                            minimumSize:
                                MaterialStateProperty.all(Size(100, 36)),
                          ),
                          child: Text(
                            "11:30",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Implemente a ação para o quinto horário
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Color.fromARGB(255, 1, 162, 127)),
                            minimumSize:
                                MaterialStateProperty.all(Size(100, 36)),
                          ),
                          child: Text(
                            "13:30",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Sintomas1()),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 1, 162, 127)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    child: Text(
                      "Confirmar Agendamento",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
