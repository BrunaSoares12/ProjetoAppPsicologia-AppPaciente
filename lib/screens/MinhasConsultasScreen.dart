import 'package:flutter/material.dart';
import 'package:flutter_app/screens/initial_screen.dart';
import 'package:flutter_app/screens/UniversityScreen.dart';
import 'package:flutter_app/screens/perfil_paciente.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MinhasConsultasScreen(),
    );
  }
}

class MinhasConsultasScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openDrawer() {
    _scaffoldKey.currentState!.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    final backgroundColor = const Color.fromARGB(255, 18, 32, 47);
    final textColor = const Color(0xFF5E5E5E);

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 1, 162, 127),
        flexibleSpace: Center(
          child: Text("Minhas Consultas",
              style: TextStyle(fontSize: 24, color: Colors.white)),
        ),
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.white),
          onPressed: _openDrawer,
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text("Perfil Paciente"),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PerfilPaciente()));
              },
            ),
            // Outros itens de menu, se necessário...
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                "Consulta - Psicoterapia Individual",
                style: TextStyle(fontSize: 20, color: textColor),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Icon(Icons.date_range, color: Color.fromARGB(255, 1, 162, 127)),
                Text("Data: 25/11/2023", style: TextStyle(color: textColor)),
                SizedBox(width: 20),
                Icon(Icons.access_time,
                    color: Color.fromARGB(255, 1, 162, 127)),
                Text("Horário: 10:00 AM", style: TextStyle(color: textColor)),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Icon(Icons.attach_money,
                    color: Color.fromARGB(255, 1, 162, 127)),
                Text("Valor: R\$ 10,00 (pagar no local)",
                    style: TextStyle(color: textColor)),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Icon(Icons.location_on,
                    color: Color.fromARGB(255, 1, 162, 127)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Local: Centro Integrado de Saúde (CIS)",
                        style: TextStyle(color: textColor)),
                    Text("Univ. Anhembi Morumbi",
                        style: TextStyle(color: textColor)),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Icon(Icons.map, color: Color.fromARGB(255, 1, 162, 127)),
                Text("Endereço: Rua Doutor Almeida Lima, 1034 - Mooca",
                    style: TextStyle(color: textColor)),
              ],
            ),
            SizedBox(height: 50),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Colocar a ação de reagendar
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                    minimumSize: MaterialStateProperty.all(Size(150, 48)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                  ),
                  child: Text("Reagendar"),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Colocar ação de cancelar
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                    minimumSize: MaterialStateProperty.all(Size(150, 48)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                  ),
                  child: Text("Cancelar"),
                ),
              ],
            ),
            SizedBox(height: 70),
            SizedBox(height: 70),
            Divider(height: 2, color: Colors.grey),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => InitialScreen()));
                  },
                  child:
                      Icon(Icons.home, color: Color.fromARGB(255, 1, 162, 127)),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => UniversityScreen()));
                  },
                  child: Icon(Icons.search,
                      color: Color.fromARGB(255, 1, 162, 127)),
                ),
                TextButton(
                  onPressed: () {
                    // Ação quando o ícone de data é pressionado
                    // Coloque sua ação aqui
                  },
                  child: Icon(Icons.date_range,
                      color: Color.fromARGB(255, 1, 162, 127)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
